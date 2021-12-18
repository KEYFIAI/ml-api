const ps = require("python-shell");

function python(message, script) {
  return new Promise((rs, rj) => {
    const options = {
      mode: "text",
      pythonPath: "python", // LINUX or MAX - python3 | Window - python
      // scriptPath: "C:/Users/c9y7i/Desktop/ml-api/src/py",
      scriptPath: "./src/py",
      args: [message],
    };

    ps.PythonShell.run(script, options, (err, results) => {
      if (err) throw err;
      rs(results);
    });
  });
}

module.exports = python;
