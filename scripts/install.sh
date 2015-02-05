#!/bin/bash
# load-fixture

set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
$DIR/install-fixture.sh
