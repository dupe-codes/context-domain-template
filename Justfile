# {{DOMAIN_NAME}} task runner

[private]
default:
    @just --list --unsorted

# ── Setup ──────────────────────────────────────────────────────────────────────

# Symlink all domain skills to ~/.claude/skills/ for global access
install-claude:
    mkdir -p ~/.claude/skills
    @for skill in ./skills/*/; do \
        name=$(basename "$skill"); \
        if [ -L ~/.claude/skills/"$name" ]; then \
            echo "  skip: skill $name (already linked)"; \
        else \
            ln -s "$(realpath "$skill")" ~/.claude/skills/"$name"; \
            echo "  link: skill $name"; \
        fi; \
    done

# Remove all domain skill symlinks from ~/.claude/skills/
uninstall-claude:
    @for skill in ./skills/*/; do \
        name=$(basename "$skill"); \
        if [ -L ~/.claude/skills/"$name" ]; then \
            rm ~/.claude/skills/"$name"; \
            echo "  unlink: skill $name"; \
        fi; \
    done

# List currently linked domain skills
list-claude:
    @echo "Linked domain skills:"
    @for skill in ./skills/*/; do \
        name=$(basename "$skill"); \
        if [ -L ~/.claude/skills/"$name" ]; then \
            echo "  ✓ $name"; \
        else \
            echo "  ✗ $name (not linked)"; \
        fi; \
    done

# ── Utilities ──────────────────────────────────────────────────────────────────

# Commit all changes with a timestamp message and push to remote
commit:
    @git add -A && git commit --allow-empty -m "vault state · $(date '+%Y-%m-%d %H:%M:%S')" && git push
