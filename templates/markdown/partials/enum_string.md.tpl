{{- /*gotype: go.flow.arcalot.io/pluginsdk.schema.StringEnum */ -}}
<li>
    <details><summary>Values</summary>
        <ul>
            {{- range $value, $display := .ValidValues -}}
                {{- if $display -}}
                    <li><strong><code>{{ $value }}</code>:</strong> {{ $display.Name }}</li>
                {{- else -}}
                    <li><strong><code>{{ $value }}</code></strong></li>
                {{- end -}}
            {{- end -}}
        </ul>
    </details>
</li>
