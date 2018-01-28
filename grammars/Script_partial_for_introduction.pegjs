Script_partial_for_introduction = 
	( "="+ _* "INTRODUCCIÓN" _* "="+ Any_space* )
	introduction:(!( "="+ _* "AXIOMAS" _* "="+) .)*
{
	return decompose(introduction);
}