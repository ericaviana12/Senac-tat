Router>ena

Router#conf t

Router(config)#hostname VILA_EMA

VILA_EMA(config)#int f0/0
VILA_EMA(config-if)#desc Porta LAN de VILA EMA
VILA_EMA(config-if)#ip add 172.13.0.1 255.255.0.0
VILA_EMA(config-if)#no shut
VILA_EMA(config-if)#exit

VILA_EMA(config)#int s0/0
VILA_EMA(config-if)#desc PORTA WAN que LIGA VILA EMA a VILA GUILHERME
VILA_EMA(config-if)#ip add 14.0.0.1 255.0.0.0
VILA_EMA(config-if)#no shut
VILA_EMA(config-if)#clock rate 128000
VILA_EMA(config-if)#band 128
VILA_EMA(config-if)#exit

VILA_EMA(config)#int s0/1
VILA_EMA(config-if)#desc PORTA WAN que LIGA MOOCA a VILA EMA
VILA_EMA(config-if)#ip add 13.0.0.2 255.0.0.0
VILA_EMA(config-if)#no shut
VILA_EMA(config-if)#clock rate 500000
VILA_EMA(config-if)#band 512
VILA_EMA(config-if)#exit

VILA_EMA(config)#router rip
VILA_EMA(config-router)#net 172.13.0.0
VILA_EMA(config-router)#net 14.0.0.0
VILA_EMA(config-router)#net 13.0.0.0
VILA_EMA(config-router)# "Ctrl+Z"

VILA_EMA#sh run
VILA_EMA#copy run star
