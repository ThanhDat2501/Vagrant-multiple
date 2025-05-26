# Vagrant Multi VM Setup
Create multiple virtual machines running in parallel and install Nginx automatically.
## Yêu cầu
- [Vagrant](https://www.vagrantup.com/downloads)
- [VirtualBox](https://www.virtualbox.org/)
## Hướng dẫn
```bash
git clone <repo-url>
cd vagrant-multi-vm
# Initialize parallel virtual machines
vagrant up
# SSH into one of the machines
vagrant ssh web1
