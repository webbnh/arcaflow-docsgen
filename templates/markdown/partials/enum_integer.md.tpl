{{- /*gotype: go.flow.arcalot.io/pluginsdk.schema.IntEnum */ -}}
<tr><td colspan="2">
    <details><summary>Values</summary>
        <ul>
            {{ range $value, $display := .ValidValues }}
                <li><strong>{{ $value }}:</strong> {{ $display.Name }}</li>
            {{ end }}
        </ul>
    </details>
    </td>
</tr>