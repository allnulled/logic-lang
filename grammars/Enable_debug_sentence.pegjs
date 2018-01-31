Enable_debug_sentence = 
	token1:"Enable debug for " 
	variable:(
		( [A-Za-z$_] [A-Za-z0-9$_]* )
		( "." [A-Za-z$_] [A-Za-z0-9$_]* )* 
	)
	{
		return {
			location: location(),
			supertype: "Sentence",
			type: "Enable debug",
			components: {
				holder: decompose(variable)
			}
		};
	}