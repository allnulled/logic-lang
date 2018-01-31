Variable_assignation_sentence =
  variablee:(Variable)
  token1:(_ "significa" _)
  token2:("que" _)?
  value:(Axiom) 
  {
      return {
          location: location(),
          supertype: "Sentence",
          type: "Variable Assignation",
          components: {
              name: variablee,
              value: value
          }
      };
  }