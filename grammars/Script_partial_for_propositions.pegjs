Script_partial_for_propositions = 
	opener:( "="+ _* "PROPOSICIONES" _* "="+ Any_space* )
	propositions:(Full_sentence)*
	closer:Any_space*
	{
		return {
			location: location(),
			supertype: "Script",
			type: "Propositions",
			components: {
				propositions: propositions.filter(function(item) {
					return typeof item !== "undefined";
				})
			}
		};
	}