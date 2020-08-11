#!/bin/sh
# CIMITRA SERVER INSTALL SCRIPT
# Author Tay Kratzer tay@cimitra.com

LOCAL_SCRIPT="cimitra_server_install.sh"

set -e

CIMITRA_URI="https://raw.githubusercontent.com/cimitrasoftware/vlcm/master/cimitra_server_install.sh"

curl -LJO --fail --location --progress-bar --output "$LOCAL_SCRIPT" "$CIMITRA_URI"

chmod +x "./$LOCAL_SCRIPT"

./$LOCAL_SCRIPT

