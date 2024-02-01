import pool from "../database/database.js";

async function storeProduct(product) {
  try {
    const result = await pool.query(
      "INSERT INTO products (name, stock, price) VALUES (?, ?, ?)",
      [product.name, product.stock, product.price]
    );
    return result.insertId;
  } catch (e) {
    console.error(e);
    throw e;
  }
}

async function getProducts() {
  try {
    const result = await pool.query("SELECT * FROM products");
    return result[0].map((product) => ({
      id: product.id,
      name: product.name,
      stock: product.stock,
      price: product.price,
    }));
  } catch (e) {
    console.error(e);
    throw e;
  }
}

async function editProduct(productId, product) {
  try {
    await pool.query(
      "UPDATE products SET name = ?, stock = ?, price = ? WHERE id = ?",
      [product.name, product.stock, product.price, productId]
    );
  } catch (e) {
    console.error(e);
    throw e;
  }
}

async function deleteProduct(productId) {
  try {
    await pool.query("DELETE FROM products WHERE id = ?", [productId]);
  } catch (e) {
    console.error(e);
    throw e;
  }
}

export { storeProduct, getProducts, editProduct, deleteProduct };
