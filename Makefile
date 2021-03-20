
all:
	@echo "Use 'make install' to install whr930 on this system"

install:
	@cp src/whr930.py /usr/local/bin/whr930.py
	@cp systemd/whr930.service /etc/system.d/whr930.service

	@chmod 750 /usr/local/bin/whr930.py
	@chmod 644 /etc/system.d/whr930.service

	@systemctl daemon-reload
	@systemctl enable whr930.service
	@echo "whr930 is installed and enabled as a systemd service, start it with the command 'sudo systemctl start whr930.service'"
