// Package main
package main

import (
	"bytes"
	"flag"
	"log"
	"os"

	"go.flow.arcalot.io/docsgen"
	"go.flow.arcalot.io/pluginsdk/schema"
	"gopkg.in/yaml.v3"
)

func main() {
	markdownFile := "README.md"
	pluginSchemaFile := "schema.yaml"
	flag.StringVar(&markdownFile, "markdown", markdownFile, "Markdown file to update")
	flag.StringVar(&pluginSchemaFile, "schema", pluginSchemaFile, "Plugin schema file to load")
	flag.Parse()

	markdown, err := os.ReadFile(markdownFile)
	if err != nil {
		log.Fatalf("Failed to read markdown file %s (%v)", markdownFile, err)
	}
	pluginSchemaData, err := os.ReadFile(pluginSchemaFile)
	if err != nil {
		log.Fatalf("Failed to read plugin schema file %s (%v)", pluginSchemaFile, err)
	}
	decoder := yaml.NewDecoder(bytes.NewBuffer(pluginSchemaData))
	var pluginSchemaSerialized any
	if err := decoder.Decode(&pluginSchemaSerialized); err != nil {
		log.Fatalf("Failed to decode plugin schema file %s (%v)", pluginSchemaFile, err)
	}

	pluginSchema, err := schema.UnserializeSchema(pluginSchemaSerialized)
	if err != nil {
		log.Fatalf("Failed to unserialize plugin schema file %s (%v)", pluginSchemaFile, err)
	}

	updatedMarkdownFile, err := docsgen.Generate(markdown, pluginSchema)
	if err != nil {
		log.Fatalf("Failed to generate updated documentation (%v)", err)
	}

	if err := os.WriteFile(markdownFile+"_", updatedMarkdownFile, 0644); err != nil { //nolint:gosec
		log.Fatalf("Failed to write temporary file (%v)", err)
	}
	if err := os.Rename(markdownFile+"_", markdownFile); err != nil {
		log.Fatalf("Failed to rename markdown file (%v)", err)
	}
	log.Printf("Update complete.")
}
