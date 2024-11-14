Router>ena

Router#conf t

Router(config)#hostname PR

PR(config)#int f0/0
PR(config-if)#desc Porta LAN do PR
PR(config-if)#ip add 192.168.50.1 255.255.255.0
PR(config-if)#no shut
PR(config-if)#exit

PR(config)#int s0/0
PR(config-if)#desc PORTA WAN que LIGA PR a SP
PR(config-if)#ip add 50.0.0.1 255.0.0.0
PR(config-if)#no shut
PR(config-if)#clock rate 250000
PR(config-if)#band 256
PR(config-if)#exit

PR(config)#int s0/1
PR(config-if)#desc PORTA WAN que LIGA SP a PR
PR(config-if)#ip add 60.0.0.2 255.0.0.0
PR(config-if)#no shut
PR(config-if)#clock rate 500000
PR(config-if)#band 512
PR(config-if)#exit

PR(config)#router rip
PR(config-router)#net 192.168.50.0
PR(config-router)#net 50.0.0.0
PR(config-router)#net 60.0.0.0
PR(config-router)# "Ctrl+Z"

PR#sh run
PR#copy run star
