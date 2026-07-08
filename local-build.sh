#!/bin/bash
export CONFIGURATION=Release
export INSTALL_PATH="/Library/Input Methods"

eval $(xcodebuild -project "Gureum.xcodeproj" -scheme "OSX" -configuration "$CONFIGURATION" -showBuildSettings | grep -E 'FULL_PRODUCT_NAME|PRODUCT_NAME|CODESIGNING_FOLDER_PATH|CONFIGURATION_TEMP_DIR|TARGET_BUILD_DIR' | awk -F " = " '{ print "export " $1 "=" $2}')

xcodebuild -project "Gureum.xcodeproj" -scheme "OSX" -configuration "$CONFIGURATION" || exit

/usr/bin/codesign --force --sign - --entitlements "${CONFIGURATION_TEMP_DIR}/OSX.build/$FULL_PRODUCT_NAME.xcent" --timestamp=none "$CODESIGNING_FOLDER_PATH"

sudo rm -rf "$INSTALL_PATH/$FULL_PRODUCT_NAME"
sudo cp -R "$CODESIGNING_FOLDER_PATH" "$INSTALL_PATH/"
sudo killall -15 "${PRODUCT_NAME}"
