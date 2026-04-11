# Context Domain Template

A template repository for scaffolding new **context domain vaults** — structured Obsidian vaults with Claude Code integration for shared knowledge management.

## What Is a Context Domain?

A context domain is an Obsidian vault organized around a specific area of your life or work. Each domain has:

- **Chassis** — A standardized structure for tracking work (missions → operations → projects → quests) and managing knowledge (codex → notes → evergreens → maps).
- **Local** — Domain-specific content unique to that vault (custom note types, artifacts, resources).
- **Skills** — Claude Code skills tailored to the domain's workflows.

Multiple domains can coexist on a single machine, each registered in `~/.claude/domains.json` for easy discovery.

## Quick Start

### 1. Clone the template

```bash
# Clone into a new vault directory
git clone https://github.com/dupe-codes/context-domain-template.git my-domain-vault
cd my-domain-vault

# Remove the template's git history and start fresh
rm -rf .git
git init
```

### 2. Run the onboarding skill

```bash
# Install the onboarding skill
just install-claude

# Start Claude Code and run the onboarding
claude
# Then type: /domain-onboard
```

The onboarding skill will interactively guide you through:

1. **Identity** — Name your domain, describe its purpose, define Claude's role
2. **Local directories** — Set up domain-specific content directories
3. **Configuration** — Generate CLAUDE.md, README.md, and organization.md
4. **Tags** — Define subject tags for your domain
5. **Home dashboard** — Configure your Obsidian home page
6. **Registration** — Register the domain in `~/.claude/domains.json`
7. **Seed content** — Optionally create your first mission or operation

### 3. Open in Obsidian

Open the vault directory in Obsidian. Community plugins listed in `.obsidian/community-plugins.json` will need to be installed on first open.

## Structure

```
your-domain/
├── .claude/              # Claude Code configuration
│   ├── rules/            # Path-scoped behavioral rules
│   └── settings.local.json
├── .obsidian/            # Obsidian configuration
├── bases/                # Obsidian Base views for querying
├── chassis/              # Standardized shared structure
│   ├── knowledge/        # Knowledge pipeline
│   │   ├── codex/        # Concept-level knowledge
│   │   ├── evergreens/   # Validated, settled understanding
│   │   ├── inbox/        # Draft notes (staging)
│   │   ├── maps/         # Topic entry points
│   │   └── notes/        # Reviewed personal experience notes
│   ├── planning/         # Planning documents
│   └── tracking/         # Work hierarchy
│       ├── missions/     # Broad pursuits (2-3 max)
│       ├── operations/   # Medium-term efforts
│       ├── projects/     # Concrete deliverables
│       └── quests/       # Short-term tasks
├── local/                # Domain-specific content
├── logs/                 # Audit logs
├── meta/                 # Vault infrastructure
│   ├── outputs/          # Generated artifacts
│   └── templates/        # Note templates
├── periodics/            # Time-based content
│   └── dailies/          # Daily session notes
├── skills/               # Domain-specific Claude skills
├── CLAUDE.md             # Claude behavioral rules
├── commentary.md         # Claude's running log
├── garden.md             # Half-baked ideas
├── home.md               # Obsidian dashboard
├── Justfile              # Task runner
├── organization.md       # Note type taxonomy
├── tags.md               # Tag registry
├── TODO.md               # Small tasks
└── tools.md              # Tool inventory
```

## Chassis Skills

The template includes chassis skills that work with any domain vault:

- `/domain-onboard` — Interactive onboarding for a new domain vault (included in this template)

Additional chassis skills (installed separately from your dotfiles) include:
- `/domain-context` — Orient on current missions, projects, operations, and quests
- `/domain-lookup` — Search the vault for notes on a topic
- `/domain-comment` — Add to commentary
- `/domain-codex` — Write a codex entry
- `/domain-quest` — Create or update a quest
- `/domain-tracker` — Show work tracking status

## Templates

All note types have templates in `meta/templates/`. Obsidian is configured to use this folder for its template picker. Templates include:

| Template | Type | Purpose |
|----------|------|---------|
| `codex.md` | codex | Concept-level knowledge notes |
| `draft.md` | draft | Staging area draft notes |
| `evergreen.md` | evergreen | Validated knowledge |
| `map.md` | map | Topic entry points |
| `mission.md` | mission | Broad pursuits |
| `operation.md` | operation | Medium-term efforts |
| `project.md` | project | Concrete deliverables |
| `quest.md` | quest | Short-term tasks |
| `daily-session.md` | daily-session | Daily session logs |
| `doc.md` | doc | Design documents |

## Placeholder Markers

Files that need domain-specific content use placeholder markers:

- `{{DOMAIN_NAME}}` — The vault/domain display name
- `{{DOMAIN_SLUG}}` — URL-safe domain identifier
- `{{DOMAIN_DESCRIPTION}}` — One-paragraph description of the domain
- `{{SKILL_PREFIX}}` — Prefix for domain-specific skills (e.g., `relay`, `atelier`)
- `{{CLAUDE_ROLE}}` — Description of Claude's role in this domain

The onboarding skill (`/domain-onboard`) replaces these interactively.

## Requirements

- [Obsidian](https://obsidian.md/) — For viewing and editing the vault
- [Claude Code](https://docs.anthropic.com/en/docs/claude-code) — For AI-assisted knowledge management
- [just](https://github.com/casey/just) — For running task recipes

## License

This template is provided as-is for personal use.
