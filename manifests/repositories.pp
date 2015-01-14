# Module to configure lustre repositories
class lustre::repositories {
  yumrepo { 'e2fsprogs':
    ensure   => present,
    name     => 'HPDD-ldiskfs',
    baseurl  => $lustre::params::e2fsprogs_repo,
    enabled  => 1,
    gpgcheck => 0,
  }

  yumrepo { 'hpddlustreclient':
    ensure   => present,
    name     => 'HPDD-lustre-client',
    baseurl  => $lustre::params::lustre_client_repo,
    enabled  => 1,
    gpgcheck => 0,
  }

  yumrepo { 'hpddlustreserver':
    ensure   => present,
    name     => 'HPDD-lustre-server',
    baseurl  => $lustre::params::lustre_server_repo,
    enabled  => 1,
    gpgcheck => 0,
  }
}
