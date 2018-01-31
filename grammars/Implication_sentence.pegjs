Implication_sentence = 
	sentence:(
		Implication_sentence_1 / 
		Implication_sentence_2
	)
	{
		return sentence;
	}

Implication_sentence_1 = 
	token1:(( "Cuando" / "cuando" / "Si" / "si" ) _) 
	premise:( Axiom )
	token2:(_ "entonces" (_ "necesariamente" )? _)
	implication:( Axiom )
	{
		return {
			location: location(),
			supertype: "Sentence",
			type: "Implication",
			components: {
				premise: premise,
				implication: implication
			}
		};
	}

Implication_sentence_2 = 
	premise:( Axiom )
	token1:(_ "implica" (_ "necesariamente" )? (_ "que")? _)
	implication:( Axiom )
	{
		return {
			location: location(),
			supertype: "Sentence",
			type: "Implication",
			components: {
				premise: premise,
				implication: implication
			}
		};
	}