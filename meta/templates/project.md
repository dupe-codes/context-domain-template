---
type: project
description:
status: todo
mission:
operations:
tags:
  - project
created_at: {{date:YYYY-MM-DD}}
---

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
    sort:
      - property: status
        direction: ASC
```

## Related notes

```base
filters:
  and:
    - file.hasLink(this.file)
    - file.folder != "chassis/tracking"
    - not:
      - tags.contains("quest")
views:
  - type: table
    name: Related
    order:
      - file.name
      - type
      - description
```
