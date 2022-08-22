class profile::platform::aix (

  file {'/etc/passwd':
    owner => 'root';
    group => 'security';
    mode => '0644';
  }
}
