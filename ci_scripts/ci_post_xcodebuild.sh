#!/bin/sh

set -ex

if [[ -f "/Volumes/workspace/ci/development-exportoptions.plist" ]]; then
    echo ""
    cat "/Volumes/workspace/ci/development-exportoptions.plist"
fi

if [[ -f "/Volumes/workspace/ci/ad-hoc-exportoptions.plist" ]]; then
    echo ""
    cat "/Volumes/workspace/ci/ad-hoc-exportoptions.plist"
fi

if [[ -f "/Volumes/workspace/ci/app-store-exportoptions.plist" ]]; then
    echo ""
    cat "/Volumes/workspace/ci/app-store-exportoptions.plist"
fi

exit 0