# instructions
### what
Stupid simple k8s node  
Single node deployment  (VM or local laptop)  
Useful for labs, demos, or single base-system for more complex k8s based appliances  

### why
Challenges in how quickly to stand up a minimal functional kubernetes endpoint  
Differences in;
- base OS
- k8s component installation
- associated configuration files and services

### how
leverage repeatable build processes to construct  
minimal viable bootstrap / dialtone  
uses Linux snaps:  
https://snapcraft.io

### TL;DR
The following `snapd` instructions have been tested on Centos.  
For complete installation instructions - including other OS types - see:  
https://docs.snapcraft.io/installing-snapd/6735  

### install snapd
```
yum -y install epel-release
yum --enablerepo=epel-testing -y install snapd
systemctl enable --now snapd.socket snapd.refresh.timer
ln -s /var/lib/snapd/snap /snap
```

### install microk8s
```
snap install microk8s --classic
snap alias microk8s.docker docker
microk8s.enable storage
microk8s.status
microk8s.inspect
```

### setup kubectl
Using the dedicated `kubectl` snap instead of the built-in microk8s one, allows for custom kubeconfig files  
```
snap install kubectl --classic
microk8s.config > $HOME/.kube/config
```
