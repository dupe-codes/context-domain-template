---
type: meta
description: Notes written today, displayed as cards.
---

# Today

```base
filters:
  and:
    - created_at == date(now()).format("YYYY-MM-DD")
    - file.folder != "meta/templates"
views:
  - type: cards
    name: Today's notes
    order:
      - file.name
      - description
      - tags
    sort:
      - property: created_at
        direction: DESC

```
