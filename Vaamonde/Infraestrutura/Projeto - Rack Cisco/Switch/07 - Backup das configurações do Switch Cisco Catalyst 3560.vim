Backup das configurações do Switch Cisco Catalyst 3560

---

enable

	copy running-config startup-config
	copy startup-config flash:
	dir flash:
	show running-config
