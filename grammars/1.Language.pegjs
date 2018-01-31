Language = 
    introduction:Script_partial_for_introduction?
    axioms:Script_partial_for_axioms
    propositions:Script_partial_for_propositions
    {
        return JSON.stringify({
            supertype: "Language",
            type: "Language",
            components: {
                introduction: introduction || null,
                axioms: axioms,
                propositions: propositions
            }
        }, null, 4);
    }
