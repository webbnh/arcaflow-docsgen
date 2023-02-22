{{- /*gotype: go.flow.arcalot.io/pluginsdk.schema.Object */ -}}
- **Type:** Object
<details><summary>Properties</summary>
{{- range $propertyID, $property := .Properties -}}
<details><summary>{{ $propertyID }}</summary>
{{- template "type.md.tpl" $property.Type -}}
</details>
{{- end -}}
</details>