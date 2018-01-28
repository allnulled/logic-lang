Variable_assignation_sentence = 
  variabl:( Axiom )
  (_ "significa" _)
  ("que" _)? 
  value:( Axiom ) 
  {
    registerSentence("Variable_assignation_sentence", [
      "function(variable, value) {",
      "  // @TODO: variable assignation sentence",
      "}"
    ]);
    return "LogicLang.Variable_assignation_sentence({variable: " + variabl + ",value: " + value + "})";
}