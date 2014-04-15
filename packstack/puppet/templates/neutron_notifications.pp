# Configure nova notifications system
class { 'neutron::server::notifications':
    nova_admin_username    => 'nova',
    nova_admin_password    => '%(CONFIG_NOVA_KS_PW)s',
    nova_admin_tenant_name => 'services',
    nova_url               => 'http://%(CONFIG_NOVA_API_HOST)s:8774/v2',
    nova_admin_auth_url    => 'http://%(CONFIG_KEYSTONE_HOST)s:5000/v2.0',
}

# This class is required when neutron::server::notifications is used
class {"keystone::roles::admin":
  email        => "test@test.com",
  password     => "%(CONFIG_KEYSTONE_ADMIN_PW)s",
  admin_tenant => "admin"
}

