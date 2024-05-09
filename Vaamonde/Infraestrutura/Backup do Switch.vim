ssh -l senac 192.168.1.250 - Switch 01

ssh -l senac 192.168.1.251 - Switch 02

ssh -l senac 192.168.1.254 - Router 01

---

    enable
        show version
        show flash
        copy running-config startup-config
        copy running-config flash:
        show flash:
        dir nvram:
        ping 192.168.1.1
        copy startup-config tftp:
            192.168.1.1
