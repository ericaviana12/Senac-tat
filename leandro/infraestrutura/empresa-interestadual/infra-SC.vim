Router>ena

Router#conf t

Router(config)#hostname SC

SC(config)#int f0/0
SC(config-if)#desc Porta LAN de PR
SC(config-if)#ip add 192.168.60.1 255.255.255.0
SC(config-if)#no shut
SC(config-if)#exit

SC(config)#int s0/0
SC(config-if)#desc PORTA WAN que LIGA PR a SC
SC(config-if)#ip add 60.0.0.1 255.0.0.0
SC(config-if)#no shut
SC(config-if)#clock rate 500000
SC(config-if)#band 512
SC(config-if)#exit

SC(config)#router rip
SC(config-router)#net 192.168.60.0
SC(config-router)#net 60.0.0.0
SC(config-router)# "Ctrl+Z"

SC#sh run
SC#copy run star
