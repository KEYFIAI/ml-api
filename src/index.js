const express = require("express");
const python = require("./py/python"); // parms(message, script) return promise
const app = express();
const port = 3000;

app.get("/", (req, res) => {
  res.send("API OK");
  console.log("route:`/` -> API OK");
});

app.get("/recommend", (req, res) => {
  const address = req.query.address; // recommend?address=123  ===> cosnt address = 123
  console.log("route:`/recommend/:address` -> Processing ->", address);
  python(address, "nn_recommender.py").then((ans) => {
    res.send(ans[0]);
    console.log("route:`/recommend/:address` -> " + ans[0]);
  });
});

app.listen(port, () => {
  console.log(`Server open on port ${port}`);
});
