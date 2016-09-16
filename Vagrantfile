Vagrant.configure(2) do |config|
  config.vm.define "vpn.vagrant", primary: true, autostart: true do |config_machine|
      #Assigning a provider
      config_machine.vm.provider :virtualbox do |virtualbox, override|
        virtualbox.name = "Vagrant VPN"
      override.vm.box = "ubuntu/trusty64"
      end

      # Asinging a provisioner
      config_machine.vm.provision :ansible, run: "always" do |provisioner|
        provisioner.playbook = "playbooks.yml"
        provisioner.extra_vars = "tests/test.yml" if File.file?("tests/test.yml")
        #provisioner.verbose = "vvvv"
      end
  end
end
