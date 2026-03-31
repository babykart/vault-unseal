#!/usr/bin/env -S just --justfile

git_bin := require("git")
git_cliff_bin := require("git-cliff")
helm_bin := require("helm")
helm_docs_bin := require("helm-docs")

# Just list recipes
_default:
    @just --list

# Generate the README.md for chart
helm-docs chart:
    {{ helm_docs_bin }} --document-dependency-values --chart-search-root ./charts/{{ chart }}

# Generate the values.schema.json for chart
helm-schema chart:
    {{ helm_bin }} schema --use-helm-docs -f ./charts/{{ chart }}/values.yaml -o ./charts/{{ chart }}/values.schema.json

# Generate the next release with tag
gen-rel tag:
    {{ git_cliff_bin }} --unreleased --tag {{ tag }} -o
    {{ git_bin }} commit -a -s -S -m "chore(release): prepare for {{ tag }}"
    {{ git_bin }} tag -s {{ tag }} -m "{{ tag }}"
