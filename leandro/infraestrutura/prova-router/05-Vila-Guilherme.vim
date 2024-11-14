Router>ena

Router#conf t

Router(config)#hostname VILA_GUILHERME

VILA_GUILHERME(config)#int f0/0
VILA_GUILHERME(config-if)#desc Porta LAN de VILA GUILHERME
VILA_GUILHERME(config-if)#ip add 172.14.0.1 255.255.0.0
VILA_GUILHERME(config-if)#no shut
VILA_GUILHERME(config-if)#exit

VILA_GUILHERME(config)#int s0/0
VILA_GUILHERME(config-if)#desc PORTA WAN que LIGA VILA GUILHERME a ITAQUERA
VILA_GUILHERME(config-if)#ip add 15.0.0.1 255.0.0.0
VILA_GUILHERME(config-if)#no shut
VILA_GUILHERME(config-if)#clock rate 500000
VILA_GUILHERME(config-if)#band 512
VILA_GUILHERME(config-if)#exit

VILA_GUILHERME(config)#int s0/1
VILA_GUILHERME(config-if)#desc PORTA WAN que LIGA VILA EMA a VILA GUILHERME
VILA_GUILHERME(config-if)#ip add 14.0.0.2 255.0.0.0
VILA_GUILHERME(config-if)#no shut
VILA_GUILHERME(config-if)#clock rate 128000
VILA_GUILHERME(config-if)#band 128
VILA_GUILHERME(config-if)#exit

VILA_GUILHERME(config)#router rip
VILA_GUILHERME(config-router)#net 172.14.0.0
VILA_GUILHERME(config-router)#net 15.0.0.0
VILA_GUILHERME(config-router)#net 14.0.0.0
VILA_GUILHERME(config-router)# "Ctrl+Z"

VILA_GUILHERME#sh run
VILA_GUILHERME#copy run star
