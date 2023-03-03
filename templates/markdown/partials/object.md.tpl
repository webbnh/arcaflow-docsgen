{{- /*gotype: go.flow.arcalot.io/pluginsdk.schema.Object */ -}}
<li>
    <strong>Properties</strong>
    <ul>
        {{- range $propertyID, $property := .Properties -}}
            <li><details><summary>{{ $propertyID }} ({{- template "typename.md.tpl" $property.Type -}})</summary>
            <ul>
                {{- template "property.md.tpl" $property -}}
                {{- template "type.md.tpl" $property.Type -}}
            </ul>
            </details></li>
        {{- end -}}
    </ul>
</li>
