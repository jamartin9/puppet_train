class files {
file { '/etc/cron.allow':
ensure => file,
}
file_line { 'prevent cron jobs':
ensure => present,
path => '/etc/cron.deny',
line => '*',
}
file_line { 'allow root cron jobs':
ensure => present,
path => '/etc/cron.allow',
line => 'root',
}
concat { '/etc/motd':
owner => 'root',
group => 'root',
mode => '0644',
}
concat::fragment { 'motd header':
target => '/etc/motd',
order => '01',
content => epp('files/motd_header.epp'),
}
concat::fragment { 'sample motd message':
target => '/etc/motd',
order => '50',
content => "This is a sample motd message\n",
}
}