#!/bin/bash
set -e

npm run build && swa deploy --env production
