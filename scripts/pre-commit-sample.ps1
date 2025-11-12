<#
Sample pre-commit hook (PowerShell) to prevent committing LFS-tracked files into Pages paths.
To use:
  Copy this file to .git/hooks/pre-commit (no extension) and make it executable.
  Or reference it from your chosen pre-commit framework.

This script will run the same detection logic as the CI check and abort the commit
when offending files are staged.
#>

# Ensure git lfs is available
try { git --version > $null } catch { Write-Error "git not found"; exit 2 }

# Get staged files
$staged = git diff --cached --name-only
if ($null -eq $staged -or $staged.Count -eq 0) { exit 0 }

# Check whether any staged path is LFS-tracked and in Pages paths
$lfsNames = git lfs ls-files --name-only

foreach ($s in $staged) {
  $s = $s.Trim()
  if ($s -eq '') { continue }
  foreach ($l in $lfsNames) {
    if ($l -eq $s) {
      Write-Host "Commit blocked: '$s' is tracked by Git LFS and may be served as a pointer by GitHub Pages."
      Write-Host "Move large media to /media or remove from LFS for small Page assets."
      exit 1
    }
  }
}

exit 0
