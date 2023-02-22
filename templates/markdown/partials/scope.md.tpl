{{- /*gotype: go.flow.arcalot.io/pluginsdk.schema.Scope */ -}}
- **Type:** Scope
- **Root object:** [{{ .Root }}](#{{ .Root }})

<details><summary>Objects</summary>
{{- range $objectID, $object := .Objects -}}
<details><summary>{{ $objectID }}</summary>
{{- template "object.md.tpl" $object -}}
</details>
{{- end -}}
</details>