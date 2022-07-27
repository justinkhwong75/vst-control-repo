class profile::app::mssql {

include chocolatey

  exec {
  }
  
  #package {'sql-server-express':
  #  ensure => installed,
  #  provider => 'chocolatey',
  #  install_options => ['-y'],
  #}
}
