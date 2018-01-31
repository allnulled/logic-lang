Full_sentence = 
	sentence:(
		Full_normal_sentence /
		Full_special_sentence
	)
	{ 
		return sentence;
	}