# Local Kubernetes Playground

## Cluster setup

### Prerequisits

* Windows 10
* Hyper-V configured (https://docs.microsoft.com/en-us/virtualization/hyper-v-on-windows/quick-start/enable-hyper-v)
* choco package mannager installed (https://chocolatey.org/install#installing-chocolatey)

### Installing minikube

1. Open PowerShell console as an administrator.
2. Install minikube by executing below command: `choco install minikube `

### Setting up Hyper-V environment

1. Open Hyper-V manager.
2. Open Virtual Switch Manager from Action panel on the right hand side.
3. Select New virtual network switch -> select External -> click on Create Virtual Switch.
4. Name your virtual switch to Minikube, select correct LAN settings that gives access to internet and click on apply and ok.

### Setup minikube

1. Open PowerShell as an administrator. If you already have it opened then you can ignore this step.
2. Execute below command to start minikube:  `minikube start --vm-driver hyperv --hyperv-virtual-switch "Minikube" --v=7 --alsologtostderr`