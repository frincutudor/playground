set -o errexit

echo "Install minikube"
choco install minikube -y

echo "Create virtual switch for minikube"
New-VMSwitch -name ExternalSwitch  -NetAdapterName $1 -AllowManagementOS $true

echo "Configuring minikube"
minikube start --vm-driver hyperv --hyperv-virtual-switch "Minikube" --v=7 --alsologtostderr

echo "Install helm"
choco install kubernetes-helm -y