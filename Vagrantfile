Vagrant.configure("2") do |config|
  # Vagrant configuration
  config.vm.box = "precise64"
  config.vm.synced_folder ".", "/vagrant"
  config.vm.network :private_network, ip: "192.168.33.10"
  config.vm.network :forwarded_port, host: 8000, guest: 6081 # Varnish listen port
  config.vm.network :forwarded_port, host: 8001, guest: 80   # Apache listen port

  # Puppet provisioner
  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "manifests"
    puppet.manifest_file = "default.pp"
    puppet.module_path = "modules"
  end
end
