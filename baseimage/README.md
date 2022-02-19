# An Ubuntu base image for docker and adjusted for my use

This image folder is from our fork of [Phusion baseimage-docker](https://github.com/phusion/baseimage-docker), they did all the heavy lifting.  A big thank you for all their hard work.

You should probably use the original Phusion project unless you are looking for something modified to suit my own needs.

# Changes

To better suit my needs I make a few changes from the Phusion project.

- syslog is disabled by default
- ssh is disabled by default
- cron is disabled by default
- install mono complete packages, version 6.12 from mono project
- rename setuser to userdo so it better reflects its purpose