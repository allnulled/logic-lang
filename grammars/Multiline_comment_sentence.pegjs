Multiline_comment_sentence = 
	opener:"#*" 
	comment:(! "*#" .)* 
	closer:"*#" 
	end:Any_space* 
	{
		return undefined;
	}