Vagrant.configure("2") do |config|
  config.vm.box = "hashicorp/precise32"
  config.vm.provision :shell, path: "bootstrap.sh"
   config.vm.network "private_network", ip: "192.168.50.4"
config.vm.network :forwarded_port, guest: 443, host: 8443
config.vm.network :forwarded_port, guest: 10000, host: 10000
end
