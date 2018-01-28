Axiom_nucleus = 
	negation:(("No" / "no") _)?
	(("Es" / "es") _ ("verdad") (_ "que")? _)?
	value:(
		Value / 
		Variable /
		Normal_sentece_as_value
	)
{
	var out = "";
	registerSentence("Axiom", [
		"function(data) {",
		"  // @TODO: axiom",
		"}"
	]);
	out += "LogicLang.Axiom({axiom: " 
		+ value 
		+ ",negated: " 
		+ (negation ? "true" : "false") 
		+ "})";
	return out;
}

Axiom = 
	exclusive_disjunction_operator:(("O" / "o") _)?
	axiom:Axiom_nucleus
	appendixes:(
		( _ )
		( "y" / "o" )
		( _ )
		( Axiom_nucleus )
	)*
{
	var out = "";
	if(!appendixes || appendixes.length === 0) {
		out += axiom;
	} else {
		registerSentence("Composed_axiom", Constants.composed_axiom_code);
		out += "LogicLang.Composed_axiom({base:" + axiom + ",composition:[";
		for(var a=0; a<appendixes.length; a++) {
			var appendix = appendixes[a];
			var operator = appendix[1];
			var axiomOperand = appendix[3];
			if(operator === "y") {
				operator = "Conjunction";
			} else if(operator === "o") {
				operator = "Disjunction";
			}
			if(operator === "Disjunction" && exclusive_disjunction_operator) {
				operator = "Exclusive_disjunction";
			}
			if(a !== 0) {
				out += ",";
			}
			out += "{operator:" + JSON.stringify(operator) + ",operand:" + axiomOperand + "}";
		}
		out += "]})";
	}
	return out;
}
