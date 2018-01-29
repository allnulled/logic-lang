Language = 
  introduction:Script_partial_for_introduction?
  axioms:Script_partial_for_axioms
  propositions:Script_partial_for_propositions
  {
    var out = "";
    out += "(function() {\n\n"
    + "////////////////////////////\n"
    + "// ---- DEFINICIONES ---- //\n"
    + "////////////////////////////\n\n"
    + getSentencesRegistry() 
    + "///////////////////////\n"
    + "// ---- AXIOMAS ---- //\n"
    + "///////////////////////\n\n"
    + decompose(axioms) 
    + "\n"
    + "/////////////////////////////\n"
    + "// ---- PROPOSICIONES ---- //\n"
    + "/////////////////////////////\n\n"
    + decompose(propositions)
    + "\nreturn LogicLang.resolve();"
    + "\n\n})();";
  return js_beautify(out, {
      indent_size: 4,
      indent_char: " ",
      keep_array_indentation: true,
      brace_style: "compact",
      preserve_newlines: false
  });

}
