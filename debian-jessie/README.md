# Packer Templates for ESXi

## debian-wheezy

### Specification

1. VM has 2 vNIC
2. Get IP address from DHCP servers
3. VMware tools / open-vm-tools is installed

### Pre-Requirements

1. [Install Packer](https://www.packer.io/downloads.html)
2. (If you want to use VMware tools,) download VMwareTools-\*.tar.gz

### Parameters

#### Requiered

Nothing.

#### Optional

Explain important variables below.
See each templates file for getting all variables.

| variable               | default            | mean                                              |
|------------------------|--------------------|---------------------------------------------------|
| use\_vmware\_tools     | ""                 | if this value is "YES", use open-vm-tools         |
| core                   | 1                  | # of CPU core                                     |
| memory                 | 512                | Mem Size (MB)                                     |
| diskSize               | 4096               | Disk Size (GB)                                    |
| iso\_url               | snip.              | Debian net install image URL                      |
| iso\_md5               | snip.              | md5sum of ISO file                                |

### Limitation
Now, default root password are specified.
If you want change them directory, you must modify preseed file and add packer build parameter.
It's very confusing.

So, please use provisioning for change them.

### Build Example

```shell
# Install open-vm-tools
packer build debian-jessie.json

# Install vmware-tools
packer build 'use_open_vmware_tools=YES' debian-jessie.json
```

