#!/bin/bash

# Stop k8s services
# systemctl list-unit-files | grep enabled
systemctl daemon-reload &
systemctl disable --now kubepods.slice &
systemctl disable --now kubelet &
ssh 172.30.2.2 "systemctl disable --now kubepods.slice; systemctl disable --now kubelet" &

# Setup wash cli
curl -s https://packagecloud.io/install/repositories/wasmcloud/core/script.deb.sh | bash
apt install wash openssl direnv

cat << EOF > .envrc
export WASMCLOUD_CLUSTER_SEED="SCADMX4TAR3KWXQT2VI66WVJIEGSORZ46DIKQOVU7EUIVX6V7CQ7QRHWMM"
EOF

cat << EOF >> .bashrc

eval "\$(direnv hook bash)"
EOF

direnv allow
source ~/.bashrc
wait
