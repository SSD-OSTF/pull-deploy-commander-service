#!/usr/bin/env perl

system("sudo systemctl stop commander.socket");
system("sudo systemctl stop commander.service");
system("sudo rm /run/commander.sk");

system("sudo cp commander.pl /root/commander.pl");
system("sudo chmod 500 /root/commander.pl");

system("sudo cp commander.service /etc/systemd/system/commander.service");
system("sudo cp commander.socket /etc/systemd/system/commander.socket");

system("sudo systemctl daemon-reload");
system("sudo systemctl start commander.socket");
