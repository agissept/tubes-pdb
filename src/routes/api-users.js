import {deleteUser, editUser, getUsers, storeUser} from "../gateway/users-gateway.js";
import express from "express";

const router = express.Router()

router.get('/users', async (req, res) => {
    const users = await getUsers()
    res.send(users)
}).post('/users', async (req, res) => {
    const {name, address, phoneNumber} = req.body
    await storeUser({name, address, phoneNumber})
}).put('/users/:userId', async (req, res) => {
    const userId = req.params.userId
    const {name, address, phoneNumber} = req.body

    await editUser(userId, {name, address, phoneNumber})
}).delete('/users/:userId', async (req, res) => {
    const userId = req.params.userId
    await deleteUser(userId)
})
export default router
