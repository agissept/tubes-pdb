import pool from "../database/database.js";

async function storeUser(user) {
  try {
    await pool.query(
      "INSERT INTO customers(name, address, phone_number) values (?, ?, ?)",
      [user.name, user.address, user.phoneNumber]
    );
  } catch (e) {
    console.log(e);
    throw e;
  }
}

async function getUserById(userId) {
  try {
    const result = await pool.query("SELECT * FROM customers WHERE id = ?", [
      userId,
    ]);
    return result[0][0];
  } catch (e) {
    console.error(e);
    throw e;
  }
}

async function getUsers() {
  try {
    const result = await pool.query("SELECT * FROM customers");
    return result[0].map((user) => ({
      id: user.id,
      name: user.name,
      address: user.address,
      phoneNumber: user.phone_number,
    }));
  } catch (e) {
    console.log(e);
    throw e;
  }
}

async function editUser(userId, user) {
  try {
    await pool.query(
      "UPDATE customers SET name = ?, address = ?, phone_number = ? WHERE id = ?",
      [user.name, user.address, user.phoneNumber, userId]
    );
  } catch (e) {
    console.log(e);
    throw e;
  }
}

async function deleteUser(userId) {
  try {
    await pool.query("DELETE FROM customers WHERE id = ?", [userId]);
  } catch (e) {
    console.log(e);
    throw e;
  }
}

export { storeUser, getUsers, getUserById, deleteUser, editUser };
