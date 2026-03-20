#!/usr/bin/env bash
# Fetch all PostHog playbook articles in parallel.
# Articles are saved to /tmp/posthog-lessons/ with descriptive filenames.
# Idempotent: skips files that already exist.

set -euo pipefail

DEST="/tmp/posthog-lessons"
BASE="https://raw.githubusercontent.com/PostHog/posthog.com/master/contents"

# Parallel arrays (compatible with bash 3.2+ on macOS)
FILENAMES=(
  "pm-role.md"
  "engineeringification.md"
  "getting-advice.md"
  "validating-ideas.md"
  "product-engineer.md"
  "collaboration.md"
  "pricing.md"
  "ai-coding-mistakes.md"
  "finding-a-job.md"
  "vibe-designing.md"
  "shipping.md"
  "communication-mistakes.md"
  "50-product-learnings.md"
)

PATHS=(
  "newsletter/what-does-a-product-manager-do.md"
  "newsletter/engineeringification-of-everything.md"
  "newsletter/how-i-get-good-advice.md"
  "newsletter/validating-product-ideas.md"
  "blog/product-engineer-vs-software-engineer.md"
  "newsletter/collaboration-sucks.md"
  "newsletter/pricing-advice.md"
  "newsletter/ai-coding-mistakes.md"
  "newsletter/finding-a-job-product-engineer.md"
  "newsletter/vibe-designing.md"
  "newsletter/this-is-why-youre-not-shipping.md"
  "newsletter/communication-mistakes.md"
  "newsletter/50-product-learnings.md"
)

if [[ "${1:-}" == "--help" ]]; then
  echo "Usage: fetch-articles.sh"
  echo "Downloads PostHog playbook articles to $DEST"
  echo "Skips articles that have already been downloaded."
  exit 0
fi

mkdir -p "$DEST"

total=${#FILENAMES[@]}
downloaded=0
skipped=0
failed=0
pids=()

for i in $(seq 0 $((total - 1))); do
  filename="${FILENAMES[$i]}"
  path="${PATHS[$i]}"
  dest_file="$DEST/$filename"

  if [[ -s "$dest_file" ]]; then
    echo "SKIP  $filename (already exists)"
    skipped=$((skipped + 1))
    continue
  fi

  (
    if curl -sfL "$BASE/$path" -o "$dest_file" 2>/dev/null; then
      echo "OK    $filename"
    else
      rm -f "$dest_file"
      echo "FAIL  $filename"
      exit 1
    fi
  ) &
  pids+=($!)
done

for pid in ${pids[@]+"${pids[@]}"}; do
  if wait "$pid"; then
    downloaded=$((downloaded + 1))
  else
    failed=$((failed + 1))
  fi
done

echo ""
echo "Done: $downloaded downloaded, $skipped skipped, $failed failed ($((downloaded + skipped)) of $total available)"

if [[ $failed -gt 0 ]]; then
  exit 1
fi
