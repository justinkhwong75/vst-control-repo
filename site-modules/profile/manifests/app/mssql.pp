class profile::app::mssql {

include chocolatey

  package {'sql-server-express':
    ensure => installed,
    install_options => ['-y'],
  }
}
