{{- /*gotype: go.flow.arcalot.io/pluginsdk.schema.Ref */ -}}
<tr><th>Referenced object:</th><td>{{ .ID }}</td></tr>
{{- with .Display -}}
    {{- with .Name -}}
        <tr><th>Name:</th><td>{{ . }}</td></tr>
    {{ end -}}
    {{- with .Description -}}
        <tr><th>Description:</th><td>{{ . }}</td></tr>
    {{- end -}}
{{- end -}}
