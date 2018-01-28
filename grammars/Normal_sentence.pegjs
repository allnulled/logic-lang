Normal_sentence = 
	sentence:(
		Variable_assignation_sentence /
		Exclusive_implication_sentence /
		Implication_sentence /
		Axiom
   	) {
  return sentence;
}

Normal_sentece_as_value =
	( "[" Any_space* )
	sentence:( Normal_sentence )
	( Any_space* "]" )
	{
	return sentence;
}