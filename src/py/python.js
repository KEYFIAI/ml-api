const ps = require("python-shell");

function python(message, script) {
  return new Promise((rs, rj) => {
    const options = {
      mode: "text",
      pythonPath: "python", // LINUX or MAX - python3 | Window - python
      scriptPath: "./src/py/recommendation-engine",
      args: [message],
    };
    
    ps.PythonShell.run(script, options, (err, results) => {
      if (err) throw err;
      rs(results);
    });
  });
}

module.exports = python;
