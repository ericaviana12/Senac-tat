Router>ena

Router#conf t

Router(config)#hostname ITAQUERA

ITAQUERA(config)#int f0/0
ITAQUERA(config-if)#desc Porta LAN de ITAQUERA
ITAQUERA(config-if)#ip add 172.15.0.1 255.255.0.0
ITAQUERA(config-if)#no shut
ITAQUERA(config-if)#exit

ITAQUERA(config)#int s0/0
ITAQUERA(config-if)#desc PORTA WAN que LIGA ITAQUERA a GUAIANASES
ITAQUERA(config-if)#ip add 16.0.0.1 255.0.0.0
ITAQUERA(config-if)#no shut
ITAQUERA(config-if)#clock rate 500000
ITAQUERA(config-if)#band 512
ITAQUERA(config-if)#exit

ITAQUERA(config)#int s0/1
ITAQUERA(config-if)#desc PORTA WAN que LIGA VILA GUILHERME a ITAQUERA
ITAQUERA(config-if)#ip add 15.0.0.2 255.0.0.0
ITAQUERA(config-if)#no shut
ITAQUERA(config-if)#clock rate 500000
ITAQUERA(config-if)#band 512
ITAQUERA(config-if)#exit

ITAQUERA(config)#router rip
ITAQUERA(config-router)#net 172.15.0.0
ITAQUERA(config-router)#net 16.0.0.0
ITAQUERA(config-router)#net 15.0.0.0
ITAQUERA(config-router)# "Ctrl+Z"

ITAQUERA#sh run
ITAQUERA#copy run star
