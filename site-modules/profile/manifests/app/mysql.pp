class profile::app::mysql {

include chocolatey

  #exec { 'mssql':
  #  command => 'C:\ProgramData\chocolatey\bin\choco.exe install sql-server-express -y -f',
  #}
  
  package {'mysql':
    ensure => installed,
    provider => 'chocolatey',
    install_options => ['-y'],
  }
}
