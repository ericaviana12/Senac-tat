Router>ena

Router#conf t

Router(config)#hostname RJ

RJ(config)#int f0/0
RJ(config-if)#desc Porta LAN do RJ
RJ(config-if)#ip add 192.168.20.1 255.255.255.0
RJ(config-if)#no shut
RJ(config-if)#exit

RJ(config)#int s0/0
RJ(config-if)#desc PORTA WAN que LIGA MG ao RJ
RJ(config-if)#ip add 30.0.0.1 255.0.0.0
RJ(config-if)#no shut
RJ(config-if)#clock rate 250000
RJ(config-if)#band 256
RJ(config-if)#exit

RJ(config)#int s0/1
RJ(config-if)#desc PORTA WAN que LIGA RJ a SP
RJ(config-if)#ip add 20.0.0.2 255.0.0.0
RJ(config-if)#no shut
RJ(config-if)#clock rate 128000
RJ(config-if)#band 128
RJ(config-if)#exit

RJ(config)#router rip
RJ(config-router)#net 192.168.20.0
RJ(config-router)#net 20.0.0.0
RJ(config-router)#net 30.0.0.0
RJ(config-router)# "Ctrl+Z"

RJ#sh run
RJ#copy run star
