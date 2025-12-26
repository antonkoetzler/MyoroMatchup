#!/bin/bash

# Start Supabase local development environment
# This script runs `npx supabase start` from the supabase directory

cd "$(dirname "$0")/.." || exit
npx supabase start

