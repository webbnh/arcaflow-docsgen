{{- /*gotype: go.flow.arcalot.io/pluginsdk.schema.Ref */ -}}
<li><strong>Referenced object:</strong> {{ .ID }}</li>
{{- with .Display -}}
    {{- with .Name -}}
        <li>**Name:** {{ . }}</li>
    {{ end -}}
    {{- with .Description -}}
        <li>**Description:** {{ . }}</li>
    {{- end -}}
{{- end -}}
