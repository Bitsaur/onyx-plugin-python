(identifier) @Identifier

((identifier) @Identifier
  (#match? @Identifier "^[A-Z]"))

((identifier) @Identifier
  (#match? @Identifier "^[A-Z][A-Z_]*$"))

; Function calls

(decorator) @FunctionIdentifier
(decorator
  (identifier) @FunctionIdentifier)

(call
  function: (attribute attribute: (identifier) @FunctionIdentifier))
(call
  function: (identifier) @FunctionIdentifier)

; Builtin functions

((call
   function: (identifier) @BuiltInVariableIdentifier)
  (#match?
    @BuiltInVariableIdentifier
    "^(abs|all|any|ascii|bin|bool|breakpoint|bytearray|bytes|callable|chr|classmethod|compile|complex|delattr|dict|dir|divmod|enumerate|eval|exec|filter|float|format|frozenset|getattr|globals|hasattr|hash|help|hex|id|input|int|isinstance|issubclass|iter|len|list|locals|map|max|memoryview|min|next|object|oct|open|ord|pow|print|property|range|repr|reversed|round|set|setattr|slice|sorted|staticmethod|str|sum|super|tuple|type|vars|zip|__import__)$"))

; Function definitions

(function_definition
  name: (identifier) @FunctionIdentifier)

(attribute attribute: (identifier) @LocalVariableIdentifier)
(type (identifier) @TypeIdentifier)

; Literals

[
  (none)
  (true)
  (false)
] @Keyword

[
  (integer)
  (float)
] @Number

(comment) @Comment
(string) @String
(escape_sequence) @EscapeSequence

[
  "-"
  "-="
  "!="
  "*"
  "**"
  "**="
  "*="
  "/"
  "//"
  "//="
  "/="
  "&"
  "&="
  "%"
  "%="
  "^"
  "^="
  "+"
  "->"
  "+="
  "<"
  "<<"
  "<<="
  "<="
  "<>"
  "="
  ":="
  "=="
  ">"
  ">="
  ">>"
  ">>="
  "|"
  "|="
  "~"
  "@="
] @Operator

[
  "and"
  "in"
  "is"
  "not"
  "or"
  "is not"
  "not in"
] @Keyword

[
  "as"
  "assert"
  "async"
  "await"
  "break"
  "class"
  "continue"
  "def"
  "del"
  "elif"
  "else"
  "except"
  "exec"
  "finally"
  "for"
  "from"
  "global"
  "if"
  "import"
  "lambda"
  "nonlocal"
  "pass"
  "print"
  "raise"
  "return"
  "try"
  "while"
  "with"
  "yield"
  "match"
  "case"
] @Keyword
