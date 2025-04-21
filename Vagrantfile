Vagrant.configure("2") do |config|
  config.vm.provider "virtualbox" do |vb|
    vb.memory = 512
    vb.cpus = 1
  end

  config.vm.define "kali" do |kali|
    kali.vm.box = "kalilinux/rolling"
    kali.vm.hostname = "kali"
    kali.vm.network "private_network", ip: "192.168.56.10"
  end

  config.vm.define "ubuntu1" do |ubuntu1|
    ubuntu1.vm.box = "ubuntu/jammy64"
    ubuntu1.vm.hostname = "ubuntu1"
    ubuntu1.vm.network "private_network", ip: "192.168.56.11"
    ubuntu1.vm.provision "shell", path: "ubuntu1.sh"
  end

  config.vm.define "ubuntu2" do |ubuntu2|
    ubuntu2.vm.box = "ubuntu/jammy64"
    ubuntu2.vm.hostname = "ubuntu2"
    ubuntu2.vm.network "private_network", ip: "192.168.56.12"
    ubuntu2.vm.provision "shell", path: "ubuntu2.sh"
  end

  config.vm.define "ubuntu3" do |ubuntu3|
    ubuntu3.vm.box = "ubuntu/jammy64"
    ubuntu3.vm.hostname = "ubuntu3"
    ubuntu3.vm.network "private_network", ip: "192.168.56.13"
    ubuntu3.vm.provision "shell", path: "ubuntu3.sh"
  end
end

