class system::hosts{
resources {'file':
	  purge => true,
}

file { '/tmp/stuff.txt':
     ensure => present,
}

host { 'jam.puppetlabs.vm':
  ensure       => 'present',
  host_aliases => ['jam'],
  ip           => '192.168.5.39',
  target       => '/etc/hosts',
}
host { 'localhost':
  ensure       => 'present',
  host_aliases => ['localhost.localdomain', 'localhost6', 'localhost6.localdomain6'],
  ip           => '::1',
  target       => '/etc/hosts',
}
host { 'master.puppetlabs.vm':
  ensure       => 'present',
  host_aliases => ['master'],
  ip           => '192.168.5.3',
  target       => '/etc/hosts',
}
host { 'student.puppetlabs.vm':
  ensure       => 'present',
  host_aliases => ['student', 'localhost', 'localhost.localdomain', 'localhost4'],
  ip           => '127.0.0.1',
  target       => '/etc/hosts',
}

}