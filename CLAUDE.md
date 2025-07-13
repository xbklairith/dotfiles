# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This is a topic-based dotfiles repository that manages macOS development environment configuration. Each tool/application has its own directory (e.g., git/, zsh/, python/) following specific conventions.

## Key Commands

### Setup and Installation
```bash
# Initial setup (creates symlinks, configures git)
./script/bootstrap

# Install all dependencies and run topic installers
./script/install

# Main dotfiles management (updates brew, sets macOS defaults)
./bin/dot-files
```

### Adding New Configurations
- Create a new topic directory for the tool
- Add `*.symlink` files to be linked to $HOME
- Add `*.zsh` files for shell configuration
- Add `install.sh` for topic-specific installation

## Architecture and Conventions

### File Loading Order (Critical)
1. **path.zsh files** - Loaded first to set up PATH
2. **All other .zsh files** - Loaded second
3. **completion.zsh files** - Loaded last after autocomplete initialization

### Special Files by Extension
- `*.symlink` → Symlinked to $HOME without the .symlink extension
- `*.zsh` → Automatically sourced by zsh
- `install.sh` → Run by script/install
- Files in `.config/` → Symlinked to $HOME/.config/

### Environment Variables
- `$DOTFILES_ROOT` and `$ZSH` = `$HOME/.dotfiles`
- `$PROJECTS` = `~/work` (for project navigation)
- Private vars go in `~/.localrc` (not tracked)

### Binary Scripts
Everything in `bin/` is automatically added to PATH. Key utilities:
- `dot-files` - Main management command
- `git-*` - Custom git commands (git-nuke, git-promote, etc.)
- `e` - Editor launcher
- `todo` - Task management

## Working with Topics

### Creating a New Topic
1. Create directory: `mkdir mytool`
2. Add configurations: `mytool/config.symlink`, `mytool/aliases.zsh`
3. Add installer if needed: `mytool/install.sh`

### Modifying Existing Topics
- Shell aliases/functions: Edit `topic/aliases.zsh` or `topic/functions.zsh`
- Config files: Edit `topic/*.symlink` files
- PATH additions: Edit `topic/path.zsh`

## Package Management

Uses Homebrew via `Brewfile`. To add packages:
1. Edit `Brewfile`
2. Run `brew bundle`

## Git Configuration

Git is extensively configured with aliases in `git/gitconfig.symlink`. Custom git commands in `bin/git-*` are available as subcommands (e.g., `git nuke`).

## Testing Changes

After making changes:
1. Run `./script/bootstrap` to update symlinks
2. Reload shell: `source ~/.zshrc`
3. Test specific topic by sourcing its files directly