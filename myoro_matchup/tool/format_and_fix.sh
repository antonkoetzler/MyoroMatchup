#!/bin/bash
#
# Script to format and fix the files.
dart format . --line-length 120
dart fix --apply
