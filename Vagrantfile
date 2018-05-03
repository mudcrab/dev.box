Vagrant.configure('2') do |config|
	config.vm.box = 'debian/contrib-stretch64'

	config.vm.network 'private_network', ip: '192.168.13.37'

	config.vm.provider 'virtualbox' do |v|
		v.memory = 8192
		v.cpus   = 4
	end

	# config.ssh.username 'jevgeni'

	config.vm.provision 'shell', path: 'setup.sh'
	config.vm.provision 'shell', privileged: false, path: 'setup-as-user.sh'
end
