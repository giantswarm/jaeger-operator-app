#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

LAST_SYNC_COMMIT=$(git log -n1 --grep '^\[upstream-sync\]' --pretty='format:%h' helm/)
TMPDIR=$(mktemp -d)

UPSTREAM_ZIP_URL=${UPSTREAM_ZIP_URL:-"https://github.com/jaegertracing/helm-charts/archive/master.zip"}
KEEP_TMPDIR=${KEEP_TMPDIR:-''}

clean_on_exit() {
  [[ -z "${KEEP_TMPDIR}" ]] && rm -rf ${TMPDIR}
}

if [ -z "${LAST_SYNC_COMMIT}" ]
then
  echo "Didn't find a commit with [upstream-sync]"
  exit 1
fi

curl -sL -o ${TMPDIR}/master.zip ${UPSTREAM_ZIP_URL}
unzip -d ${TMPDIR}/ ${TMPDIR}/master.zip helm-charts-master/charts/jaeger-operator/*

UPSTREAM_VERSION=$(cat ${TMPDIR}/helm-charts-master/charts/jaeger-operator/Chart.yaml | awk '/^version:/ { print $2 }')

cp -a ${TMPDIR}/helm-charts-master/charts/jaeger-operator/* helm/jaeger-operator-app/

git add helm/jaeger-operator-app/
git commit -m "[upstream-sync] Version ${UPSTREAM_VERSION}"
git rev-list --no-merges --reverse ${LAST_SYNC_COMMIT}..HEAD~1 -- helm/jaeger-operator-app/ | git cherry-pick -X theirs -n --stdin
git commit -m "Cherry picked commits ${LAST_SYNC_COMMIT}..HEAD~1"

trap clean_on_exit EXIT
