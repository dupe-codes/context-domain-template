---
tags:
  - meta
---
# {{DOMAIN_NAME}}

```table-of-contents
```

---

## Tracking

### Missions

```base
filters:
  and:
    - tags.contains("mission")
    - file.folder != "meta/templates"
views:
  - type: table
    name: Missions
    order:
      - file.name
      - status
      - description
    sort:
      - property: status
        direction: ASC
```

### Active Operations

```base
filters:
  and:
    - tags.contains("operation")
    - file.folder != "meta/templates"
    - status == "in-progress"
views:
  - type: table
    name: Operations
    order:
      - file.name
      - description
    sort:
      - property: file.name
        direction: ASC
```

### Active Projects

```base
filters:
  and:
    - tags.contains("project")
    - file.folder != "meta/templates"
    - status == "in-progress"
views:
  - type: table
    name: Projects
    order:
      - file.name
      - status
      - description
    sort:
      - property: file.name
        direction: ASC
```

### Open Quests

```base
filters:
  and:
    - tags.contains("quest")
    - file.folder != "meta/templates"
    - status != "done"
    - status != "dropped"
    - status != "completed"
    - status != "todo"
views:
  - type: table
    name: Quests
    order:
      - file.name
      - status
      - description
      - project
    sort:
      - property: status
        direction: ASC
```

---

## Quick Links

| | |
|---|---|
| [[TODO]] | [[garden]] |
| [[commentary]] | [[tools]] |
| [[tags]] | [[organization]] |
