set windows-powershell := true

# Show this help
@help:
  just --list --list-submodules

# Set up dev environments
install:
  pre-commit install

# Run the pre-commit hooks
hooks:
  pre-commit run --all-files

# Run the tests
test *ARGS:
  pytest {{ARGS}}

generate:
    make src/steamapi/steamapi.py
