Comment_sentence = 
	opener:"#" 
	comment:([^\n]*) 
	end:Any_space* 
	{
		return undefined;
	}