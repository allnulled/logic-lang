Variable = 
	( "{" )
	variabl:([^\}]+) 
	( "}" )
	{
	registerSentence("Variable", [
		"function(data) {",
		"  // @TODO: variable function",
		"}"
	]);
  	return "LogicLang.Variable(" + JSON.stringify(decompose(variabl), null, 4) + ")";
}