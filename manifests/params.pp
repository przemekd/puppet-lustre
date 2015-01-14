# Private class: See README.md.
class lustre::params {

  $lustre_client_repo = 'https://downloads.hpdd.intel.com/public/lustre/latest-maintenance-release/el6/client/'
  $lustre_server_repo = 'https://downloads.hpdd.intel.com/public/lustre/latest-maintenance-release/el6/server/'
  $e2fsprogs_repo = 'https://downloads.hpdd.intel.com/public/e2fsprogs/latest/el6/RPMS/'


  case $::osfamily {
    'RedHat': {
      case $::operatingsystem {
        /^(RedHat|CentOS|Scientific|OracleLinux)$/: {
          if versioncmp($::operatingsystemrelease, '6.6') == 0 {
            notice('RedHat like version 6.6')
          } elsif versioncmp($::operatingsystemmajrelease, '7') == 0 {
            notice('RedHat like version 7.x')
          } elsif versioncmp($::operatingsystemmajrelease, '6') == 0 {
            notice('RedHat like version 6.x')
          }
        }

        default: {
          fail("Unsupported platform: puppetlabs-${module_name} currently doesn't support ${::osfamily} or ${::operatingsystem}")
        }
      }
    }

    default: {
      fail("Unsupported platform: puppetlabs-${module_name} currently doesn't support ${::osfamily} or ${::operatingsystem}")
    }
  }
}
