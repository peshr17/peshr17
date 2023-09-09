pkg remove game-repo -y && pkg remove science-repo -y && pkg update -y && pkg upgrade -y && pkg install root-repo x11-repo qemu-utils qemu-common qemu-system-x86_64-headless wget -y && qemu-img create -f qcow2 ubuntu.img 300G && wget https://releases.ubuntu.com/23.04/ubuntu-23.04-live-server-amd64.iso && qemu-system-x86_64 -machine q100 -m 32768 -smp cpus=32 -cpu qemu64 -drive if=pflash,format=raw,read-only=on,file=$PREFIX/share/qemu/edk2-x86_64-code.fd -netdev user,id=nl,hostfwd=tcp::2222-:22 -device virtio-net,netdev=nl -cdrom ubuntu-20.04.4-live-server-amd64.iso -vnc 127.0.0.1:3  ubuntu.img
