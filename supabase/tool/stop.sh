#!/bin/bash

# Stop Supabase local development environment
# This script runs `npx supabase stop` from the supabase directory

cd "$(dirname "$0")/.." || exit
npx supabase stop

