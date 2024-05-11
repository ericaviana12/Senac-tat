Router>ena

Router#conf t

Router(config)#hostname ITAQUERA

SP(config)#int f0/0
SP(config-if)#desc Porta LAN de ITAQUERA
SP(config-if)#ip add 172.15.0.1 255.255.0.0
SP(config-if)#no shut
SP(config-if)#exit

SP(config)#int s0/0
SP(config-if)#desc PORTA WAN que LIGA ITAQUERA a GUAIANASES
SP(config-if)#ip add 16.0.0.1 255.0.0.0
SP(config-if)#no shut
SP(config-if)#clock rate 500000
SP(config-if)#band 512
SP(config-if)#exit

SP(config)#int s0/1
SP(config-if)#desc PORTA WAN que LIGA VILA GUILHERME a ITAQUERA
SP(config-if)#ip add 15.0.0.2 255.0.0.0
SP(config-if)#no shut
SP(config-if)#clock rate 500000
SP(config-if)#band 512
SP(config-if)#exit

SP(config)#router rip
SP(config-router)#net 172.15.0.0
SP(config-router)#net 16.0.0.0
SP(config-router)#net 15.0.0.0
SP(config-router)# "Ctrl+Z"

SP#sh run
SP#copy run star
