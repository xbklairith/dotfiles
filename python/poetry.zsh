export PATH="$HOME/.poetry/bin:$PATH"

togglePoetryShell() {
  # deactivate shell if Pipfile doesn't exist and not in a subdir
  
  if [[ ! -a "$PWD/poetry.lock" ]]; then
    if [[ "$POETRY_SHELL_ACTIVE" == 1 ]]; then
      if [[ "$PWD" != "$poetry_dir"* ]]; then
        echo "EXIT"
        unset POETRY_ACTIVE
        unset POETRY_SHELL_ACTIVE
        $1
      fi
    fi
  fi

  # activate the shell if Pipfile exists
  if [[ "$POETRY_SHELL_ACTIVE" != 1 ]]; then
    if [[ -a "$PWD/poetry.lock" ]]; then
      export POETRY_SHELL_ACTIVE=1
      export poetry_dir="$PWD"
      poetry shell
    fi
  fi
}

# chpwd_functions+=(togglePoetryShell)

# togglePoetryShell
