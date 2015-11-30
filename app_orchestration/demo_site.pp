site {
  rgbank { 'staging':
    nodes     => {
      Node['appserver01.vm']  => [ Rgbank::Web['staging'] ],
      Node['database.vm']     => [ Rgbank::Db['staging'] ],
    },
  }
  
  rgbank { 'dev':
    nodes               => {
      Node['rgbankdev.vm'] => [ Rgbank::Web['dev'],
                                Rgbank::Db['dev'] ],
    },
  }
}
