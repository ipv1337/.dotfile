#!/usr/bin/env bash
#Install brew and qemu dependencies
#/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)" 
#brew install qemu
#brew install jq

rm -rf /tmp/fedoracoreosqemu

#Download Fedora CoreOS Image and resize primary disk to 30G
mkdir -p /tmp/fedoracoreosqemu/image
cd /tmp/fedoracoreosqemu/image
DOWNLOAD_URL=$(curl https://builds.coreos.fedoraproject.org/streams/stable.json | jq -r '.architectures.x86_64.artifacts.qemu.formats["qcow2.xz"].disk.location')
curl "$DOWNLOAD_URL" --output fedora-coreos-qemu.x86_64.qcow2.xz
unxz fedora-coreos-qemu.x86_64.qcow2.xz
qemu-img resize /tmp/fedoracoreosqemu/image/fedora-coreos-qemu.x86_64.qcow2 30G

#Create the Ignition Configuration File
mkdir -p /tmp/fedoracoreosqemu/ignitionmetadata
cd /tmp/fedoracoreosqemu/ignitionmetadata
ssh-keygen -b 2048 -t rsa -f id_rsa_fedoracoreosboot -P ""
chmod 0600 /tmp/fedoracoreosqemu/ignitionmetadata/id_rsa_fedoracoreosboot
PUBLIC_KEY=$(cat /tmp/fedoracoreosqemu/ignitionmetadata/id_rsa_fedoracoreosboot.pub)
cat <<EOF >/tmp/fedoracoreosqemu/ignitionmetadata/ignitionconfig.ign
{
  "ignition": {
    "config": {
      "replace": {
        "source": null,
        "verification": {}
      }
    },
    "security": {
      "tls": {}
    },
    "timeouts": {},
    "version": "3.0.0"
  },
  "passwd": {
    "users": [
      {
        "name": "core",
        "sshAuthorizedKeys": [
          "${PUBLIC_KEY}"
        ]
      }
    ]
  },
  "storage": {},
  "systemd": {}
}
EOF

#boot the machine up
qemu-system-x86_64 -m 2048 -smp 4 -hda /tmp/fedoracoreosqemu/image/fedora-coreos-qemu.x86_64.qcow2 -fw_cfg name=opt/com.coreos/config,file=/tmp/fedoracoreosqemu/ignitionmetadata/ignitionconfig.ign -device e1000,netdev=net0 -netdev user,id=net0,hostfwd=tcp::5556-:22 -nographic

