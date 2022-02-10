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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDIoTNeF/HIQ9hQRIviSkfN+iQILqodneXx7cThkmRvM0ksiqf6EqBCyM3mbmG3ZXwOXeLUGxxRCBIn3+vQm9OOJpeuKSc1JQrJskyraIrVDz7mILSzxzsQoMQIR7Sh2wtPSMNdrz2S0/ZzTeBYFizvWs3dipeUcXIhxDofqJA3pAe8HVnYIKYPHpsa7aVVtXf0X1VS4jErDoRjXPFKEAYebNGiO1HV1bZ9+XsdSlOoBsKcoz5yhRrZ4vrm9XQMQCqc8MeRkl5QcZRn7ldspeoWa5+nfcYGNX20H4+TKr0yytJlE9mRJJAViamSfErNBvCVwFjOvHjB0/1+/X0/wMMv',
	}
}
