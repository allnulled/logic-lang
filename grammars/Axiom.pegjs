Axiom_nucleus = 
	negation:(("No" / "no") _)?
	token1:(("Es" / "es") _ ("verdad") (_ "que")? _)?
	value:(
		Value / 
		Variable /
		Normal_sentece_as_value
	)
	{
		if((value.type === "Variable") || (value.type === "Value")) {
			value.components.hypothetical = false;
		}
		return {
			location: location(),
			supertype: "Axiom",
			type: "Nucleus of axiom",
			components: {
				negated: (negation ? true : false),
				value: value
			}
		};
	}

Axiom = axiom:(
		Axiom_for_conjunction /
		Axiom_for_disjunction /
		Axiom_for_exclusive_disjunction /
		Axiom_nucleus
	)
	{
		return axiom;
	}

Axiom_for_conjunction = 
	axiom:Axiom_nucleus
	appendixes:(
		( _ "o" _ )
		( Axiom )
	)+
	{
		return {
			location: location(),
			supertype: "Axiom",
			type: "Axiom for inclusive disjunction",
			components: {
				nucleus: axiom,
				appendixes: appendixes.map(function(appendix) {
					return appendix[1];
				})
			}
		};
	}

Axiom_for_disjunction = 
	axiom:Axiom_nucleus
	appendixes:(
		( _ "y" _ )
		( Axiom )
	)+
	{
		return {
			location: location(),
			supertype: "Axiom",
			type: "Axiom for conjunction",
			components: {
				nucleus: axiom,
				appendixes: appendixes.map(function(appendix) {
					return appendix[1];
				})
			}
		};
	}

Axiom_for_exclusive_disjunction = 
	token1:(("O" / "o") _)
	axiom:Axiom_nucleus
	appendixes:(
		( _ "o" _ )
		( Axiom )
	)+
	{
		return {
			location: location(),
			supertype: "Axiom",
			type: "Axiom for exclusive disjunction",
			components: {
				nucleus: axiom,
				appendixes: appendixes.map(function(appendix) {
					return appendix[1];
				})
			}
		};
	}

