Comment_sentence = 
	"#" 
	comment:([^\n]*) 
	end:Any_space* {
	registerSentence("Comment", [
		"function(data) {",
		"  // @TODO: comment sentence",
		"}"
	]);
	return "LogicLang.Comment("
		+ JSON.stringify(decompose(comment), null, 4)
		+ ");"
		+ decompose(end)
}