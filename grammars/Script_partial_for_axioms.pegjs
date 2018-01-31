Script_partial_for_axioms = 
	opener:( "="+ _* "AXIOMAS" _* "="+ Any_space* )
	axioms:(Full_sentence)*
	closer:Any_space*
	{
		return {
			location: location(),
			supertype: "Script",
			type: "Axioms script",
			components: axioms.filter(function(item) {
				return typeof item !== "undefined";
			})
		};
	}