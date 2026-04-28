# [CLAUDE.md](http://CLAUDE.md)

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What This Is

Workspace root for MemoryForge, LLC — an app studio and AI consulting practice. Projects are organized into category directories. This is not a monorepo; each project is independent with its own stack and (usually) its own git repo.

## Directory Structure

```plaintext
~/code/
├── active/           → symlinks to currently active projects
├── apps/             → revenue-generating products
├── claude/           → Claude Code skills, plugins, training
├── services/         → backend services & migration tools
├── sites/            → marketing & company websites
├── data/             → data pipelines & research
├── business/         → ops, finance, vaults, docs
├── ideas/            → per-idea subdirs + inbox captures (see ideas/README.md for counts)
├── ideas-ducktank/   → second ideas repo (Ducktank/ideas remote) — intentional fork
├── dotfiles/         → shell/editor/tmux config (own git repo)
├── docs/             → cross-project session notes & superpowers plans
├── scripts/          → workspace-level utility scripts (non-git)
├── my-video/         → personal video project (own git repo)
├── work-assistant    → symlink → claude/work-assistant
├── markdown-vault    → symlink → business/markdown-vault
├── idea-factory      → symlink → ideas/idea-factory
├── _archive/         → stale/completed projects
└── _scratch/         → temporary working directory
```


## Project Directory

### active/ — Currently Active

| Project | Points To |
| --- | --- |
| `bridges-dashboard` | `active/bridges-dashboard` (local) |
| `claude-secret-sauce` | `claude/claude-secret-sauce` |
| `keyrus-hardware-request` | `active/keyrus-hardware-request` (local) |
| `lawn-care-network` | `ideas/lawn-care-network` |
| `markdown-vault` | `business/markdown-vault` |
| `mica` | `services/mpa` |
| `pm` | `business/pm` |
| `shore-ai` | `sites/shore-ai` |
| `tasks` | `business/tasks` |
| `work-assistant` | `claude/work-assistant` |

### apps/ — Products

| Project | What It Is | Stack |
| --- | --- | --- |
| `albumize/` | Albumize macOS photo manager — Picasa replacement | SwiftUI, SwiftData, macOS 14+ |
| `fishframe/` | FishFrame iOS fishing journal — catches, photos, maps, subscriptions | SwiftUI, Core Data, RevenueCat |
| `fishframe-web/` | FishFrame marketing site | HTML/CSS, Vercel |
| `fishframe-worktrees/` | Git worktrees for fishframe/ (not a separate project) | — |
| `ios-screenshot-maker/` | App Store screenshot generator for multiple devices | SwiftUI, AppKit, macOS 14+ |

### claude/ — Claude Code Ecosystem

| Project | What It Is | Stack |
| --- | --- | --- |
| `work-assistant/` | ADHD-optimized GTD system — processes Teams/Email/Jira via screenshots and transcripts | Claude Code skills, shell scripts |
| `work-assistant-ios/` | iOS companion for work-assistant | SwiftUI |
| `claude-secret-sauce/` | Project orchestration slash commands (planning-interview, orchestrator, autopilot) | Markdown (Claude Code commands) |
| `claude-plugin-pmp/` | PM Protocol plugin — post-mortems, retrospectives, CAB reviews, risk registers | YAML/Markdown (Claude Code skills) |
| `claude-api-training/` | Hands-on Claude API training curriculum | Python, Claude API, SQLite |
| `claude-learning-system/` | Meta-framework for capturing session learnings into CLAUDE.md | Python, Bash |
| `claude-migration-20260710/` | Claude Code config migration tooling | Python, Bash |
| `senior-pm-advisor/` | Claude Code skill for PM advisor role | SKILL.md |

### services/ — Backend Services & Migration

