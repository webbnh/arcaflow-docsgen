{{- if eq .TypeID "enum_string" -}}
    {{- template "enum_string.md.tpl" . -}}
{{- else if eq .TypeID "enum_integer" -}}
    {{- template "enum_integer.md.tpl" . -}}
{{- else if eq .TypeID "string" -}}
    {{- template "string.md.tpl" . -}}
{{- else if eq .TypeID "pattern" -}}
    {{- template "pattern.md.tpl" . -}}
{{- else if eq .TypeID "integer" -}}
    {{- template "integer.md.tpl" . -}}
{{- else if eq .TypeID "float" -}}
    {{- template "float.md.tpl" . -}}
{{- else if eq .TypeID "bool" -}}
    {{- template "bool.md.tpl" . -}}
{{- else if eq .TypeID "list" -}}
    {{- template "list.md.tpl" . -}}
{{- else if eq .TypeID "map" -}}
    {{- template "map.md.tpl" . -}}
{{- else if eq .TypeID "scope" -}}
    {{- template "scope.md.tpl" .  -}}
{{- else if eq .TypeID "object" -}}
    {{- template "object.md.tpl" .  -}}
{{- else if eq .TypeID "one_of_string" -}}
    {{- template "one_of_string.md.tpl" .  -}}
{{- else if eq .TypeID "one_of_string" -}}
    {{- template "one_of_string.md.tpl" .  -}}
{{- else if eq .TypeID "ref" -}}
    {{- template "ref.md.tpl" .  -}}
{{- end -}}