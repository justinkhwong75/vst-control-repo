class profile::app::mssql {

include chocolatey

  package {'sql-server-express':
    ensure => installed,
    provider => 'chocolatey',
    install_options => ['-y'],
  }
}
