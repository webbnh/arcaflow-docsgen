{{- /*gotype: go.flow.arcalot.io/pluginsdk.schema.Map */ -}}
{{- with .Min }}<li><strong>Minimum items:</strong> {{ . }}</li>{{ end -}}
{{- with .Max }}<li><strong>Maximum items:</strong> {{ . }}</li>{{ end -}}
<li>
    <details>
        <summary>Key type</summary>
        <ul>
            {{- template "type.md.tpl" .Keys -}}
        </ul>
    </details>
</li>
<li>
    <details>
        <summary>Value type</summary>
        <ul>
            {{- template "type.md.tpl" .Values -}}
        </ul>
    </details>
</li>
