---
paths:
  - "chassis/tracking/**"
---

# Tracking Rules

- **Tracking notes are individual files.** Missions, operations, projects, and quests each live as individual notes in `chassis/tracking/` subdirectories. They are queryable via Obsidian Bases in `bases/`. Link to them directly: `[[Project Example - descriptive subtitle|Project Example]]`. Do not modify tracking notes unless explicitly asked or via `/domain-quest` for quest updates.
- **Use inline bases for cross-reference lists.** Tracking notes use embedded ```` ```base ```` code blocks to auto-generate their child/related note lists via `file.hasLink(this.file)`. Never manually maintain bullet lists of cross-references — the inline bases keep them current automatically. When writing a knowledge note that relates to a tracking entry, add a wikilink to that entry in the note body or frontmatter; the target note inline base will pick it up.
- **Quests have a quest_type field.** Valid values: `feature`, `bug`, `improvement`, `chore`, `research`. This classifies the nature of the work.
