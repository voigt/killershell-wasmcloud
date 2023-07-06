#!/bin/bash

# Stop k8s services
systemctl daemon-reload
systemctl stop kubepods.slice
systemctl stop kubelet

curl -s https://packagecloud.io/install/repositories/wasmcloud/core/script.deb.sh | bash
apt install wash openssl direnv

cat << EOF > .envrc
export WASMCLOUD_CLUSTER_SEED="SCADMX4TAR3KWXQT2VI66WVJIEGSORZ46DIKQOVU7EUIVX6V7CQ7QRHWMM"
EOF

cat << EOF >> .bashrc

eval "\$(direnv hook bash)"
EOF

direnv allow
