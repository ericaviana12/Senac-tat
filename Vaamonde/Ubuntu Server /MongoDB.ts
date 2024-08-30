// Criando o usuário de administração do MongoDB Server

// altere a senha conforme a sua necessidade
db.createUser(
  {
    user: "admin",
    pwd: "123@senac",
    roles: [
      { role: 'root', db: 'admin' },
      { role: 'read', db: 'admin' },
      { role: 'hostManager', db: 'admin' },
      { role: 'backup', db: 'admin' },
      { role: 'dbAdmin', db: 'admin' },
      { role: 'userAdmin', db: 'admin' },
      { role: 'userAdminAnyDatabase', db: 'admin' },
      { role: 'dbAdminAnyDatabase', db: 'admin' },
      { role: 'readWriteAnyDatabase', db: 'admin' },
      { role: 'readAnyDatabase', db: 'admin' },
      { role: 'clusterAdmin', db: 'admin' },
      { role: 'clusterMonitor', db: 'admin' },
      { role: 'clusterManager', db: 'admin' }
    ]
  }
)
