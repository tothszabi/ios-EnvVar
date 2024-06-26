#!/bin/sh

set -ex

echo ""
cat "/Volumes/workspace/ci/development-exportoptions.plist"
echo ""
cat "/Volumes/workspace/ci/ad-hoc-exportoptions.plist"
echo ""
cat "/Volumes/workspace/ci/app-store-exportoptions.plist"
echo ""
exit 0