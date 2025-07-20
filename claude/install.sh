#!/usr/bin/env bash
#
# Claude configuration setup
# This creates selective symlinks for Claude configuration

DOTFILES_ROOT="$HOME/.dotfiles"

# Ensure ~/.claude directory exists
mkdir -p "$HOME/.claude"

# Symlink CLAUDE.md
if [ -f "$DOTFILES_ROOT/claude/CLAUDE.md" ]; then
  rm -f "$HOME/.claude/CLAUDE.md"
  ln -sf "$DOTFILES_ROOT/claude/CLAUDE.md" "$HOME/.claude/CLAUDE.md"
  echo "✓ Linked CLAUDE.md"
fi

# Ensure commands directory exists and symlink x directory
if [ -d "$DOTFILES_ROOT/claude/.claude/commands/x" ]; then
  mkdir -p "$HOME/.claude/commands"
  rm -rf "$HOME/.claude/commands/x"
  ln -sf "$DOTFILES_ROOT/claude/.claude/commands/x" "$HOME/.claude/commands/x"
  echo "✓ Linked x directory"
fi

echo "Claude configuration setup complete!"