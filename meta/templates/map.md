---
type: map
description:
tags:
created_at: {{date:YYYY-MM-DD}}
---
## what this map covers

## focus

## details

## notes

```base
filters:
  and:
    - maps.contains(this.file.basename)
views:
  - type: table
    name: mapped notes
    order:
      - file.name
      - description
      - tags
      - created_at
      - file.links
```
