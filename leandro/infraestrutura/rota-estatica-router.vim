Criando rota estática para o router

---

VERSÃO 1

Router(config)#ip route  (network)     (mask)       (interface)
Router(config)#ip route  10.0.0.0      255.0.0.0    serial 0/0

VERSÃO 2
  
Router(config)#ip route  (network)     (mask)           (next hope / ip do router seguinte)
Router(config)#ip route  192.168.0.0   255.255.255.0    200.200.200.2  
