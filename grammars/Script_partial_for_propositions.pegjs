Script_partial_for_propositions = 
	( "="+ _* "PROPOSICIONES" _* "="+ Any_space* )
	propositions:(Full_sentence)*
	Any_space*
{
	return decompose(propositions);
}