| Project | What It Is | Stack |
| --- | --- | --- |
| `tableau-migration-platform/` | Enterprise Tableau Server→Cloud migration engine with N8N and monitoring | Python, FastAPI, TypeScript, PostgreSQL, Docker, K8s |
| `tableau-migration-factory/` | Migration factory automation | Python |
| `tableau-sanitizer/` | Workbook sanitization — strips credentials from .twb/.twbx | Python 3.12, FastAPI, lxml, K8s, S3 |
| `pii-anonymizer/` | HIPAA/GDPR PII/PHI anonymization for LLM queries | Python, Presidio, FastAPI, SQLite, spaCy |
| `cognos-tableau-rfp-toolkit/` | Cognos-to-Tableau migration proposal toolkit | Markdown |
| `mpa/` | Massport MECA project management | — |

### sites/ — Websites

| Project | What It Is | Stack |
| --- | --- | --- |
| `shore-ai/` | Shore AI consulting website (shoreai.org) | Astro 5, Tailwind 4, TypeScript, Vercel |
| `memoryforge_website/` | MemoryForge company site with product pages, blog, RFP agent | HTML/CSS/JS, Python, Vercel |
| `migration-deploy/` | Migration service landing page | Next.js 16, React 19, TypeScript, Tailwind 4, Vercel |

### data/ — Data & Research

| Project | What It Is | Stack |
| --- | --- | --- |
| `historical-weather-fishing/` | Medallion pipeline building weather DBs from NOAA ISD-Lite | Python, SQLite, pandas |
| `myFishClassifier/` | Fish species image classifier | Apple Create ML |
| `get_tides/` | NOAA tides/water level API client | Python, Pipenv |
| `market-research/` | Competitive intelligence for fishing app market | Markdown, JSON |

### business/ — Operations

| Project | What It Is | Stack |
| --- | --- | --- |
| `pm/` | Project management tooling and data | Python |
| `bizdev/` | Time tracker, planning, legal research, expenses | Python, SQLite |
| `finance/` | Personal finance CLI for debt tracking and payoff optimization | Python, SQLite |
| `esaig-vault/` | Shared Obsidian vault for Shore AI/ESAI group (git-crypt encrypted) | Markdown |
| `markdown-vault/` | Personal Obsidian knowledge vault | Markdown |
| `resumes/` | Resume and cover letter collection | PDF, DOCX, Markdown |
| `tasks/` | ADHD task system with audio parsing and meeting schema | Python, Bash |
| `work/` | Work-related audio transcriptions and data files | M4A, JSON, VTT |
| `docs/` | General documentation | Markdown |
| `backups/` | Backup files | — |
| `camper2026/` | RV loan documents | PDF |
| `youtube/` | Video/audio media assets | MOV, WAV |
| `firefox-extensions/` | FB Marketplace Sorter browser extension | JS |
| `idea-factory/` | Idea scaffolding tools | Python |

### Other

| Project | What It Is |
| --- | --- |
| `ideas/` | Per-idea subdirs + `inbox/` captures; WIP ideas, experiments, planning docs |
| `_archive/` | Archived/stale projects |
| `_scratch/` | Temporary working directory |

## Navigation Tips

- **Start in** `active/` — symlinks to your current hot projects. Manage with `activate()`/`deactivate()`/`lsa` shell functions.
- Most projects have their own `CLAUDE.md` — read it before working in that project.
- `claude/work-assistant/` has the most extensive skill system (16 custom skills, launchd automation).
- `claude/claude-secret-sauce/` commands are installed globally to `~/.claude/commands/` — they work from any project.
- `apps/fishframe-worktrees/` contains git worktrees for `fishframe/`, not a separate project.
- `business/esaig-vault/` uses git-crypt — the key is at `esaig-vault-git-crypt.key` (workspace root).
- Max depth is 2 levels: `category/project`. Never nest deeper.
- ADHD-friendly guide with quick commands and Siri shortcuts: `business/docs/code-reorg-guide.md`.

## Skill & Automation Paths

