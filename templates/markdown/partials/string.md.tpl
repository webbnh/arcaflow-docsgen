{{- /*gotype: go.flow.arcalot.io/pluginsdk.schema.String */ -}}
{{- with .Min }}<li><strong>Minimum length:</strong> {{ . }}</li>{{ end -}}
{{- with .Max }}<li><strong>Maximum length:</strong> {{ . }}</li>{{ end -}}
{{- with .Pattern }}<li><strong>Must match pattern:</strong> <code>{{ .String }}</code></li>{{ end -}}