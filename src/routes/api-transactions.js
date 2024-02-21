import {
  storeTransaction,
  getTransactions,
  editTransaction,
  deleteTransaction,
  deleteItemTransaction,
} from "../gateway/transactions-gateway.js";
import express from "express";

const router = express.Router();

// Mendapatkan semua transaksi
router.get("/transactions", async (req, res) => {
  try {
    const transactions = await getTransactions();
    res.json(transactions);
  } catch (e) {
    res.status(500).send(e.message);
  }
});

// Membuat transaksi baru
router.post("/transactions", async (req, res) => {
  //console.log(req.body);
  try {
    const transactionId = await storeTransaction(req.body);
    res.status(201).send({ id: transactionId });
  } catch (e) {
    res.status(500).send(e.message);
  }
});

// Mengedit transaksi berdasarkan ID
router.put("/transactions/:transactionId", async (req, res) => {
  try {
    await editTransaction(req.params.transactionId, req.body);
    res.send("Transaction updated successfully");
  } catch (e) {
    res.status(500).send(e.message);
  }
});

// Menghapus transaksi berdasarkan ID
router.delete("/transactions/:transactionId", async (req, res) => {
  try {
    await deleteTransaction(req.params.transactionId);
    res.send("Transaction deleted successfully");
  } catch (e) {
    res.status(500).send(e.message);
  }
});

// Menghapus item-transaksi berdasarkan ID
router.delete("/item-transaction/:itemTransactionId", async (req, res) => {
  try {
    await deleteItemTransaction(req.params.itemTransactionId);
    res.send("Item Transaction deleted successfully");
  } catch (e) {
    res.status(500).send(e.message);
  }
});

export default router;
