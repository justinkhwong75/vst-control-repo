class profile::platform::baseline::aix {

  file {'/etc/passwd':
    owner  => 'root';
    group  => 'root';
    mode   => '0644';
  }
}
