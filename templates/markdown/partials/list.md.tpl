{{- /*gotype: go.flow.arcalot.io/pluginsdk.schema.List */ -}}
{{- with .Min }}<tr><th>Minimum items:</th><td>{{ . }}</td></tr>{{ end -}}
{{- with .Max }}<tr><th>Maximum items:</th><td>{{ . }}</td></tr>{{ end -}}
<tr><td colspan="2">
    <details>
        <summary>List items</summary>
        <table><tbody>
            {{- partial "type" .Items -}}
            </tbody></table>
    </details>
</td></tr>