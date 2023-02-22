package docsgen

import "go.flow.arcalot.io/pluginsdk/schema"

type TemplateDeployer struct {
    schema.Object

    DeployerID string
}

type TemplateContext struct {
    Deployers map[string]TemplateDeployer
}
