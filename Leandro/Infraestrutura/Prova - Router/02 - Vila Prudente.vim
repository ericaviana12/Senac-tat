Router>ena

Router#conf t

Router(config)#hostname VILA_PRUDENTE

VILA_PRUDENTE(config)#int f0/0
VILA_PRUDENTE(config-if)#desc Porta LAN de VILA PRUDENTE
VILA_PRUDENTE(config-if)#ip add 172.11.0.1 255.255.0.0
VILA_PRUDENTE(config-if)#no shut
VILA_PRUDENTE(config-if)#exit

VILA_PRUDENTE(config)#int s0/0
VILA_PRUDENTE(config-if)#desc PORTA WAN que LIGA VILA PRUDENTE a MOOCA
VILA_PRUDENTE(config-if)#ip add 12.0.0.1 255.0.0.0
VILA_PRUDENTE(config-if)#no shut
VILA_PRUDENTE(config-if)#clock rate 250000
VILA_PRUDENTE(config-if)#band 256
VILA_PRUDENTE(config-if)#exit

VILA_PRUDENTE(config)#int s0/1
VILA_PRUDENTE(config-if)#desc PORTA WAN que LIGA TATUAPE a VILA PRUDENTE
VILA_PRUDENTE(config-if)#ip add 11.0.0.2 255.0.0.0
VILA_PRUDENTE(config-if)#no shut
VILA_PRUDENTE(config-if)#clock rate 500000
VILA_PRUDENTE(config-if)#band 512
VILA_PRUDENTE(config-if)#exit

VILA_PRUDENTE(config)#router rip
VILA_PRUDENTE(config-router)#net 172.11.0.0
VILA_PRUDENTE(config-router)#net 12.0.0.0
VILA_PRUDENTE(config-router)#net 11.0.0.0
VILA_PRUDENTE(config-router)# "Ctrl+Z"

VILA_PRUDENTE#sh run
VILA_PRUDENTE#copy run star
