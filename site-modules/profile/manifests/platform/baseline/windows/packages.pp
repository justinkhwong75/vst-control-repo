class profile::platform::baseline::windows::packages {

  include chocolatey
  #Package {
  #  provider => chocolatey,
  #}

  exec { 'trend_micro':
    command => 'msiexec /i C:\Temp\Agent-Windows-20.0.0-4959.x86_64\Agent-Core-Windows-20.0.0-4959.x86_64.msi /qn /norestart /l* C:\Temp\Agent-Windows-20.0.0-4959.x86_64\install.log',
  }

  #package { 'notepadplusplus':
  #    ensure            => installed,
  #    provider          => 'chocolatey',
  #}
  
  #package { '7zip':
  #    ensure            => installed,
  #    provider          => 'chocolatey',
  #}
  
  #package { 'kav':
  #    ensure            => installed,
  #    provider          => 'chocolatey',
  #    install_options => ['-override', '-installArgs', '"', '/VERYSILENT', '/NORESTART', '"'],
  #}
  #$predefined_packages = [ 'notepadplusplus', '7zip', 'git', 'uniextract' ]
  #package { $predefined_packages:
  #  ensure => present
  #}

  #unless getvar('trusted.external.servicenow.u_enforced_packages').empty {
  #  $packages = parsejson($trusted['external']['servicenow']['u_enforced_packages'])
  #  $packages.each |$package,$ensure|{
  #    package { $package:
  #      ensure => $ensure
  #    }
  #  }
  #}
}
