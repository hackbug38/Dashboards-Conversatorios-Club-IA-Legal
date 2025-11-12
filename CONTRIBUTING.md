Contributing
============

This repository uses Git LFS for large design/source media but keeps page-facing image assets as normal git blobs so GitHub Pages serves binary files (not LFS pointers). Please follow the guidelines below when adding or updating assets.

1) When to use Git LFS
----------------------
- Use Git LFS for large source files and media that are not directly served by GitHub Pages (examples: raw design files, large videos). Typical patterns in this repo:
  - `media/**` (large media files)
  - `assets/large/**`
  - `*.xcf`, `*.psd`, `*.mp4`

2) Page-facing images (png/jpg) — keep as normal blobs
------------------------------------------------------
- Small raster images used by pages (for example any file under `dashboard*/`, `docs/`, or root files like `index.html`) MUST NOT be tracked by Git LFS. GitHub Pages may serve the LFS pointer file instead of the binary, causing broken images on the site.
- Preferred locations:
  - Small images used in dashboards: keep them under `dashboard*/` as normal git blobs.
  - Very large images or media that belong in LFS: place them under `media/` and track those with LFS.

3) How to add an image
-----------------------
1. Decide whether the file is "page-facing" (small image shown on the site) or a large media/source file.
2. If page-facing: add the file normally (git add -> commit -> push). Do NOT run `git lfs track "*.png"` globally.
3. If large media: add the file under `media/` and run `git lfs track "media/**"` if needed (or follow the repo's LFS rules).

4) Pre-commit and CI guards
---------------------------
- The repository includes a guard script (`scripts/find-lfs-in-pages.ps1`) and a CI workflow (.github/workflows/check-lfs.yml) that will fail PRs if any LFS-tracked files are found in Pages-served paths (`dashboard*/`, `docs/`, or root page files).
- Locally we provide a sample pre-commit hook (`scripts/pre-commit-sample.ps1`) — copy it to `.git/hooks/pre-commit` or integrate into your preferred pre-commit framework.

5) Removing a file from LFS (history rewrite)
---------------------------------------------
- Removing a file from LFS requires rewriting history (git lfs migrate or BFG). This is disruptive and requires coordination:
  1. Open an issue or PR describing the migration plan.
  2. Take a backup branch (we follow the policy: create `backup-before-lfs-YYYYMMDD`).
  3. Perform the migration and upload LFS objects as required.
  4. Force-push the rewritten branches only after maintainers approve. Note: protected branches may block force-pushes.
  5. Notify contributors to reclone or run the recommended steps after the migration.

6) Quick troubleshooting
------------------------
- If an image renders as text on the published Pages site, it is likely an LFS pointer. To check locally:
  - Run `git lfs ls-files --name-only | findstr /R "^index\.html$ ^README\.md$ ^dashboard ^docs"` to list any LFS-tracked files in page paths.
  - Or run `pwsh .\scripts\find-lfs-in-pages.ps1` (Windows PowerShell) to get a readable report.

7) Contacts and approvals
-------------------------
- Major changes to LFS configuration or history rewriting require explicit approval from repo maintainers. Open an issue or a draft PR and tag the maintainers using `@` mentions.

Thank you for keeping the site healthy — small images in Pages paths should remain normal git blobs so our published site stays reliable.
