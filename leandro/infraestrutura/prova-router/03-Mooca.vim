Router>ena

Router#conf t

Router(config)#hostname MOOCA

MOOCA(config)#int f0/0
MOOCA(config-if)#desc Porta LAN de MOOCA
MOOCA(config-if)#ip add 172.12.0.1 255.255.0.0
MOOCA(config-if)#no shut
MOOCA(config-if)#exit

MOOCA(config)#int s0/0
MOOCA(config-if)#desc PORTA WAN que LIGA MOOCA a VILA EMA
MOOCA(config-if)#ip add 13.0.0.1 255.0.0.0
MOOCA(config-if)#no shut
MOOCA(config-if)#clock rate 500000
MOOCA(config-if)#band 512
MOOCA(config-if)#exit

MOOCA(config)#int s0/1
MOOCA(config-if)#desc PORTA WAN que LIGA VILA PRUDENTE a MOOCA
MOOCA(config-if)#ip add 12.0.0.2 255.0.0.0
MOOCA(config-if)#no shut
MOOCA(config-if)#clock rate 250000
MOOCA(config-if)#band 256
MOOCA(config-if)#exit

MOOCA(config)#router rip
MOOCA(config-router)#net 172.12.0.0
MOOCA(config-router)#net 13.0.0.0
MOOCA(config-router)#net 12.0.0.0
MOOCA(config-router)# "Ctrl+Z"

MOOCA#sh run
MOOCA#copy run star
