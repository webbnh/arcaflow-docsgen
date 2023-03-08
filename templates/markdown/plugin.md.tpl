{{ range $id, $step := .Steps }}

## {{ with $step.Display }}{{ .Name }} (`{{ $id }}`){{ else }}`{{ $id }}`{{ end }}
{{ with $step.Display }}
{{ .Description }}
{{ end }}
### Input

<table><tbody>
{{ partial "type" $step.Input }}
</tbody></table>

### Outputs

{{ range $outputID, $output := $step.Outputs}}
#### {{ $outputID }}{{ if $output.Error }} (error){{ end }}

<table><tbody>
{{ partial "type" $output.Schema }}
</tbody></table>
{{ end }}
{{ end }}