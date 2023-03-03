{{- /*gotype: go.flow.arcalot.io/pluginsdk.schema.Float */ -}}
{{- with .Min }}<li><strong>Minimum:</strong> {{ . }}</li>{{ end -}}
{{- with .Max }}<li><strong>Maximum:</strong> {{ . }}</li>{{ end -}}
{{- with .Units }}<li><strong>Units:</strong> {{ .BaseUnit.NameLongPluralValue }}</li>{{end}}
