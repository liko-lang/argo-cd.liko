#!/usr/bin/env bash
#
# helper script to automatically run import commands with
# selected version ($1)
# must match available tag in Argoproj/argo-cd official repository
#
# usage: bash utils/create.sh v3.5.1
set -eu

VERSION=$1

NAMES=(appproject application applicationset)

for name in "${NAMES[@]}"; do
    liko import "https://raw.githubusercontent.com/argoproj/argo-cd/refs/tags/${VERSION}/manifests/crds/${name}-crd.yaml" --name "${name}" --version "${VERSION}"
done
