# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository overview

This is a personal learning/practice repository (`amitgoswami1027/Claudecode`) for exploring Claude Code itself, built around small standalone HTML page projects. There is no build system, package manager, bundler, or test suite anywhere in the repo — each project is a self-contained page: all CSS and JavaScript inlined in one `.html` file, zero external dependencies (no CDN links, no npm packages, no image assets — visuals use CSS gradients/emoji instead of `<img>` files).

Top-level layout:
- `sugar_and_bloom.html` — standalone landing page for a handcrafted-cakes business (hero, product showcase, etc.).
- `PracticeProject/` — has its own `CLAUDE.md`; contains `mindful_paws.html`, a pet-grooming business landing page (hero, interactive multi-step quiz with live price calculation, services grid, gallery, booking form with client-side validation).
- `Build a business frontage - with skills/` — a project built using the Claude Code **frontend-design** skill (installed under `.claude/skills/frontend-design`, symlinked from `.agents/skills/frontend-design`, tracked via `skills-lock.json`). Contains `sugar_and_bloom_v2.html`, a redesign of the cakes landing page done under that skill's design guidance.

When working inside `Build a business frontage - with skills/`, the frontend-design skill auto-loads and should shape any visual/UI work there: it pushes toward one deliberate, subject-specific aesthetic risk per page rather than generic AI-template defaults (warm-cream+serif, near-black+neon-accent, or broadsheet-hairline looks), a two-pass process (plan a color/type/layout/signature token system, critique it against the brief, then build), and a quality floor (responsive, visible focus states, reduced-motion respected).

## Working with this codebase

- **Running/previewing:** no dev server or build step — open the relevant `.html` file directly in a browser.
- **No linting or tests are configured.** Don't introduce a build toolchain, framework, or dependency manager unless explicitly asked — the point of these pages is that they work by double-clicking, with no install step.
- When adding a new page, follow the established pattern: one `.html` file with `<style>` and `<script>` inline, vanilla JS only (no frameworks/libraries), no external asset references.
- Each project subdirectory may carry its own `CLAUDE.md` (e.g. `PracticeProject/CLAUDE.md`) with specifics for that page — check for one before editing files inside it.
