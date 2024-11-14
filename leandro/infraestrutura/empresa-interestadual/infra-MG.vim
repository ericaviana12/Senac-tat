Router>ena

Router#conf t

Router(config)#hostname MG

MG(config)#int f0/0
MG(config-if)#desc Porta LAN do MG
MG(config-if)#ip add 192.168.30.1 255.255.255.0
MG(config-if)#no shut
MG(config-if)#exit

MG(config)#int s0/0
MG(config-if)#desc PORTA WAN que LIGA MG a BA
MG(config-if)#ip add 40.0.0.1 255.0.0.0
MG(config-if)#no shut
MG(config-if)#clock rate 500000
MG(config-if)#band 512
MG(config-if)#exit

MG(config)#int s0/1
MG(config-if)#desc PORTA WAN que LIGA MG a RJ
MG(config-if)#ip add 30.0.0.2 255.0.0.0
MG(config-if)#no shut
MG(config-if)#clock rate 250000
MG(config-if)#band 256
MG(config-if)#exit

MG(config)#router rip
MG(config-router)#net 192.168.30.0
MG(config-router)#net 30.0.0.0
MG(config-router)#net 40.0.0.0
MG(config-router)# "Ctrl+Z"

MG#sh run
MG#copy run star
