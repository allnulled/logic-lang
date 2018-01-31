Exclusive_implication_sentence = 
	sentence:(
		Exclusive_implication_sentence_1 / 
		Exclusive_implication_sentence_2
	)
	{
		return sentence;
	}

Exclusive_implication_sentence_1 = 
	opener:(
		(( "Sólo" / "sólo" ) _)
		(( "cuando" / "si" ) _)
	)
	premise:( Axiom )
	token1:(_ "entonces" (_ "necesariamente" )? _)
	implication:( Axiom )
	{
		return {
			location: location(),
			supertype: "Sentence",
			type: "Exclusive implication",
			premise: premise,
			implication: implication
		};
	}

Exclusive_implication_sentence_2 = 
	opener:(( "Sólo" / "sólo" ) _)
	premise:( Axiom )
	token1:(_ "implica" (_ "necesariamente" )? (_ "que")? _)
	implication:( Axiom )
	{
		return {
			location: location(),
			supertype: "Sentence",
			type: "Exclusive implication",
			premise: premise,
			implication: implication
		};
	}