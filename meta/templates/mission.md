---
type: mission
description:
status: todo
tags:
  - mission
created_at: {{date:YYYY-MM-DD}}
---

## Operations

```base
filters:
  and:
    - tags.contains("operation")
    - file.hasLink(this.file)
views:
  - type: table
    name: Operations
    order:
      - file.name
      - status
      - description
```

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
