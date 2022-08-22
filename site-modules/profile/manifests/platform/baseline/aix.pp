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
  
  file {'/audit':
    owner  => 'root',
    group  => 'audit',
    mode   => '0750',
  }
  
  file {'/smit.log':
    owner  => 'root',
    group  => 'system',
    mode   => '0640',
  }
  
  file {'/var/adm/cron/log':
    owner  => 'bin',
    group  => 'vron',
    mode   => '0660',
  }
  
  file {'/var/spool/cron/crontabs':
    owner  => 'root',
    group  => 'cron',
    mode   => '0770',
  }
  
  file {'/var/ct/RMstart.log':
    owner  => 'root',
    group  => 'system',
    mode   => '0640',
  }
  
  file {'/var/tmp/hostmibd.log':
    owner  => 'root',
    group  => 'system',
    mode   => '0640',
  }
  
  file {'/var/adm/sa':
    owner  => 'adm',
    group  => 'adm',
    mode   => '0755',
  }
  
  file { '/etc/motd':
      ensure  => file,
      owner  => 'bin',
      group  => 'bin',
      mode   => '0644',
      content => "This is asset of Techcombank, only permit authorized person. If you are accessing illegally, you will commit a criminal offence.\n",
    }
}
