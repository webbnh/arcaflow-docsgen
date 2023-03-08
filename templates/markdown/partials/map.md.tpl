{{- /*gotype: go.flow.arcalot.io/pluginsdk.schema.Map */ -}}
{{- with .Min }}<tr><th>Minimum items:</th><td>{{ . }}</td></tr>{{ end -}}
{{- with .Max }}<tr><th>Maximum items:</th><td>{{ . }}</td></tr>{{ end -}}
<tr><td colspan="2">
    <details>
        <summary>Key type</summary>
        <table><tbody>
            {{- partial "type" .Keys -}}
            </tbody></table>
    </details>
</td></tr>
<tr><td colspan="2">
    <details>
        <summary>Value type</summary>
        <table><tbody>
            {{- partial "type" .Values -}}
            </tbody></table>
    </details>
</td></tr>
