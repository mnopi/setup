modules: 
	@git submodule foreach --recursive 'git clean --quiet -xfd && git reset --quiet --hard' >/dev/null
	@git submodule update  --recursive --force --quiet --remote >/dev/null


image:
	@qemu-img create -f qcow2 "$(TMP)/kali-test.hdd.img" 20G

test: image
	@qemu-system-x86_64 \
		-enable-kvm \
		-m 4G \
		-drive if=virtio,aio=threads,cache=unsafe,format=qcow2,file="$(TMP)/kali-test.hdd.img" \
		-cdrom $(ISO) \
		-boot once=d

test-efi: image
	@qemu-system-x86_64 \
		-enable-kvm \
		-m 4G \
		-drive if=virtio,aio=threads,cache=unsafe,format=qcow2,file="$(TMP)/kali-test.hdd.img" \
		-drive if=pflash,format=raw,readonly,file=/usr/share/OVMF/OVMF_CODE.fd \
		-drive if=pflash,format=raw,readonly,file=/usr/share/OVMF/OVMF_VARS.fd \
		-cdrom $(ISO) \
		-boot once=d

burn:
	@ls -l /dev/disk/by-id
