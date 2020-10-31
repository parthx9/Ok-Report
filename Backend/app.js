const express = require("express");
const mongoose = require("mongoose");
const app = express();
const bodyParser = require("body-parser");
const cors = require("cors");
require("dotenv").config();

// MIDDLEWARES TO BE USED
app.use(express.json());
app.use(bodyParser.json());
app.use(cors());

app.get("/", (req, res) => {
  res.send("Hi");
});

// DB Connection
const db = process.env.DATABASE;
mongoose
  .connect(db, { useNewUrlParser: true }, { useUnifiedTopology: true })
  .then((res) => {
    if (res) {
      console.log("DB Connected");
    }
  })
  .catch((err) => {
    console.log(err);
  });

app.use("/api/doctor", require("./Route.js/doctor"));

app.listen(8000, (req, res) => {
  console.log(`Server has started at port 8000`);
});
