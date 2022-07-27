class profile::app::mysql {

include chocolatey
  
  package {'mysql':
    ensure => installed,
    provider => 'chocolatey',
    install_options => ['-y'],
  }
}
