class files {


file { '/etc/cron.allow':
ensure => file,
}
file_line { 'prevent cron jobs':
ensure => present,
path  => '/etc/cron.deny',
line  => '*',
}
file_line { 'allow root cron jobs':
ensure => present,
path  => '/etc/cron.allow',
line  => 'root',
}
concat { '/etc/motd':
owner => 'root',
group => 'root',
mode => '0644',
}

files::motd { 'motd header':
order  => '01',
message => epp('files/motd_header.epp'),
}
files::motd { 'sample motd message':
order  => '50',
message => "This is a sample motd message\n",
}
}