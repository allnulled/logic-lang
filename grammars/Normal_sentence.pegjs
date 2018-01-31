Normal_sentence = 
	sentence:(
		Variable_assignation_sentence /
		Exclusive_implication_sentence /
		Implication_sentence /
		Enable_debug_sentence /
		Axiom
   	) 
   	{
		return sentence;
	}

Normal_sentece_as_value =
	opener:( "[" Any_space* )
	sentence:( Normal_sentence )
	closer:( Any_space* "]" )
	{
		return sentence;
	}