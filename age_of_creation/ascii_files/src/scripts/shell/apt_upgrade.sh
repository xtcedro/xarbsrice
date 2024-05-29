#!/bin/sh

# script to upgrade apt

# exit if an error occurs 
set -e



# update and upgrade apt
apt update -yy
apt dist-upgrade -yy
apt full-upgrade -yy

# install unattended-upgrades 
apt install unattended-upgrades -yy

# configure unattended-upgrades using dpkg
dpkg-reconfigure --priority=low unattended-upgrades

configure console size for appropriate font size
dpkg-reconfigure console-setup

exit
