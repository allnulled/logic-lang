Script_partial_for_axioms = 
	( "="+ _* "AXIOMAS" _* "="+ Any_space* )
	axioms:(Full_sentence)*
	Any_space*
{
	return decompose(axioms);
}