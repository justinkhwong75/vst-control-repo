class profile::platform::baseline (
  Boolean $orch_agent  = false,
  #Array   $timeservers = ['0.pool.ntp.org','1.pool.ntp.org'],
  Array   $timeservers = ['8.8.8.8','8.8.8.4'],
  Boolean $enable_monitoring = false,
){

  # Global
  class {'::time':
    servers => $timeservers,
  }

  class {'::profile::puppet::orch_agent':
    ensure => $orch_agent,
  }

  service { 'puppet':
    ensure => 'running'
  }

  # add sensu client
  #if $enable_monitoring {
  #  include ::profile::app::sensu::client
  #}

  # OS Specific
  case $::kernel {
    'windows': {
      include ::profile::platform::baseline::windows
    }
    'Linux':   {
      include ::profile::platform::baseline::linux
    }
    'AIX':   {
      #fail('AIX? You gotta be kidding me!')
      include ::profile::platform::baseline::aix
    }
    default: {
      fail('Unsupported operating system!')
    }
  }

}
