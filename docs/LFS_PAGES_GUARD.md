LFS + GitHub Pages guard
=========================

What this does
---------------

- Adds a CI check (.github/workflows/check-lfs.yml) that runs on push and PRs. It executes the script `scripts/find-lfs-in-pages.ps1` and fails the run if any Git LFS-tracked files are found inside Pages-served folders (like `dashboard*/` or `docs/`).
- Provides a sample pre-commit hook `scripts/pre-commit-sample.ps1` you can copy to `.git/hooks/pre-commit` to block accidental commits of LFS-tracked files into the repository paths that Pages serves.

Why
---

GitHub Pages can end up serving LFS pointer files (plain text) instead of binary assets when the served commit references LFS-tracked files. That breaks images and other media in the published site.

This guard detects LFS-tracked files inside common Pages folders and prevents them from being merged.

How to use
----------

1. CI: the workflow runs automatically on pushes and PRs. No action is required.

2. Local pre-commit (recommended):
   - Copy `scripts/pre-commit-sample.ps1` to `.git/hooks/pre-commit` (remove the .ps1 extension) and ensure it is executable.
   - Alternatively, integrate the logic into your pre-commit framework.

3. Troubleshooting:
   - If the check flags files that should not be LFS-tracked, move large binaries into `/media/` (which is LFS-tracked) or remove them from LFS if they are small page assets.
   - To remove a file from LFS (history safe handling required), follow your repo's LFS migration plan. Seek review before force-pushing rewritten history.

Notes
-----

This is a minimal safety net. It detects LFS-tracked paths but does not automatically rewrite history or convert files. For repo-wide remediation (converting existing LFS pointers in Pages paths to git blobs) use a cautious, documented migration and coordinate with maintainers.
