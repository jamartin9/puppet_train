define files::motd (
$message = $name,
$order = 10,
) {
concat::fragment { "motd fragment: ${name}":
target => '/etc/motd',
order  => $order,
content => $message,
}
}

