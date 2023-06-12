import express from "express";
import connectToDatabases from "./helper.mjs";
const app = express();
app.get("/", (req, res) => {
  res.send("<h2>Hi therer!</h2>");
});

await connectToDatabases();

app.listen(3000);
