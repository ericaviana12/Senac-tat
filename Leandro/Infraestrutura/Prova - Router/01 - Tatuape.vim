Router>ena

Router#conf t

Router(config)#hostname TATUAPE

TATUAPE(config)#int f0/0
TATUAPE(config-if)#desc Porta LAN de TATUAPE
TATUAPE(config-if)#ip add 172.1.0.1 255.255.0.0
TATUAPE(config-if)#no shut
TATUAPE(config-if)#exit

TATUAPE(config)#int s0/0
TATUAPE(config-if)#desc PORTA WAN que LIGA TATUAPE a VILA PRUDENTE
TATUAPE(config-if)#ip add 11.0.0.1 255.0.0.0
TATUAPE(config-if)#no shut
TATUAPE(config-if)#clock rate 500000
TATUAPE(config-if)#band 512
TATUAPE(config-if)#exit

TATUAPE(config)#int s0/1
TATUAPE(config-if)#desc PORTA WAN que LIGA GUAIANASES ao TATUAPE
TATUAPE(config-if)#ip add 17.0.0.2 255.0.0.0
TATUAPE(config-if)#no shut
TATUAPE(config-if)#clock rate 128000
TATUAPE(config-if)#band 128
TATUAPE(config-if)#exit

TATUAPE(config)#router rip
TATUAPE(config-router)#net 172.1.0.0
TATUAPE(config-router)#net 11.0.0.0
TATUAPE(config-router)#net 17.0.0.0
TATUAPE(config-router)# "Ctrl+Z"

TATUAPE#sh run
TATUAPE#copy run star
