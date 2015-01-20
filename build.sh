#!/bin/bash

set -e

rm -rf build || 0
yt target ios-simulator
yt install
yt up
yt build -G Xcode -- --target yotta-ios

# Open Xcode Project
open build/ios-simulator/yotta-ios.xcodeproj

# Launch iOS Simulator
#ios-sim launch "build/ios-simulator/source/Debug-iphonesimulator/Yotta iOS.app"

# Deploy to iPhone
#ios-deploy --debug --bundle "build/ios/source/Debug-iphoneos/Yotta iOS.app"