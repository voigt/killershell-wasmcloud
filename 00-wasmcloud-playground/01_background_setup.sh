#!/bin/bash
#/var/log/killercoda

# Stop k8s services
# systemctl list-unit-files | grep enabled
# systemctl daemon-reload & # might be not necessary
systemctl disable --now kubepods.slice &
systemctl disable --now kubelet &
ssh 172.30.2.2 "systemctl disable --now kubepods.slice; systemctl disable --now kubelet; rm -rf /root/.kube" &
rm -rf /root/.kube

# Setup wash cli
curl -s https://packagecloud.io/install/repositories/wasmcloud/core/script.deb.sh | bash
apt install wash openssl direnv
wash completions -d $HOME/.wash bash
source $HOME/.wash/wash.bash

# Setup wash on node01
ssh node01 "curl -s https://packagecloud.io/install/repositories/wasmcloud/core/script.deb.sh | bash; apt install wash openssl direnv" &
ssh node01 "wash completions -d $HOME/.wash bash; source $HOME/.wash/wash.bash" &
# TODO: add CLUSTER_SEED


cat << EOF > .envrc
export WASMCLOUD_CLUSTER_SEED="SCADMX4TAR3KWXQT2VI66WVJIEGSORZ46DIKQOVU7EUIVX6V7CQ7QRHWMM"
EOF

cat << EOF >> .bashrc

eval "\$(direnv hook bash)"
EOF

touch /tmp/finished
wait
