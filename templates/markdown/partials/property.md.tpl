{{- with .Display -}}
    {{- with .Name -}}
    <li><strong>Name: </strong> {{ . }}</li>
    {{- end -}}
    {{- with .Description -}}
        <li><strong>Description: </strong> {{ . }}</li>
    {{- end -}}
{{- end -}}
{{- with .Required }}<li><strong>Required</strong></li>{{ end -}}
{{- with .Default }}<li><strong>Default (JSON encoded)</strong>: {{ . }}</li>{{ end -}}
{{- with .RequiredIf }}<li><strong>Required if the following fields are set:</strong>
{{- $first := true -}}
{{- range . -}}
    {{- if $first -}}
        {{- $first = false -}}
    {{- else -}}, {{ end -}}
    {{ . -}}
{{- end }}</li>{{ end -}}
{{- with .RequiredIfNot }}<li><strong>Required if the following fields are not set:</strong>
{{- $first := true -}}
{{- range . -}}
    {{- if $first -}}
        {{- $first = false -}}
    {{- else -}}, {{ end -}}
    {{ . -}}
{{- end }}</li>{{ end -}}
{{- with .Conflicts }}<li><strong>Conflicts the following fields:</strong>
{{- $first := true -}}
{{- range . -}}
    {{- if $first -}}
        {{- $first = false -}}
    {{- else -}}, {{ end -}}
    {{ . -}}
{{- end }}</li>{{ end -}}
{{- with .Examples }}<li><strong>Examples (JSON encoded):</strong>
    <ul>
        {{ range . }}<li><code>{{ . }}</code></li>{{ end }}
    </ul>
</li>{{ end -}}