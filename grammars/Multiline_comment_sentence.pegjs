Multiline_comment_sentence = 
	"#*" 
	comment:(! "*#" .)* "*#" 
	end:Any_space* {
	registerSentence("Multiline_comment_sentence", [
		"function(data) {",
		"  // @TODO: exclusive implication sentence",
		"}"
	]);
  	return "LogicLang.Multiline_comment_sentence(" + JSON.stringify(decompose(comment), null, 4) + ");" + decompose(end);
}