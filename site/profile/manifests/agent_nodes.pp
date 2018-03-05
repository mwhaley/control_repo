class profile::agent_nodes {
  include dockeragent
  dockeragent::node {'web.puppet.vm':}
  dockeragent::node {'db.puppet.vm':}
  dockeragent::node ['ssh.puppet.vm':}
  
  host {'weeb.puppet.vm':
    ensure => present,
    ip => '172.18.0.3',
  }
  
  host {'db.puppet.vm':
    ensure => present,
    ip => '172.18.0.2',
  }
}
