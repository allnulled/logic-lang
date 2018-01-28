Implication_sentence = sentence:(
		Implication_sentence_1 / 
		Implication_sentence_2
	) {
	return sentence;
}

Implication_sentence_1 = 
	(( "Cuando" / "cuando" / "Si" / "si" ) _) 
	premise:( Axiom )
	(_ "entonces" (_ "necesariamente" )? _)
	implication:( Axiom )
	{
	registerSentence("Implication_sentence", Constants.implication_sentence_code);
	return "LogicLang.Implication_sentence({premise: " + premise + ",implication: " + implication + "})";
}

Implication_sentence_2 = 
	premise:( Axiom )
	(_ "implica" (_ "necesariamente" )? (_ "que")? _)
	implication:( Axiom )
	{
	registerSentence("Implication_sentence", Constants.implication_sentence_code);
	return "LogicLang.Implication_sentence({premise: " + premise + ",implication: " + implication + "})";
}