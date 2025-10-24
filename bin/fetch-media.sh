#!/usr/bin/env bash

set -e

# Fetches media and extracts to src/media
curl -o media.tgz https://chris.bur.gs/media/media.tgz
tar -xzvf media.tgz
