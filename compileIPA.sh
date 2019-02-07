#!/bin/bash

# Initially added for Saigon jailbreak by Abraham Masri.
# Modified by s0uthwest for rootlessJB.

echo "[*] Compiling..."
$(which xcodebuild) clean build CODE_SIGN_IDENTITY="" CODE_SIGNING_REQUIRED=NO -sdk iphoneos
mv build/Release-iphoneos/rootlessJB.app rootlessJB.app
mkdir Payload
mv rootlessJB.app Payload/rootlessJB.app

echo "[*] Zipping into .ipa"
zip -r9 rootlessJB.ipa Payload/rootlessJB.app

echo "[*] Cleaning up..."
rm -rf build Payload

echo "[*] Done!"
