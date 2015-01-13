# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "hashicorp/precise64"

  config.vm.network "private_network", ip: "192.168.33.10"

  config.vm.hostname = 'goiardidemo'

  config.omnibus.chef_version = "11.16.4"

  config.vm.provision "chef_client" do |chef|
    chef.chef_server_url = "http://192.168.33.1:8889"
    chef.validation_key_path = ".chef/dummy-validation.pem"
  end
end
