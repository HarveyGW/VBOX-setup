@echo off

vboxmanage dhcpserver add --netname shuvmnet --ip 10.10.10.1 --netmask 255.255.255.0 --lowerip 10.10.10.2 --upperip 10.10.10.10 --enable

set vboxdir="C:\Program Files\Oracle\VirtualBox\"

VBoxManage startvm "aMaze\aMaze.vbox" --type headless
VBoxManage modifyvm "aMaze\aMaze.vbox" --nic1 bridged --bridgeadapter1 "shuvmnet"

VBoxManage startvm "Chronos\Chronos.vbox" --type headless
VBoxManage modifyvm "Chronos\Chronos.vbox" --nic1 bridged --bridgeadapter1 "shuvmnet"

VBoxManage startvm "hacksudoFOG\hacksudoFOG.vbox" --type headless
VBoxManage modifyvm "hacksudoFOG\hacksudoFOG.vbox" --nic1 bridged --bridgeadapter1 "shuvmnet"

VBoxManage startvm "Lupin-One\Lupin-One.vbox" --type headless
VBoxManage modifyvm "Lupin-One\Lupin-One.vbox" --nic1 bridged --bridgeadapter1 "shuvmnet"
