package docsgen

import (
    "bytes"
    "embed"
    "html/template"

    "go.flow.arcalot.io/engine"
    "go.flow.arcalot.io/pluginsdk/schema"
)

//go:embed templates/markdown
var markdownTemplates embed.FS

func must(err error) {
    if err != nil {
        panic(err)
    }
}

func must2[T any](value T, err error) T {
    if err != nil {
        panic(err)
    }
    return value
}

func toScope(from schema.Object) schema.Scope {
    return from.(schema.Scope)
}

func RenderTemplates() {
    deployers := engine.DefaultDeployerRegistry.List()

    for deployerID, deployerSchema := range deployers {
        tpl := must2(template.New("").ParseFS(markdownTemplates, "templates/markdown/*.md.tpl", "templates/markdown/partials/*.md.tpl"))
        buf := &bytes.Buffer{}
        tpl = tpl.Funcs(template.FuncMap{
            "toScope": toScope,
        })
        must(tpl.ExecuteTemplate(buf, "deployer.md.tpl", TemplateDeployer{
            deployerSchema,
            deployerID,
        }))
        // fmt.Printf("%s", buf.String())
    }

    tpl := must2(template.New("").ParseFS(markdownTemplates, "templates/markdown/*.md.tpl", "templates/markdown/partials/*.md.tpl"))
    buf := &bytes.Buffer{}
    tpl = tpl.Funcs(template.FuncMap{
        "toScope": toScope,
    })
    must(tpl.ExecuteTemplate(buf, "plugin-protocol.md.tpl", schema.DescribeSchema()))
    // fmt.Printf("%s", buf.String())

    tpl = must2(template.New("").ParseFS(markdownTemplates, "templates/markdown/*.md.tpl", "templates/markdown/partials/*.md.tpl"))
    buf = &bytes.Buffer{}
    tpl = tpl.Funcs(template.FuncMap{
        "toScope": toScope,
    })
    must(tpl.ExecuteTemplate(buf, "schema.md.tpl", schema.DescribeScope()))
    // fmt.Printf("%s", buf.String())
}
