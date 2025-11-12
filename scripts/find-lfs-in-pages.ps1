<#
PowerShell helper: find files tracked by Git LFS that live in Pages-served folders
Usage: .\scripts\find-lfs-in-pages.ps1
Exits with code 0 when none found, 1 when any are found (for CI use)
#>
Param(
  [string[]]$PagesDirs = @('dashboard', 'docs')
)

# Get LFS-tracked file paths (name-only is simpler to parse)
try {
  $lfsPaths = git lfs ls-files --name-only 2>&1
  if ($LASTEXITCODE -ne 0) {
    Write-Error "git lfs ls-files failed: $($lfsPaths -join "`n")"
    exit 2
  }
} catch {
  Write-Error "Failed to run git lfs: $_"
  exit 2
}

$matches = @()
foreach ($p in $lfsPaths) {
  $path = $p.Trim()
  if ($path -eq '') { continue }

  # Root-level pages files
  if ($path -match '^(index\.html|README\.md)$') { $matches += $path; continue }

  # Pages directories like dashboard/, dashboard1/, docs/
  foreach ($d in $PagesDirs) {
    if ($path -like "$d/*" -or $path -like "$d*/*") { $matches += $path; break }
  }
}

if ($matches.Count -gt 0) {
  Write-Output "Found LFS-tracked files inside Pages-served paths:" 
  $matches | ForEach-Object { Write-Output " - $_" }
  exit 1
}

Write-Output "No LFS-tracked files found inside Pages-served paths."
exit 0
