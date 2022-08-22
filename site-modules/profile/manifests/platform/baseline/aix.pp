class profile::platform::baseline::aix {

  file {'/etc/passwd':
    owner  => 'root',
    group  => 'security',
    mode   => '0644',
  }
  
  file {'/etc/security/audit':
    owner  => 'root',
    group  => 'audit',
    mode   => '0750',
  }
  
  file {'/smit.log':
    owner  => 'root',
    group  => 'system',
    mode   => '0640',
  }
}
