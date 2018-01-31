Value = 
	opener:( "{{" )
	value:(! "}}" .)+ 
	closer:( "}}" )
	{
		return {
			location: location(),
			supertype: "Atom",
			type: "Value",
			components: {
					hypothetical: true,
				value: decompose(value)
			}
		};
	}