$K8S_PATH="C:\kubernetes"
$K8S_VERSION="1.7.3"
$HOSTNAME = hostname
$K8S_MASTER_IP = "10.142.0.2"
$K8S_DNS_SERVICE_IP = "10.100.0.10"
$K8S_DNS_DOMAIN = "cluster.local"

mkdir $K8S_PATH
cd $K8S_PATH



# Download and extract Kubernetes binaries
Start-BitsTransfer https://storage.googleapis.com/apprenda-sig-windows/windows/kubelet.exe

# TODO
# Register kubelet as a service and start it
#setx -m CONTAINER_NETWORK "external"
#cmd /c 'sc create kubelet binPath= "\"C:\Program Files (x86)\Open vSwitch\bin\servicewrapper.exe\" kubelet \"C:\kubernetes\kubelet.exe\" -v=3 --hostname-override=sig-windows-worker-windows --cluster-dns=10.100.0.10 --cluster-domain=cluster.local --pod-infra-container-image=\"apprenda/pause\" --resolv-conf=\"\" --api_servers=\"http://10.142.0.2:8080\" --log-dir=\"C:\kubernetes\"" type= own start= auto error= ignore displayname= "Kubernetes Kubelet" obj= LocalSystem'
