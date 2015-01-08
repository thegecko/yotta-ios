#!/bin/bash

set -e

rm -rf build || 0
yt target ios-simulator
yt install
yt up
yt build -G Xcode

# Open Xcode Project
open build/ios-simulator/yotta-ios.xcodeproj

# Launch iOS Simulator
#ios-sim launch build/ios-simulator/source/Debug-iphonesimulator/yotta-ios.app

# Deploy to iPhone
#ios-deploy --debug --bundle build/ios/source/Debug-iphoneos/yotta-ios.app