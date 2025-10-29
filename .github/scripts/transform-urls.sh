#!/usr/bin/env bash
# Transform x.com URLs to twitter.com format in tweet files
# This script is used by the GitHub Actions workflow to ensure compatibility
# with the twitter-together action which only supports twitter.com URLs
# This script should ONLY be run on push to main branch, not in pull_request_target

set -e

echo "Starting URL transformation..."

# Find all tweet files and transform x.com URLs to twitter.com
# Use || true to prevent failure when no files are found
find tweets -name "*.tweet" -type f -exec sed -i 's|https://x\.com/|https://twitter.com/|g' {} + || true

# Check if any changes were made
if git diff --quiet; then
  echo "No URL transformations needed"
  exit 0
else
  echo "Transformed x.com URLs to twitter.com"
  
  # Configure git user
  git config user.name "github-actions[bot]"
  git config user.email "github-actions[bot]@users.noreply.github.com"
  
  # Commit and push changes
  git add tweets/
  git commit -m "Auto-transform x.com URLs to twitter.com format [skip ci]"
  git push
  
  echo "Changes committed and pushed"
  exit 0
fi
