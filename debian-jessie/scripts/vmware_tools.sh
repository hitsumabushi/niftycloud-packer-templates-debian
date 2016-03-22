set -x
set -e

echo "USE_VMWARE_TOOLS = ${USE_VMWARE_TOOLS}"

if [ "x${USE_VMWARE_TOOLS}" = "xyes" ]; then
  # Install vmware-tools
  echo "Install vmware-tools"
  # Build on ESXi
  #mount /dev/sr0 /mnt
  #tar zxf /mnt/VMwareTools-*.tar.gz -C /tmp/
  #/tmp/vmware-tools-distrib/vmware-install.pl -d
  #umount /mnt

  # install VMware tools
  cd /tmp
  tar xvf /tmp/VMwareTools.tar.gz
  cd /tmp/vmware-tools-distrib
  ./vmware-install.pl -f --default
else
  # if you want to install open-vm-tools
  echo "Install open-vm-tools"
  apt-get -y install open-vm-tools
fi
