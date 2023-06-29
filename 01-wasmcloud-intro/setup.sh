#!/bin/bash

curl -s https://packagecloud.io/install/repositories/wasmcloud/core/script.deb.sh | bash
apt install wash openssl direnv

cat .envrc << EOF
export WASMCLOUD_CLUSTER_SEED="SCADMX4TAR3KWXQT2VI66WVJIEGSORZ46DIKQOVU7EUIVX6V7CQ7QRHWMM"
EOF

direnv allow
