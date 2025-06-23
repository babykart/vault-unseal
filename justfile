#!/usr/bin/env -S just --justfile

git_bin := require("git")
git_cliff_bin := require("git-cliff")
helm_docs_bin := require("helm-docs")

# Just list recipes
_default:
    @just --list

# Generate the README.md for chart
helm-docs chart:
    {{ helm_docs_bin }} --document-dependency-values --chart-search-root ./charts/{{ chart }}

# Generate the next release with tag
gen-rel tag:
    {{ git_cliff_bin }} --unreleased --tag {{ tag }} -o
    {{ git_bin }} commit -a -s -S -m "chore(release): prepare for {{ tag }}"
    {{ git_bin }} tag -s {{ tag }} -m "{{ tag }}"
