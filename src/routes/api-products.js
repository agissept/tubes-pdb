import {
  storeProduct,
  getProducts,
  editProduct,
  deleteProduct,
} from "../gateway/products-gateway.js";
import express from "express";

const router = express.Router();

router.get("/products", async (req, res) => {
  try {
    const products = await getProducts();
    res.json(products);
  } catch (e) {
    res.status(500).send(e.message);
  }
});

router.post("/products", async (req, res) => {
  try {
    const productId = await storeProduct(req.body);
    res.status(201).send({ id: productId });
  } catch (e) {
    res.status(500).send(e.message);
  }
});

router.put("/products/:productId", async (req, res) => {
  try {
    await editProduct(req.params.productId, req.body);
    res.send("Product updated successfully");
  } catch (e) {
    res.status(500).send(e.message);
  }
});

router.delete("/products/:productId", async (req, res) => {
  try {
    await deleteProduct(req.params.productId);
    res.send("Product deleted successfully");
  } catch (e) {
    res.status(500).send(e.message);
  }
});

export default router;
