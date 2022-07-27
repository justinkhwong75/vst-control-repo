class 


package { ‘GoogleChrome’:
    ensure          => ‘100.0.4896.88’, # Updated 11th Apr 2022
    provider        => ‘chocolatey’,
    install_options => [‘-y’],
    source          => ‘internal_chocolatey’,
    require         => Package[‘chocolatey.extension’],
  }
