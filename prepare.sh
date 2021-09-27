#!/bin/bash
if [ -z ${1+x} ]; then
    echo "No version pass as an argument, stopping the release process"
    exit 1
fi

echo "Updating pom.xml version to ${1}"
./mvnw versions:set -DgenerateBackupPoms=false -DnewVersion=${1}