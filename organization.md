---
type: meta
description: Note type definitions, hierarchy, and zet workflow for the {{DOMAIN_NAME}} vault.
---

# Organization

Note types in the {{DOMAIN_NAME}} vault, and how they relate to each other.

## Type Hierarchy

The work-tracking types form a hierarchy from broad to narrow:

```
mission > operation > project > quest
```

- A **mission** decomposes into one or more **operations**.
- An **operation** decomposes into one or more **projects**.
- A **project** decomposes into **quests**.

**TODOs** are independent small tasks — typically administrative — tracked in [[TODO]]. They sit outside the work hierarchy.

The knowledge types (**codex**, **map**) and standalone types (**garden**) also sit outside this hierarchy. They can link to any level of the work hierarchy but don't nest within it.

## Vault Structure

The vault organizes content into three categories:

### Chassis (`chassis/`)

Content common to all context domain vaults. Split into sub-groups:

**Tracking** (`chassis/tracking/`) — Work hierarchy types. Each entry is its own note with frontmatter metadata (`type`, `status`, `description`, parent links).

- **mission** — Your most important pursuits. Limit to 2-3. Lives in `chassis/tracking/missions/`.
- **operation** — A medium-to-long-term running effort, progressing forward on a mission. Named as "Operation X - Y" where X is a codename and Y is a descriptive subtitle. Lives in `chassis/tracking/operations/`.
- **project** — Concrete work on the path towards achieving a mission or operation. Outputs a tangible deliverable. Limit to 3 in-progress at any given time. Named as "Project X - Y" where X is a codename and Y is a descriptive subtitle. Lives in `chassis/tracking/projects/`.
- **quest** — A short-term task with a clear end goal. May belong directly under a project. Has a `quest_type` field classifying it as one of: `feature`, `bug`, `improvement`, `chore`, `research`. Lives in `chassis/tracking/quests/`.

**Knowledge** (`chassis/knowledge/`) — Knowledge pipeline types. Each entry is its own note.

- **codex** — Knowledge and study notes on concepts that exist independent of any specific project. The heuristic: could you hand this note to a stranger and have it be useful? If yes, it's a codex entry. Lives in `chassis/knowledge/codex/`.
- **note** — Notes grounded in personal experience — decisions made, lessons learned, systems built. Lives in `chassis/knowledge/notes/`.
- **map** — Core concept notes that bundle related drafts and evergreens into an entry point for exploring a topic. Lives in `chassis/knowledge/maps/`.

### Local (`local/`)

Domain-specific content unique to this vault. Subdirectories are created during onboarding based on the domain's needs.

### Root Flat Files

Bounded, append-only types that work well as single files at the vault root. These sit outside the work hierarchy.

- **TODO** — Small, independent tasks. See [[TODO]].
- **garden** — Half-baked, ephemeral ideas not yet formed enough to warrant their own note. See [[garden]].
- **commentary** — Claude's running log of thoughts, opinions, and ideas. See [[commentary]].
- **tools** — Digital and physical tools in use. See [[tools]].

### Periodics (`periodics/`)

Recurring and time-based content.

- **daily-session** — Daily session log. One note per day, accumulating session summaries. Lives in `periodics/dailies/`.

### Infrastructure

- **`meta/`** — Vault infrastructure: `meta/templates/`, `meta/outputs/`.
- **`bases/`** — Obsidian Base views for querying vault data.
- **`skills/`** — Domain-specific skills.
- **`logs/`** — Audit logs.

## Zet Workflow

Notes flow through stages of maturity:

- `chassis/knowledge/inbox/` — Holds draft notes. The staging area for new content.
- `chassis/knowledge/notes/` — Holds reviewed notes. The default destination for approved inbox drafts.
- `chassis/knowledge/evergreens/` — Holds notes that have been validated through practice and promoted. An evergreen is not just a polished draft — it represents settled understanding.
- `chassis/knowledge/maps/` — Core concept notes that bundle related drafts and evergreens into an entry point for exploring a topic.
