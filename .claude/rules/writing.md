---
paths:
  - "chassis/knowledge/**"
  - "local/**"
  - "periodics/**"
  - "commentary.md"
  - "garden.md"
---

# Writing & Linking Rules

## Write destinations and templates

- `chassis/knowledge/inbox/` — General draft notes. Use the `meta/templates/draft.md` template.
- `chassis/knowledge/codex/` — Knowledge notes on concepts that exist independent of any specific project. The heuristic: could you hand this note to a stranger and have it be useful? If yes, it belongs in codex. If it is grounded in personal experience, it belongs in inbox as a draft note instead. Use the `meta/templates/codex.md` template.
- [[commentary]] — Claude running log. This is your space — freely add anything you find useful: patterns noticed, opinions on technical decisions, suggestions for next steps, connections between ideas, questions worth revisiting. Append dated entries to the appropriate section (Observations, Opinions, or Ideas). No template, no approval needed.
- `periodics/dailies/` — Daily session notes. Do-then-report, no approval needed.
- Do not write directly to `chassis/knowledge/evergreens/`, `chassis/knowledge/notes/`, `chassis/knowledge/maps/`, or `meta/outputs/` — those are owner-promoted or owner-created.

## Tagging

- **Tag all new notes with `inbox`.** Every note Claude writes must include the `inbox` tag so it surfaces in the review queue. The owner removes the tag after review.
- Type and workflow tags (`codex`, `inbox`, etc.) are implicit from the templates. Subject tags describe what a note is *about*. The canonical list of approved subject tags lives in [[tags]]. When tagging a note:
  - Use any tag already listed in [[tags]] freely.
  - To introduce a new subject tag, ask for approval first. If approved, add the tag to [[tags]] with a description before using it.

## Linking

- **Use `[[wikilinks]]` for notes, backtick code spans for directories.** References to notes use wikilinks: [[README]], [[organization]]. References to directories use backtick code spans: `chassis/knowledge/codex/`, `local/`, etc. Directories are not notes and should not be wikilinked.
- **Cross-link notes.** When a note relates to a tracking entry (mission, operation, project, quest), link to it directly.
- **Always use wikilinks for `project:` fields.** The `project:` frontmatter field must be a wikilink to a project note. Never use bare strings.

## Formatting

- **Use Mermaid diagrams when applicable.** When a note describes a flow, lifecycle, hierarchy, or system with relationships, include a Mermaid diagram. Use `<br>` for line breaks inside node labels.
- **Cite sources.** Include links to references wherever possible. A note without sources is a claim without evidence.
- **Lowercase and snake_case for metadata.** All metadata fields use lowercase or snake_case.
