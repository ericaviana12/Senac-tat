Router>ena

Router#conf t

Router(config)#hostname GUAIANASES

GUAIANASES(config)#int f0/0
GUAIANASES(config-if)#desc Porta LAN de GUAIANASES
GUAIANASES(config-if)#ip add 172.16.0.1 255.255.0.0
GUAIANASES(config-if)#no shut
GUAIANASES(config-if)#exit

GUAIANASES(config)#int s0/0
GUAIANASES(config-if)#desc PORTA WAN que LIGA GUAIANASES ao TATUAPE
GUAIANASES(config-if)#ip add 17.0.0.1 255.0.0.0
GUAIANASES(config-if)#no shut
GUAIANASES(config-if)#clock rate 128000
GUAIANASES(config-if)#band 128
GUAIANASES(config-if)#exit

GUAIANASES(config)#int s0/1
GUAIANASES(config-if)#desc PORTA WAN que LIGA ITAQUERA a GUAIANASES
GUAIANASES(config-if)#ip add 16.0.0.2 255.0.0.0
GUAIANASES(config-if)#no shut
GUAIANASES(config-if)#clock rate 500000
GUAIANASES(config-if)#band 512
GUAIANASES(config-if)#exit

GUAIANASES(config)#router rip
GUAIANASES(config-router)#net 172.16.0.0
GUAIANASES(config-router)#net 17.0.0.0
GUAIANASES(config-router)#net 16.0.0.0
GUAIANASES(config-router)# "Ctrl+Z"

GUAIANASES#sh run
GUAIANASES#copy run star
