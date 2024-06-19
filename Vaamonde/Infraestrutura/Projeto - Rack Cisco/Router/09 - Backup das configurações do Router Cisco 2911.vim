Backup das configurações do Router Cisco 2911

---

enable

	copy running-config startup-config
	copy startup-config flash:
	dir flash:
	show running-config
