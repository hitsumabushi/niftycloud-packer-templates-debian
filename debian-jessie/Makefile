default:

clean:
	rm -rf outputs/

build:
	packer build -only=virtualbox-iso debian-jessie.json

ovfdeploy:
	../utils/deploy.sh vm_template.ovf outputs
