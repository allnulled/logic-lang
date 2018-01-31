End_of_sentence = 
	"." 
	newline:(Any_space*) 
	{
		return decompose(newline);
	}