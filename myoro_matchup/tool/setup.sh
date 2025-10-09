#!/bin/bash
#
# Script to install all dependencies and generate all build_runner code to setup MyoroFlutterLibrary.
flutter clean
flutter pub get
dart run build_runner build --delete-conflicting-outputs