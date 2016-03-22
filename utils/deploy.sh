#!/bin/sh

set -xe

TEMPLATE_OVF="$1"
OUTPUT_DIR="$2"
TARGET_OVF="${OUTPUT_DIR}/vm.ovf"

VMDK=`basename $(ls -t ${OUTPUT_DIR}/*.vmdk | head -1)`
sed -e "s/__disk__.vmdk/${VMDK}/" ${TEMPLATE_OVF} > ${TARGET_OVF}

# Deploy
ovftool -n=test`date "+%s"` --powerOn --skipManifestCheck -ds="${VM_DATASTORE}" ${TARGET_OVF} vi://${VM_USER}:${VM_PASSWORD}@${VM_HOST}/
