class system::hashadminsrefactor {
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

$admin_users.each |$user, $params| {
		  
		  mysql_user {'$user@localhost':
		  	     ensure => pick($params['ensure'],$defaults['ensure']),
			     max_queries_per_hour => pick(params['max_queries_per_user'],$defaults['max_queries_per_user']),
		  }

}

}