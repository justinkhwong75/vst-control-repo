class profile::platform::baseline::audit {

  file { '/etc/hosts1':
    audit => all,
  }

}
