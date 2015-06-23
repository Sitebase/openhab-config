# -*- mode: ruby -*-
# vi: set ft=ruby :
#   http://192.168.1.135:1400/status/topology
# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "precise64"
  config.vm.box_url = "https://cloud-images.ubuntu.com/vagrant/precise/current/precise-server-cloudimg-amd64-vagrant-disk1.box"
  config.vm.network "forwarded_port", guest: 8080, host: 8888
  config.vm.network "private_network", ip: "192.168.33.10"

  config.vm.synced_folder "config", "/openhab-config"
  config.vm.synced_folder "log", "/openhab-log"

  config.vm.provision "shell", path: "provision.sh"

  #config.vm.provision "shell",
  #  inline: "apt-get update"

  #config.vm.provision "shell",
  #  inline: "apt-get install -y default-jdk unzip"

end
