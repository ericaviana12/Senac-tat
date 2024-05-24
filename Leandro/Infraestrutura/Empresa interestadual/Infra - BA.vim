Router>ena

Router#conf t

Router(config)#hostname BA

BA(config)#int f0/0
BA(config-if)#desc Porta LAN da BA
BA(config-if)#ip add 192.168.40.1 255.255.255.0
BA(config-if)#no shut
BA(config-if)#exit

BA(config)#int s0/1
BA(config-if)#desc PORTA WAN que LIGA BA a MG
BA(config-if)#ip add 40.0.0.2 255.0.0.0
BA(config-if)#no shut
BA(config-if)#clock rate 500000
BA(config-if)#band 512
BA(config-if)#exit

BA(config)#router rip
BA(config-router)#net 192.168.40.0
BA(config-router)#net 40.0.0.0
BA(config-router)# "Ctrl+Z"

BA#sh run
BA#copy run star
