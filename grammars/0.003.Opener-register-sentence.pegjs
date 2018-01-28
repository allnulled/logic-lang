
var sentences = {};

function registerSentence(name, code) {
	if(name in sentences) {
		return;
	}
	sentences[name] = code;
};

function getSentencesRegistry() {
	var out = "";
	out += "var LogicLang = {};\n";
	out += "LogicLang.resolve = function() {\n"
	 	+ "  return true;\n"
	 	+ "};\n"
	// out += "// Sentences registry: \n\n";
	for(var sentenceName in sentences) {
		// out += "// Sentence: " + sentenceName + "\n\n";
    	out += "LogicLang." + sentenceName + " = ";
    	var sentenceValue = sentences[sentenceName];
    	if(typeof sentenceValue === "object" && sentenceValue instanceof Array) {
	    	out += sentenceValue.join("\n") + ";\n";
	    } else if(typeof sentenceValue === "string") {
	    	out += sentenceValue;
	    } else if(typeof sentenceValue === "object" && sentenceValue instanceof Object) {
	    	throw {
	    		name: "NotSupportedTransformationException",
	    		message: "This part is not yet coded. Please, take this into account to continue the needed development."
	    	};
	    }
	}
	return out;
};
