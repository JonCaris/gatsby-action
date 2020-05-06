#!/bin/sh -l

set -e

sh -c "yarn"

sh -c "gatsby $*"