const fs = require("fs");
const pegjs = require("pegjs");
const globby = require("globby");
const grammarFiles = globby.sync(__dirname + "/grammars/*.pegjs");
const grammarContent = grammarFiles.map(function(file) {
  return fs.readFileSync(file, "utf8");
}).join("\n\n");

fs.writeFileSync("src/logics-grammar.pegjs", grammarContent, "utf8");

var parserContent;
try {
	parserContent = pegjs.generate(grammarContent, {
		format: "globals",
		exportVar: "LogicLang",
		output: "source"
	});
} catch(exc) {
	console.log("[ATTENTION: ERRORS HAPPENED!]");
	console.log("[ATTENTION: ERRORS HAPPENED!]");
	console.log("[ATTENTION: ERRORS HAPPENED!]");
	console.log("[ATTENTION: ERRORS HAPPENED!]");
	console.log(exc);
	console.log("Error approximately at: " + grammarContent.substr(exc.location.start.offset, 30))
	return;
}

fs.writeFileSync("src/logics-grammar.js", parserContent, "utf8");

console.log("Parser was generated successfully.");
