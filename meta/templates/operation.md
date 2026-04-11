---
type: operation
description:
status: todo
missions:
tags:
  - operation
created_at: {{date:YYYY-MM-DD}}
---

## Goals

## Projects

```base
filters:
  and:
    - tags.contains("project")
    - file.hasLink(this.file)
views:
  - type: table
    name: Projects
    order:
      - file.name
      - status
      - description
```

## Quests

```base
filters:
  and:
    - tags.contains("quest")
    - file.hasLink(this.file)
views:
  - type: table
    name: Quests
    order:
      - file.name
      - status
      - description
```

## Notes
