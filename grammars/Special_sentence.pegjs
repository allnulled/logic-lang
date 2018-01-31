Special_sentence = 
	sentence:(
		Multiline_comment_sentence /
		Comment_sentence
	) 
	{
		return sentence;
	}