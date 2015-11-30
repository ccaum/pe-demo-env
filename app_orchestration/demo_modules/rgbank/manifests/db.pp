define rgbank::db (
  $user,
  $password,
) {
  notify { "Hello! This is the ${name}'s rgbank::db component" }
}

Rgbank::Db produces Mysqldb {
  database => $name,
  user     => $user,
  host     => $::hostname,
  password => $password
}
