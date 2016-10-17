class system::dbadmins {
require mysql::server

$users= ['monica@localhost','brad@localhost','luke@localhost']
mysql_user { $users:
ensure              => present,
max_queries_per_hour => 600,
} ->
mysql_user { 'zack@localhost':
max_queries_per_hour => 1200,
} ->
mysql_user { 'ralph@localhost':
ensure => absent,
}

}