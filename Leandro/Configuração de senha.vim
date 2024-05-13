Senha para acessar o console switch

Switch(config)#line con 0
Switch(config-line)#password SENHA
Switch(config-line)#login

---

Senha para acessar as configurações do console

Switch(config)#enable secret SENHA
Switch(config)#enable password SENHA
