---
type: domain
description: Behavioral rules governing Claude's interactions with the {{DOMAIN_NAME}} vault.
---

# CLAUDE.md

This file governs Claude's behavior when working in this vault. For descriptive context on the vault's purpose and conventions, see [[README]]. For note type definitions and relationships, see [[organization]].

Path-specific rules for writing, linking, and tracking live in `.claude/rules/`. This file contains only universal directives and behavioral conventions.

## What This Is

{{DOMAIN_DESCRIPTION}}

## Rules

- **Do not read or modify anything in `.obsidian/` or `.git/`.** These are managed by Obsidian and Git respectively and must not be touched directly.
- **Use Justfile commands when useful.** The `Justfile` contains infrastructure tasks. Claude may run `just` commands when they're relevant to the current work.
- **Root flat files are read-only unless asked.** The root-level flat files ([[tools]], [[TODO]], [[garden]], [[commentary]]) are for reading context. Do not add or remove entries unless explicitly told to. Exception: [[commentary]] is writable — freely append observations.
- **Respect the organization taxonomy.** Use the correct note type and structure as defined in [[organization]].
- **Always prefer frontmatter over in-body metadata.** When a piece of structured information could live either in YAML frontmatter or as text in the note body, put it in frontmatter. Frontmatter is queryable via Obsidian Bases, survives body rewrites, and separates machine-readable metadata from human-readable prose.

## Interaction Patterns

Two patterns govern how Claude uses domain skills:

- **Do-then-report.** For low-stakes, freely-written entries (commentary, session records), act first, then mention what you wrote in a sentence or two. No approval needed.
- **Propose-then-act.** For entries that should be approved (docs, knowledge notes), identify the opportunity independently, propose it, and only write after agreement. The skill descriptions specify which pattern applies.

## Skill Audit Log

Skill invocations are automatically logged via a PostToolUse hook. No manual logging required.
