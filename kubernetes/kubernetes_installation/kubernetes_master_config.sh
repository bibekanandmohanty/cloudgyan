kubeadm init --apiserver-advertise-address=$(curl ifconfig.co) --pod-network-cidr=10.244.0.0/16
mkdir $HOME/.kube
cp /etc/kubernetes/admin.conf $HOME/.kube/config
kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml
sed -i '/- --port=0/d' /etc/kubernetes/manifests/kube-scheduler.yaml
sed -i '/- --port=0/d' /etc/kubernetes/manifests/kube-controller-manager.yaml
yum install git -y
git config --global user.email "thinkbm@gmail.com" ; git config --global user.name "bibekanandmohanty"
git clone https://github.com/bibekanandmohanty/cloudgyan.git
