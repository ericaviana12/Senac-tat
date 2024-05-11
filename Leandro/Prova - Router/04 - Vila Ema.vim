Router>ena

Router#conf t

Router(config)#hostname VILA_EMA

SP(config)#int f0/0
SP(config-if)#desc Porta LAN de VILA EMA
SP(config-if)#ip add 172.13.0.1 255.255.0.0
SP(config-if)#no shut
SP(config-if)#exit

SP(config)#int s0/0
SP(config-if)#desc PORTA WAN que LIGA VILA EMA a VILA GUILHERME
SP(config-if)#ip add 14.0.0.1 255.0.0.0
SP(config-if)#no shut
SP(config-if)#clock rate 128000
SP(config-if)#band 128
SP(config-if)#exit

SP(config)#int s0/1
SP(config-if)#desc PORTA WAN que LIGA MOOCA a VILA EMA
SP(config-if)#ip add 13.0.0.2 255.0.0.0
SP(config-if)#no shut
SP(config-if)#clock rate 500000
SP(config-if)#band 512
SP(config-if)#exit

SP(config)#router rip
SP(config-router)#net 172.13.0.0
SP(config-router)#net 14.0.0.0
SP(config-router)#net 13.0.0.0
SP(config-router)# "Ctrl+Z"

SP#sh run
SP#copy run star
