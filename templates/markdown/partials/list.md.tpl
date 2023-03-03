{{- /*gotype: go.flow.arcalot.io/pluginsdk.schema.List */ -}}
{{- with .Min }}<li><strong>Minimum items:</strong> {{ . }}</li>{{ end -}}
{{- with .Max }}<li><strong>Maximum items:</strong> {{ . }}</li>{{ end -}}
<li>
    <details>
        <summary>List items</summary>
        <ul>
            {{- template "type.md.tpl" .Items -}}
        </ul>
    </details>
</li>
