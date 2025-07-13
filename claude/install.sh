#!/usr/bin/env bash
#
# Claude configuration setup
# This creates selective symlinks for Claude configuration

DOTFILES_ROOT="$HOME/.dotfiles"

# Ensure ~/.claude directory exists
mkdir -p "$HOME/.claude"

# Symlink CLAUDE.md
if [ -f "$DOTFILES_ROOT/claude/CLAUDE.md" ]; then
  ln -sf "$DOTFILES_ROOT/claude/CLAUDE.md" "$HOME/.claude/CLAUDE.md"
  echo "✓ Linked CLAUDE.md"
fi

# Symlink commands directory
if [ -d "$DOTFILES_ROOT/claude/commands" ]; then
  ln -sf "$DOTFILES_ROOT/claude/commands" "$HOME/.claude/commands"
  echo "✓ Linked commands directory"
fi

echo "Claude configuration setup complete!"