{{- /*gotype: go.flow.arcalot.io/pluginsdk.schema.Int */ -}}
{{- with .Min }}<tr><th>Minimum:</th><td>{{ . }}</td></tr>{{ end -}}
{{- with .Max }}<tr><th>Maximum:</th><td>{{ . }}</td></tr>{{ end -}}
{{- with .Units }}<tr><th>Units:</th><td>{{ .BaseUnit.NameLongPluralValue }}</td></tr>{{end}}
