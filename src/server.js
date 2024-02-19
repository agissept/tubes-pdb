import "dotenv/config";
import express from "express";
import pages from "./routes/pages.js";
import apiUsers from "./routes/api-users.js";
import apiProducts from "./routes/api-products.js";
import apiTransactions from "./routes/api-transactions.js";

const app = express();
const port = 3000;

app.use(express.static("public"));
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

app.use("/", pages);
app.use("/api", apiUsers);
app.use("/api", apiProducts);
app.use("/api", apiTransactions);

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`);
});
