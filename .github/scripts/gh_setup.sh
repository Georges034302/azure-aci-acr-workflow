#!/bin/bash

# --- Config ---
HOSTNAME="github.com"

# --- Set GH_TOKEN as a Codespaces user-level secret ---
echo "🔐 Setting GH_TOKEN as a GitHub Codespaces secret..."
gh secret set GH_TOKEN --user --body "$GH_TOKEN"

# --- Authenticate GitHub CLI with the same token (overrides temporary GH_TOKEN for storage) ---
echo "🔐 Logging into GitHub CLI with this token..."
unset GH_TOKEN  # Temporarily remove it so gh will store credentials
echo "$GH_TOKEN" | gh auth login --hostname "$HOSTNAME" --with-token

# --- Verify login ---
echo ""
gh auth status

echo "✅ GH_TOKEN set and GitHub CLI authenticated successfully."
