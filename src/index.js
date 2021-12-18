const express = require("express");
const python = require("./py/python"); // parms(message, script) return promise
const app = express();
const port = 3000;

app.get("/", (req, res) => {
  const wallet = "0x16a1c8c6898b5301b578788183d89af11baf290c";
  python(wallet, "test1.py").then((ans) => {
    res.send(ans);
  });
});

app.listen(port, () => {
  console.log(`Server open on port ${port}`);
});
