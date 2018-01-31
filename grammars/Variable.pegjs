Variable = 
	opener:( "{" )
	variablee:([^\}]+) 
	closer:( "}" )
	{
		return {
			location: location(),
			supertype: "Atom",
			type: "Variable",
			components: {
				hypothetical: true,
				value: decompose(variablee)
			}
		};
	}