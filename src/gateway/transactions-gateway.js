import pool from "../database/database.js";

// Fungsi untuk menyimpan transaksi baru
async function storeTransaction(transactionData) {
  let connection;
  try {
    connection = await pool.getConnection();
    await connection.beginTransaction();

    const invoiceResult = await connection.query(
      "INSERT INTO invoices (customer_id, courier, shipping_price) VALUES (?, ?, ?)",
      [
        transactionData.customer_id,
        transactionData.courier,
        Math.round(transactionData.shipping_price),
      ]
    );

    // console.log(invoiceResult);
    const invoiceId = invoiceResult[0].insertId;

    let itemsPriceTotal = 0;
    for (const item of transactionData.items) {
      const { product_id, quantity, sub_total } = item;
      itemsPriceTotal += Math.round(sub_total);

      await connection.query(
        "INSERT INTO item_transactions (invoice_id, product_id, quantity, sub_total) VALUES (?, ?, ?, ?)",
        [invoiceId, product_id, quantity, Math.round(sub_total)]
      );
    }

    const grandTotal =
      itemsPriceTotal + Math.round(transactionData.shipping_price);

    await connection.query(
      "UPDATE invoices SET items_price_total = ?, grand_total = ? WHERE id = ?",
      [itemsPriceTotal, grandTotal, invoiceId]
    );

    // Commit
    await connection.commit();

    return invoiceId;
  } catch (e) {
    if (connection) await connection.rollback();
    console.error("Transaction failed:", e);
    throw e;
  } finally {
    if (connection) await connection.release();
  }
}

// Fungsi untuk mendapatkan semua transaksi
async function getTransactions() {
  try {
    // Menggunakan JOIN untuk menggabungkan tabel 'invoices' dengan 'item_transactions'
    const query = `
        SELECT 
          invoices.*, 
          item_transactions.id as item_id,
          item_transactions.product_id,
          item_transactions.quantity,
          item_transactions.sub_total
        FROM invoices
        LEFT JOIN item_transactions ON invoices.id = item_transactions.invoice_id
      `;
    const result = await pool.query(query);

    // Mengelompokkan hasil berdasarkan id invoice
    const transactions = result[0].reduce((acc, item) => {
      if (!acc[item.id]) {
        acc[item.id] = {
          id: item.id,
          customer_id: item.customer_id,
          transaction_date: item.transaction_date,
          courier: item.courier,
          shipping_price: item.shipping_price,
          items_price_total: item.items_price_total,
          grand_total: item.grand_total,
          items: [], // Array untuk menyimpan item transaksi
        };
      }

      // Tambahkan detail item transaksi ke array 'items'
      if (item.product_id) {
        acc[item.id].items.push({
          item_id: item.item_id,
          product_id: item.product_id,
          quantity: item.quantity,
          sub_total: item.sub_total,
        });
      }

      return acc;
    }, {});
    return Object.values(transactions);
  } catch (e) {
    console.error(e);
    throw e;
  }
}

async function editTransaction(transactionId, transaction) {
  let connection;
  try {
    connection = await pool.getConnection();
    await connection.beginTransaction();

    // Perbarui data transaksi dalam tabel invoices
    await connection.query(
      "UPDATE invoices SET customer_id = ?, courier = ?, shipping_price = ? WHERE id = ?",
      [
        transaction.customer_id,
        transaction.courier,
        transaction.shipping_price,
        transactionId,
      ]
    );

    // Loop through each item in the transaction
    for (const item of transaction.items) {
      const { id, product_id, quantity, sub_total } = item;
      if (id) {
        // Jika ada ID dalam data item, dapatkan quantity sebelumnya
        const [oldItem] = await connection.query(
          "SELECT quantity FROM item_transactions WHERE id = ?",
          [id]
        );

        // Hitung perubahan quantity
        const quantityChange = quantity - oldItem[0].quantity;

        // Perbarui item_transactions
        await connection.query(
          "UPDATE item_transactions SET product_id = ?, quantity = ?, sub_total = ? WHERE id = ?",
          [product_id, quantity, sub_total, id]
        );

        // Perbarui stok produk di tabel products
        await connection.query(
          "UPDATE products SET stock = stock - ? WHERE id = ?",
          [quantityChange, product_id]
        );
      } else {
        // Jika tidak ada ID, sisipkan item_transactions baru dan kurangi stok
        await connection.query(
          "INSERT INTO item_transactions (invoice_id, product_id, quantity, sub_total) VALUES (?, ?, ?, ?)",
          [transactionId, product_id, quantity, sub_total]
        );

        // Perbarui stok produk
        await connection.query(
          "UPDATE products SET stock = stock - ? WHERE id = ?",
          [quantity, product_id]
        );
      }
    }

    // Commit transaksi
    await connection.commit();
  } catch (e) {
    if (connection) await connection.rollback();
    console.error("Transaction edit failed:", e);
    throw e;
  } finally {
    if (connection) await connection.release();
  }
}

// Fungsi untuk menghapus transaksi
async function deleteTransaction(transactionId) {
  try {
    await pool.query("DELETE FROM invoices WHERE id = ?", [transactionId]);
  } catch (e) {
    console.error(e);
    throw e;
  }
}

// Fungsi untuk menghapus item_transactions
async function deleteItemTransaction(itemTransactionId) {
  try {
    await pool.query("DELETE FROM item_transactions WHERE id = ?", [
      itemTransactionId,
    ]);
  } catch (e) {
    console.error(e);
    throw e;
  }
}

export {
  storeTransaction,
  getTransactions,
  editTransaction,
  deleteTransaction,
  deleteItemTransaction,
};
