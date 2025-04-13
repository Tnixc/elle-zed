; Indent blocks
[
  (block)
  (struct_definition)
] @indent

; Dedent closing brackets and braces
[
  "}"
  ")"
  "]"
] @outdent

; Indent conditionals and loops
; surely i dont actually need these
[
  (if_statement)
  (while_statement)
  (for_statement)
  (foreach_statement)
] @indent 

; Indent parameters and arguments
[
  (parameter_list)
  (expression_list)
] @indent

; Indent array, tuple, triple, and struct literals
[
  (array_literal)
  (tuple_literal)
  (triple_literal)
  (struct_literal)
] @indent

; Indent continuations of function calls
(call_expression
  arguments: (expression_list)) @indent

; Align struct fields
(struct_field) @align

; Align assignment operations
(assignment_statement) @align

; Align variable declarations
(variable_declaration) @align

; Indent struct field initializers
(struct_field_initializer) @align

; Handle chain indentation for member expressions
(member_expression) @indent
