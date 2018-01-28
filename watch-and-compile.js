var execCmd = require("exec-cmd");
require('chokidar').watch(__dirname + "/grammars/*", {
	recursive: true
}).on("change", function(path) {
	execCmd("clear", {stdio: "inherit"}).then(function() {
		console.log("Changed: " + path);
		console.log("Executing 'node compile'");
		execCmd("node compile", {
			stdio: "inherit"
		}).then(function(res) {
			
			console.log("Last modification at: " + new Date());
			console.log("Output: " + JSON.stringify(res));
		}).catch(console.error);
	});
})