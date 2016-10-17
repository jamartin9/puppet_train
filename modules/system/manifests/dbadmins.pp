class system::dbadmins {
require mysql::server

mysql_user { 'monica@localhost':
ensure              => present,
max_queries_per_hour => 600,
} ->
mysql_user { 'brad@localhost':
} ->
mysql_user { 'luke@localhost':
} ->
mysql_user { 'zack@localhost':
max_queries_per_hour => 1200,
} ->
mysql_user { 'ralph@localhost':
ensure => absent,
}

}