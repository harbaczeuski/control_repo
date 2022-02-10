class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'SHA256:ULdEatzF92Y41hfZYR/6F1Zma0mssmATMLJdhchQyWU',
	}
	ssh_authorized_key { 'root@db.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'SHA256:YJhxp2c9MeAbU2jX8DD6IV1EEAkFTM+IAtQyXUrrYsY',
	}
	ssh_authorized_key { 'root@web.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'SHA256:hzRIp9HIUrVcy8cXze+jMGzOMz7faMnbi0JCBd3gCU4',
	}
}
