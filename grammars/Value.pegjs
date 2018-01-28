Value = 
	( "{{" )
	value:(! "}}" .)+ 
	( "}}" )
	{
	registerSentence("Value", [
		"function(data) {",
		"  // @TODO: value function",
		"}"
	]);
  	return "LogicLang.Value(" + JSON.stringify(decompose(value)) + ")";
}