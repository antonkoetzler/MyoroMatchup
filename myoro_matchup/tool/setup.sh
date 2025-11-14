#!/bin/bash
#
# Script to install all dependencies and generate all build_runner code to setup MyoroFlutterLibrary.
flutter clean
flutter pub get
bash tool/generate_code.sh
bash tool/generate_icon.sh