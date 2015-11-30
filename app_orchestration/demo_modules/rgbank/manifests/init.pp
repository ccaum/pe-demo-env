application rgbank (
  $db_username = 'test',
  $db_password = 'test'
) {

  rgbank::db { $name:
    user     => $db_username,
    password => $db_password,
    export   => Mysqldb["rgbank-${name}"],
  }

  rgbank::web { "${name}-${i}":
    consume => Mysqldb["rgbank-${name}"],
    export  => Http["rgbank-web-${name}"],
  }
}
