sshkey { '%(SSH_HOST_NAME)s':
  ensure => present,
  key    => '%(SSH_HOST_KEY)s',
  type   => '%(SSH_HOST_KEY_TYPE)s',
}

sshkey { '%(SSH_HOST_IP)s':
  ensure => present,
  key    => '%(SSH_HOST_KEY)s',
  type   => '%(SSH_HOST_KEY_TYPE)s',
}

