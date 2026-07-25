# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository overview

This is a practice/learning repository (`amitgoswami1027/Claudecode`) for building standalone, single-file HTML pages — no build system, package manager, bundler, or test suite. Each page is a self-contained landing page: all CSS and JavaScript are inlined in one `.html` file, with zero external dependencies (no CDN links, no npm packages, no image files — placeholders are done with CSS gradients/emoji instead of `<img>` assets).

Current file: `mindful_paws.html` — a boutique pet grooming business landing page (hero, interactive multi-step quiz with live price calculation, services grid, gallery, booking form with client-side validation).

## Working with this codebase

- **Running/previewing:** there is no dev server or build step — open the `.html` file directly in a browser to preview it.
- **No linting or tests are configured.** Don't introduce a build toolchain, framework, or dependency manager unless explicitly asked — the point of these files is that they work by double-clicking, with no installation step.
- When adding a new page, follow the established pattern: one `.html` file containing `<style>` and `<script>` inline, vanilla JS only (no frameworks/libraries), and no external asset references.
