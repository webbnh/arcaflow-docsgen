{{- /*gotype: go.flow.arcalot.io/pluginsdk.schema.Scope */ -}}
<li><strong>Root object:</strong> {{ .Root }}</li>
<li><strong>Properties</strong><ul>
    {{- range $propertyID, $property := (index .Objects .Root).Properties -}}
        <li><details><summary>{{ $propertyID }} ({{- template "typename.md.tpl" $property.Type -}})</summary>
                <ul>
                    {{- template "property.md.tpl" $property -}}
                    {{- template "type.md.tpl" $property.Type -}}
                </ul>
            </details></li>
    {{- end -}}
</ul></li>
<li><details><summary><strong>Objects</strong></summary>
    {{- range $objectID, $object := .Objects -}}
        <details><summary>{{ $objectID }} ({{- template "typename.md.tpl" $object -}})</summary>
            <ul>
            {{- template "type.md.tpl" $object -}}
            </ul>
        </details>
    {{- end -}}
</details></li>
