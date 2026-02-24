# PROJECT KNOWLEDGE BASE

**Generated:** 2026-02-24
**Commit:** fff44aa
**Branch:** (local config)

## OVERVIEW

Personal Vim configuration with plugin bundle management via Pathogen. Main config in `_vimrc` (445 lines), 31 plugin submodules in `bundle/`.

## STRUCTURE

```
vimconfig/
├── _vimrc              # Main vim config (entry point)
├── autoload/           # Pathogen loader
├── bundle/             # 31 vim plugins (git submodules)
├── colors/             # 14 color schemes
├── compiler/           # Compiler plugins (pylint)
├── doc/                # Documentation
├── plugin/             # Plugin files
├── syntax/             # Syntax files (cpp, django, json, nginx, etc)
├── install.sh          # Setup script
└── update.sh           # Plugin update script
```

## WHERE TO LOOK

| Task | Location | Notes |
|------|----------|-------|
| Edit vim config | `_vimrc` | Main 445-line config |
| Add plugin | `bundle/` | Git submodule-based |
| Add color scheme | `colors/` | 14 schemes available |
| Add syntax file | `syntax/` | Language syntax |
| Compiler settings | `compiler/` | Pylint, etc |

## KEY CONVENTIONS

- **Leader key**: `,` (comma, not `/`)
- **Plugin manager**: Pathogen (via `autoload/pathogen.vim`)
- **Plugin sourcing**: Git submodules in `bundle/`
- **Key mappings**: `<leader>` prefix for user shortcuts

## ANTI-PATTERNS (THIS PROJECT)

- `set noautowriteall` - NEVER auto-write on :next
- Some plugins disabled for Vim < 7.1 (lookupfile, minibufexpl)

## COMMANDS

```bash
# Install/update plugins
./install.sh
./update.sh
```

## NOTES

- No CI/CD workflows (static config repo)
- Plugins managed as git submodules
- Key mappings use `<leader>` = comma
- Custom syntax: nginx, django, json, perforce, cpp
