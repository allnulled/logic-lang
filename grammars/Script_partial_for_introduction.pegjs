Script_partial_for_introduction = 
	opener:( "="+ _* "INTRODUCCIÓN" _* "="+ Any_space* )
	introduction:(!( "="+ _* "AXIOMAS" _* "="+) .)*
	{
		return {
			location: location(),
			supertype: "Script",
			type: "Introduction",
			components: {
				introduction: decompose(introduction)
			}
		};
	}