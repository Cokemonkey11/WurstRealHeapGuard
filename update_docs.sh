#!/usr/bin/env bash

set -euxo pipefail

echo '```' > README.md
../wurstdoktor/target/release/wurstdoktor.exe < wurst/WurstRealHeapGuard.wurst >> README.md
echo '```' >> README.md
