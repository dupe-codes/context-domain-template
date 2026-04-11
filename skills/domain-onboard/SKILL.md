---
name: domain-onboard
description: "Interactive onboarding for a new context domain vault. Configures CLAUDE.md, creates local directories, registers the domain, and sets up domain-specific skills."
allowed-tools: Read, Write, Edit, Bash, Glob, Grep
---

# Domain Onboarding

You are guiding a user through setting up a new context domain vault. This vault was cloned from the `context-domain-template` repository and contains a skeleton structure with placeholder markers (`{{DOMAIN_NAME}}`, `{{DOMAIN_SLUG}}`, `{{DOMAIN_DESCRIPTION}}`, `{{SKILL_PREFIX}}`, `{{CLAUDE_ROLE}}`).

Your job is to walk the user through an interactive conversation that configures the vault for their specific domain. Be warm, conversational, and helpful — this is their first experience with the domain system.

## Before Starting

1. Confirm the current working directory is the vault root (should contain `CLAUDE.md`, `organization.md`, etc.).
2. Check if onboarding has already been completed by looking for non-placeholder content in `CLAUDE.md`. If the file still has `{{DOMAIN_NAME}}` markers, proceed. If it's already configured, inform the user and ask if they want to re-run.

## Phase 1: Identity

Ask for the following, one at a time. Offer suggestions when useful.

1. **Domain name** — A short display name for the vault (e.g., "The Data Relay", "Atelier", "Workshop"). This appears in titles and headers.
2. **Domain slug** — A URL-safe identifier derived from the name (e.g., `the_data_relay`, `atelier`, `workshop`). Suggest one based on the name; let them override.
3. **Description** — A one-sentence description of what this domain is for. Example: "A shared Obsidian vault — a knowledge base with structured read/write access for both March and Claude via Claude Code."
4. **Claude's role** — What is Claude's role in this domain? Example: "A collaborative knowledge partner who reads reference material for context, writes draft notes and codex entries, tracks work across the mission/operation/project/quest hierarchy, and maintains a running commentary of observations."
5. **Skill prefix** — A short prefix for domain-specific skills (e.g., `relay`, `atelier`). This is used for naming skills like `/relay-record`, `/atelier-practice`. Suggest one based on the slug.

After collecting all identity fields, summarize them and ask for confirmation before proceeding.

## Phase 2: Local Directories

The `local/` directory holds domain-specific content. Ask the user:

> "What kinds of domain-specific content will you store? For example, a software development domain might need `local/docs/` for design documents, `local/snippets/` for code snippets, and `local/codebases/` for repo reference notes. A creative domain might need `local/pieces/` for works-in-progress and `local/references/` for inspiration."

Based on their description, propose a set of `local/` subdirectories with brief descriptions. Let them add, remove, or rename. Then create the directories with `.gitkeep` files.

## Phase 3: CLAUDE.md

Read the current `CLAUDE.md` template and replace all placeholders:

- `{{DOMAIN_NAME}}` → the display name
- `{{DOMAIN_DESCRIPTION}}` → a paragraph describing the vault, Claude's role, and how it's used

If the user described local directories in Phase 2, add write destinations for them in `.claude/rules/writing.md` (under the "Write destinations and templates" section).

Present the generated CLAUDE.md to the user for review. Make adjustments if requested, then write it.

## Phase 4: README.md & organization.md

Generate domain-specific versions of:

- **README.md** — Replace the template README with a vault-specific one. Keep the structure overview but make it specific to this domain. Remove the "Quick Start" template instructions and replace with domain-specific context.
- **organization.md** — Replace `{{DOMAIN_NAME}}` placeholders. If the user created local directories, add their note types to the Local section.

Present each for review, then write.

## Phase 5: Tags

Replace `{{DOMAIN_NAME}}` in `tags.md`. Then ask:

> "What subject areas does this domain cover? I'll set up initial subject tags for organizing your knowledge."

Based on their answer, propose a set of subject tags with descriptions. Write them into the Subject Tags table in `tags.md`.

## Phase 6: Home Dashboard

Update `home.md`:
- Replace `{{DOMAIN_NAME}}` with the display name
- The tracking sections (Missions, Operations, Projects, Quests) are already configured and work out of the box

Present for review, then write.

## Phase 7: Registration

Register the domain in `~/.claude/domains.json`:

```bash
# Read existing domains.json or create it
DOMAINS_FILE="$HOME/.claude/domains.json"
if [ ! -f "$DOMAINS_FILE" ]; then
    echo '{}' > "$DOMAINS_FILE"
fi
```

Add an entry mapping the domain slug to its vault path:

```json
{
  "existing_domain": "/path/to/existing",
  "new_domain_slug": "/path/to/this/vault"
}
```

Also update the Justfile: replace `{{DOMAIN_NAME}}` with the display name.

Ensure git is initialized. If there's no remote, suggest creating one:

```bash
gh repo create <owner>/<repo-name> --public --source=. --push
```

## Phase 8: Seed Content

Ask if the user wants to create initial content:

> "Would you like to create your first mission, operation, or project? This is optional — you can always create them later with `/domain-quest` or by using the templates directly."

If yes, walk them through creating 1-2 tracking notes using the templates.

## Completion

Summarize what was configured:
- Domain identity
- Local directories created
- Files configured
- Tags registered
- Domain registered in `~/.claude/domains.json`

Suggest next steps:
1. Open the vault in Obsidian and install community plugins
2. Run `just install-claude` to symlink skills
3. Start creating missions and projects to track your work
4. Use `/domain-codex` to capture knowledge as you go
