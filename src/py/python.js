const ps = require("python-shell");

function python(message, script) {
  return new Promise((rs, rj) => {
    const options = {
      mode: "text",

      //For local testing in window env
      // pythonPath: "python", // LINUX or MAX - python3 | Window - python
      // scriptPath: "./src/py/recommendation-engine",

      pythonPath: "python3", // LINUX or MAX - python3 | Window - python
      scriptPath: "../recommendation-engine",
      args: [message],
    };

    ps.PythonShell.run(script, options, (err, results) => {
      if (err) throw err;
      rs(results);
    });
  });
}

module.exports = python;
