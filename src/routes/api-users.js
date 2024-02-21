import {
  deleteUser,
  editUser,
  getUsers,
  getUserById,
  storeUser,
} from "../gateway/users-gateway.js";
import express from "express";

const router = express.Router();

router
  .get("/users", async (req, res) => {
    const users = await getUsers();
    res.send(users);
  })
  .get("/users/:userId", async (req, res) => {
    try {
      const userId = req.params.userId;
      const user = await getUserById(userId);
      if (user) {
        res.json(user);
      } else {
        res.status(404).send("User not found");
      }
    } catch (e) {
      res.status(500).send(e.message);
    }
  })
  .post("/users", async (req, res) => {
    const { name, address, phoneNumber } = req.body;
    await storeUser({ name, address, phoneNumber });
  })
  .put("/users/:userId", async (req, res) => {
    const userId = req.params.userId;
    const { name, address, phoneNumber } = req.body;

    await editUser(userId, { name, address, phoneNumber });
  })
  .delete("/users/:userId", async (req, res) => {
    const userId = req.params.userId;
    await deleteUser(userId);
  });
export default router;
