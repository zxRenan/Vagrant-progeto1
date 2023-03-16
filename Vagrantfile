Vagrant.configure("2") do |config|
 
  config.vm.define "ct" do |ct|
    ct.vm.box = "centos/7"
    ct.vm.network "forwarded_port", guest: 80, host: 8092
    ct.vm.network "public_network", ip: "192.168.1.56"
    ct.vm.provider "virtualbox" do |v|
      v.name = "Centos"
      v.memory = 2044
      v.cpus = 2
    end
    ct.vm.provision "shell", path: "script.sh"
  end

  config.vm.define "dn" do |dn|
    dn.vm.box = "debian/bullseye64"
    dn.vm.network "forwarded_port", guest: 80, host: 8093
    dn.vm.network "public_network", ip: "192.168.1.54"
    dn.vm.synced_folder "site/", "/var/www/html/"
    dn.vm.provider "virtualbox" do |v|
      v.name = "Debian"
      v.memory = 2044
      v.cpus = 2
    end
    dn.vm.provision "shell", path: "scriptdn.sh"
  end
end
