import path from "path";
import express from "express";

const router = express.Router();

router
  .get("/", async (req, res) => {
    res.sendFile(path.resolve("./public/page/index.html"));
  })
  .get("/users", async (req, res) => {
    res.sendFile(path.resolve("./public/page/users.html"));
  })
  .get("/products", async (req, res) => {
    res.sendFile(path.resolve("./public/page/products.html"));
  })
  .get("/transactions", async (req, res) => {
    res.sendFile(path.resolve("./public/page/transactions.html"));
  });

export default router;
