# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"
  ####### Install Puppet Agent #######
  config.vm.provision "shell", path: "./bootstrap.sh"
  ####### Do Puppet #######
  config.vm.provision "puppet" do |puppet|
    puppet.manifests_path = "manifests"
    puppet.manifest_file = "default.pp"
    puppet.module_path = "modules"
    # puppet.options = "--verbose --debug"
  end

end
