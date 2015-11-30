define rgbank::web (
  $db_name,
  $db_host,
  $db_user,
  $db_password,
  $listen_port = '80',
) {
  notify { "Hello! This is the ${name}'s rgbank::web component" }
}

Rgbank::Web produces Http {
  name => $name,
  ip   => $::ipaddress,
  port => $listen_port,
  host => $::hostname,
}

Rgbank::Web consumes Mysqldb {
  db_name     => $database,
  db_host     => $host,
  db_user     => $user,
  db_password => $password,
}
