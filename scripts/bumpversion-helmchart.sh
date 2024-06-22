#!/bin/bash
set -eux

BUMP="patch"

if [[ -z "${CHART+x}" ]]; then >&2 echo "CHART must be set"; exit 1; fi

VERSION=$(./scripts/semver bump "${BUMP}" "$(yq -e ".version" < ./charts/"${CHART}"/Chart.yaml)")
yq -e -i ".version = \"${VERSION}\"" ./charts/"${CHART}"/Chart.yaml &&\
  echo "VERSION=$VERSION" >> "$GITHUB_ENV"
