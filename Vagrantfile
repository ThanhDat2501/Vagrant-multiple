VM_MEMORY = 512
VM_CPUs = 1
VM_BOX = "ubuntu/bionic64"
BASE_IP = "192.168.99."
PORT = 9000
VM_COUNT=3
VM_BASE_NAME = "web"

Vagrant.configure("2") do |config|
  (1..VM_COUNT).each do |i|
    config.vm.define "#{VM_BASE_NAME}#{i}" do |node|
      node.vm.box = VM_BOX
      node.vm.synced_folder "../chess_game_vagrant", "/var/www/html"
      node.vm.network "forwarded_port", guest:80, host: PORT + i - 1, auto_correct: false
      node.vm.hostname = "#{VM_BASE_NAME}#{i}.com"
      node.vm.network "private_network", ip: "#{BASE_IP}#{10 + i - 1}"
      node.vm.provider "virtualbox" do |vb|
        vb.name = "#{VM_BASE_NAME}#{i}"
        vb.memory = VM_MEMORY
        vb.cpus = VM_CPUs
      end
      node.vm.provision "shell", path: "setup.sh"
    end
  end
end

