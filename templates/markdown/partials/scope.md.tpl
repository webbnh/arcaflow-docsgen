{{- /*gotype: go.flow.arcalot.io/pluginsdk.schema.Scope */ -}}
<tr><th>Root object:</th><td>{{ .Root }}</td></tr>
<tr><th>Properties</th><td>
    {{- range $propertyID, $property := (index .Objects .Root).Properties -}}
        <details><summary>{{ $propertyID }} ({{- partial "typename" $property.Type -}})</summary>
                <table><tbody>
                    {{- partial "property" $property -}}
                    {{- partial "type" $property.Type -}}
                    </tbody></table>
            </details>
    {{- end -}}
        </td></tr>
<tr><td colspan="2"><details><summary><strong>Objects</strong></summary>
    {{- range $objectID, $object := .Objects -}}
        <details><summary>{{ $objectID }} ({{- partial "typename" $object -}})</summary>
            <table><tbody>
            {{- partial "type" $object -}}
                </tbody></table>
        </details>
    {{- end -}}
</details></td></tr>