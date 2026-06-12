#!/bin/sh
# Build an iSAQB curriculum via the prebuilt builder image. Renders into ./build.
#   ./curriculum-build.sh              # all languages x formats
#   ./curriculum-build.sh pdf DE       # single format + language
#   ./curriculum-build.sh pdf DE REMARKS
set -eu

IMAGE="ghcr.io/isaqb-org/curriculum-builder:local"
#DIGEST="sha256:b64f592fb8d4323e8059a9812c3a36f4212c5df3566cbba1f88f7743eda03d5e"

REPO_ROOT=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)

ref="$IMAGE"
#[ -n "$DIGEST" ] && ref="${IMAGE}@${DIGEST}"

CURRICULUM_FILE=""; LANGUAGES=""; SUFFIX_TAGS=""; PREPRESS=""
if [ -f "$REPO_ROOT/build.config" ]; then
  # shellcheck disable=SC1091
  . "$REPO_ROOT/build.config"
fi

case "$ref" in
    *:local) : ;;                        # local build, skip pull
    *) docker pull "$ref" >/dev/null ;;  
esac

docker run --rm \
  -u "$(id -u):$(id -g)" \
  -v "$REPO_ROOT:/project" \
  -w /project \
  -e "CURRICULUM_FILE=${CURRICULUM_FILE:-}" \
  -e "LANGUAGES=${LANGUAGES:-}" \
  -e "SUFFIX_TAGS=${SUFFIX_TAGS:-}" \
  -e "PREPRESS=${PREPRESS:-}" \
  -e "RELEASE_VERSION=${RELEASE_VERSION:-LocalBuild}" \
  "$ref" "$@"

echo "Done. Output in $REPO_ROOT/build/"
