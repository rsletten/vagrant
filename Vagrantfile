# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"
  config.vm.synced_folder "hieradata", "/tmp/vagrant-puppet/hieradata"
  ####### Install Puppet Agent #######
  config.vm.provision "shell", path: "./bootstrap.sh"
  ####### Do Puppet #######
  config.vm.provision "puppet" do |puppet|
    puppet.manifests_path = "manifests"
    puppet.manifest_file = "default.pp"
    puppet.module_path = "modules"
    puppet.facter = {
      "vagrant" => "1",
      "entity" => "yomama"
    }
    puppet.hiera_config_path = "hiera.yaml"
    puppet.working_directory = "/tmp/vagrant-puppet"
    # puppet.options = "--verbose --debug"
    # puppet.environment_path = "../puppet/environments"
    # puppet.environment = "testenv"
  end

end
