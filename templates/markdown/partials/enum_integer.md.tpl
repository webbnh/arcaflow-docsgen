{{- /*gotype: go.flow.arcalot.io/pluginsdk.schema.IntEnum */ -}}
<li>
    <details><summary>Values</summary>
        <ul>
            {{ range $value, $display := .ValidValues }}
                <li><strong>{{ $value }}:</strong> {{ $display.Name }}</li>
            {{ end }}
        </ul>
    </details>
</li>
