{{- if eq .TypeID "enum_string" -}}
    Enum (string keys) <span title="Enums only allow a limited list of values.">💡</span>
{{- else if eq .TypeID "enum_integer" -}}
    Enum (integer keys) <span title="Enums only allow a limited list of values.">💡</span>
{{- else if eq .TypeID "string" -}}
    String <span title="Strings hold a list of printable characters.">💡</span>
{{- else if eq .TypeID "pattern" -}}
    Pattern <span title="Patterns hold regular expressions.">💡</span>
{{- else if eq .TypeID "integer" -}}
    Integer (64-bit, signed) <span title="Integers hold whole numbers.">💡</span>
{{- else if eq .TypeID "float" -}}
    Floating point number (64 bits, signed) <span title="Floats hold fractional numbers. They are imprecise due to their internal representation.">💡</span>
{{- else if eq .TypeID "bool" -}}
    Boolean <span title="Booleans hold true or false values.">💡</span>
{{- else if eq .TypeID "list" -}}
    List of {{- template "typename.md.tpl" .Items -}} <span title="Lists hold zero or more items of the specified type.">💡</span>
{{- else if eq .TypeID "map" -}}
    Map of {{- template "typename.md.tpl" .Keys -}} &rarr; {{- template "typename.md.tpl" .Keys -}} <span title="Maps hold a set of keys associated with values.">💡</span>
{{- else if eq .TypeID "scope" -}}
    Scope <span title="Scopes hold one or more objects that can be referenced inside the properties of those objects by ref types. Ref types always reference the closest scope.">💡</span>
{{- else if eq .TypeID "object" -}}
    Object <span title="Objects have a fixed set of fields. Each field has a specified type and can have extra validation applied to them, e.g. making the field required or conflicting another field.">💡</span>
{{- else if eq .TypeID "one_of_string" -}}
    One of (string discriminator) <span title="One of types can be one of a specified list of objects (polymorphism). The discriminator field holds the information which object it actually is.">💡</span>
{{- else if eq .TypeID "one_of_int" -}}
    One of (integer discriminator) <span title="One of types can be one of a specified list of objects (polymorphism). The discriminator field holds the information which object it actually is.">💡</span>
{{- else if eq .TypeID "ref" -}}
    Object reference to &ldquo;{{ .ID }}&rdquo; <span title="Object references (refs) reference an object in their closest scope up the typing tree.">💡</span>
{{- else if eq .TypeID "any"}}
    Any  <span title="Any types can hold any primitive type (integer, float, string, boolean, list, map), but cannot hold objects. Their type is not checked beyond conforming to the primitive type requirement.">💡</span>
{{- end -}}