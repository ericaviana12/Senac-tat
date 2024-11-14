Router>ena

Router#conf t

Router(config)#hostname SP

SP(config)#int f0/0
SP(config-if)#desc Porta LAN de SP
SP(config-if)#ip add 192.168.10.1 255.255.255.0
SP(config-if)#no shut
SP(config-if)#exit

SP(config)#int s0/0
SP(config-if)#desc PORTA WAN que LIGA SP ao RJ
SP(config-if)#ip add 20.0.0.1 255.0.0.0
SP(config-if)#no shut
SP(config-if)#clock rate 128000
SP(config-if)#band 128
SP(config-if)#exit

SP(config)#int s0/1
SP(config-if)#desc PORTA WAN que LIGA SP a PR
SP(config-if)#ip add 50.0.0.2 255.0.0.0
SP(config-if)#no shut
SP(config-if)#clock rate 250000
SP(config-if)#band 256
SP(config-if)#exit

SP(config)#router rip
SP(config-router)#net 192.168.10.0
SP(config-router)#net 20.0.0.0
SP(config-router)#net 50.0.0.2
SP(config-router)# "Ctrl+Z"

SP#sh run
SP#copy run star
