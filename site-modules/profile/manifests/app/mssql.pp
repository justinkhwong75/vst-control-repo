class profile::app::mssql {

include chocolatey

  exec { 'mssql':
    command => 'C:\ProgramData\chocolatey\choco.exe install sql-server-express -y',
  }
  
  #package {'sql-server-express':
  #  ensure => installed,
  #  provider => 'chocolatey',
  #  install_options => ['-y'],
  #}
}
