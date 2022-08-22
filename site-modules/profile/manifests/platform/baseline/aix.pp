class profile::platform::baseline::aix {

  file {'/etc/passwd':
    owner => 'root';
    #group => 'security';
    #mode => '0644';
  }
}
