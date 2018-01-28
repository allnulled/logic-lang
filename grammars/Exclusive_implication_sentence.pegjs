Exclusive_implication_sentence = sentence:(
		Exclusive_implication_sentence_1 / 
		Exclusive_implication_sentence_2
	) {
	return sentence;
}

Exclusive_implication_sentence_1 = 
	(
		(( "Sólo" / "sólo" ) _)
		(( "cuando" / "si" ) _)
	)
	premise:( Axiom )
	(_ "entonces" (_ "necesariamente" )? _)
	implication:( Axiom )
	{
	registerSentence("Exclusive_implication_sentence", Constants.exclusive_implication_sentence_code);
	return "LogicLang.Exclusive_implication_sentence({premise: " + premise + ",implication: " + implication + "})";
}

Exclusive_implication_sentence_2 = 
	(( "Sólo" / "sólo" ) _)
	premise:( Axiom )
	(_ "implica" (_ "necesariamente" )? (_ "que")? _)
	implication:( Axiom )
	{
	registerSentence("Exclusive_implication_sentence", Constants.exclusive_implication_sentence_code);
	return "LogicLang.Exclusive_implication_sentence({premise: " + premise + ",implication: " + implication + "})";
}