- **Always use canonical paths** in skills and automation: `~/code/{category}/{project}/` (e.g., `~/code/claude/work-assistant/`).
- **Never use bare project paths** like `~/code/work-assistant/` — macOS will silently create a new directory instead of erroring, causing invisible data fragmentation.
- The `active/` symlinks are for human navigation only — never reference them in skill paths or automation scripts.
- **Auto-memory directory is keyed off cwd at session start.** Sessions started from a symlink path (`~/code/work-assistant/`) write to a *different* memory dir than sessions started from the canonical path (`~/code/claude/work-assistant/`). Memories don't cross over. Always start sessions from the canonical path.
- **Slash command install convention**: prefer symlinks (`ln -s`) over copies when installing commands to `~/.claude/commands/`. Symlinks auto-track upstream changes; copies silently drift. Exception: `claude-secret-sauce/SETUP.md` prescribes copy — document any future exceptions in the package's own SETUP.md.

## ADHD Interaction Patterns

These rules apply to ALL interactions, not just when GTD skills are invoked.

### Output Formatting

- **Scannable over readable.** Use tables, bold key terms, and bullets. Never a wall of prose when a table works.
- **Lead with the answer or action**, not the reasoning. Put "why" after "what."
- **Cap unprompted lists at 5 items.** More than 5 causes paralysis. If there are more, show top 5 and say "N more available."

### Decision Support

- **Always recommend one option.** "I recommend X because Y. Alternatives: A, B." Never present equal-weight options without a recommendation.
- **Effort-tag actionable items.** Use `~2 min`, `~15 min`, `~1 hr`, `~half day` so time-blind planning is possible.
- **Flag quick wins.** Items ≤2 min get ⚡ — they build momentum and reduce activation energy.

### Working Memory

- **Externalize everything.** If a decision is deferred, an item is discovered, or a question is open — offer to capture it (inbox, vault, or task) immediately. Nothing stays in the user's head.
- **On project switch:** Capture open threads from current context before loading the new project.
- **Persist Claude output to the vault.** Plans, audit summaries, analysis, and any substantive output (10+ lines or containing a decision/recommendation) should be saved as markdown in the relevant vault directory (e.g., `business/markdown-vault/{topic}/`). For binary source files (xlsx, pdf, images), don't copy them — include the absolute path as a permalink. Conversation transcripts are ephemeral and unsearchable; vault notes are persistent, Obsidian-linked, and findable later.

### Framing

- **No shame language.** Carried-forward items are normal workflow, not failures. Frame neutrally or positively. (See global Rule 9 for banned phrases.)
- **Lead with wins** when reporting progress. Completions first, then remaining work.

### Guardrails

- **Silent failures are the worst failure mode.** A crash is visible and fixable. A silent data split (items landing in the wrong place) is invisible. Prefer loud errors. Validate paths exist before writing.
- **Scope-limit unsolicited suggestions.** Only offer unsolicited suggestions when they block the current task or pose a silent-failure risk. Cap at 3 items max. Never say "while we're here..." — that's the start of a rabbit hole, not a suggestion.
- **Time-of-day awareness.** Late in the day (after user's EOD wrap or session-close), don't introduce new complex topics.

## Engineering Standards (Global)

- **Every CLI tool must support `--dry-run`.** Parse and validate input, show what would happen, skip writing. If a command doesn't have `--dry-run`, it's not done.
- **All bash operations go through `.sh` scripts (service layer).** No direct Bash tool calls — write the script, run the script. No exceptions for read-only commands. Scripts are the auditable, repeatable interface to the shell.
- **Full SOP:** `ideas/docs/sop-coding-best-practices.md` — CAB-approved, 12 sections, quarterly review.

## Working With This Structure

- Always reference projects by their category path (e.g., `claude/work-assistant`, `apps/fishframe`).
- When user asks to "work on fishframe," navigate to `apps/fishframe/` and read its CLAUDE.md first.
- Do not propose reorganizing this structure — it was designed by SME agents for ADHD, Finder, and Claude Code optimization (Idea #62, 2026-03-15).
  DO NOT LIE or CONFABULATE - if you do not know the answer say so.