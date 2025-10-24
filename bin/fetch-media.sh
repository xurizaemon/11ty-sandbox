#!/usr/bin/env bash

set -e

# Fetches media and extracts to src/media
curl --silent --output media.tgz https://chris.bur.gs/media/media.tgz
tar -xzvf media.tgz
