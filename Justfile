set windows-powershell := true

# Show this help
@help:
  just --list --list-submodules

generate:
    make src/steamapi/steamapi.py