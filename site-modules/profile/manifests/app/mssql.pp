class profile::app::mssql {

include chocolatey

  exec { 'mssql':
    command => 'C:\ProgramData\chocolatey\choco.exe install sql-server-express -y -f',
  }
  
  #package {'sql-server-express':
  #  ensure => installed,
  #  provider => 'chocolatey',
  #  install_options => ['-yf'],
  #}
}
