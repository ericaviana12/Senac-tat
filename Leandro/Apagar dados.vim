Apagar dados de configuração do Switch

---

Switch(config)#int s0/0
Switch(config-if)#no desc 
Switch(config-if)#no ip add
Switch(config-if)#no shut
Switch(config-if)#no clock rate
Switch(config-if)#no band
Switch(config-if)#exit

Switch(config)#int s0/1
Switch(config-if)#no desc 
Switch(config-if)#no ip add
Switch(config-if)#no shut
Switch(config-if)#no clock rate
Switch(config-if)#no band
Switch(config-if)#exit

Switch(config)#router rip
Switch(config-router)#no net 192.168.30.0
Switch(config-router)#no net 30.0.0.0
Switch(config-router)# "Ctrl+Z"
