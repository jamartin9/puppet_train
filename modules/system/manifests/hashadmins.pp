class system::hashadmins {
include mysql::server
$defaults = {
ensure => present,
max_queries_per_hour => '600',
}
$admin_users = {
'brad@localhost' => {},
'monica@localhost' => {},
'luke@localhost' => {},
'zack@localhost' => { max_queries_per_hour => '1200' },
'ralph@localhost' => { ensure => absent },
}
create_resources('mysql_user', $admin_users, $defaults)
}