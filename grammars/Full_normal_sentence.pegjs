Full_normal_sentence = 
	sentence:Normal_sentence 
	end:End_of_sentence {
  return sentence + ";" + end;
}