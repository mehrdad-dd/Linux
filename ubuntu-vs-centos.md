🔑 Key differences from the Ubuntu version
Area	Ubuntu	CentOS
Package manager	apt	yum / dnf
Firewall	ufw	firewalld
Web server example	nginx	httpd
User path example	www-data	apache
Version check	lsb_release -a	cat /etc/redhat-release
Log file	app.log (custom)	/var/log/messages (system)
EPEL repo	not needed	sudo yum install epel-release

