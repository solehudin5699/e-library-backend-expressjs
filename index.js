require("dotenv").config();
const express = require("express");
const bodyParser = require("body-parser");
const logger = require("morgan");
const cors = require("cors");

const indexRouter = require("./src/routes/index");

const app = express();

app.listen(process.env.PORT, () => {
  console.log(`Server is Running at ${process.env.PORT}`);
});

app.use(express.static("public"));
app.use(bodyParser.json()); //json
app.use(bodyParser.urlencoded({ extended: false })); //x-www-form-urlencoded
app.use(logger("dev")); // morgan
app.use(cors());
app.use(function (req, res, next) {
  res.header("Access-Control-Allow-Origin", process.env.FRONT_END_URL);
  res.header(
    "Access-Control-Allow-Headers",
    "Origin, X-Requested-With, Content-Type, Accept"
  );
  next();
});

app.use(indexRouter);
