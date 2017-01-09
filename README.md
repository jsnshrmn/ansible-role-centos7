OULibraries.centos7
=========

Base CentOS7 role for OULib.

Requirements
------------

A target system running CentOS7x.

Role Variables
--------------

vpshere tagged tasks expect server_name, server_ip, and broker_ip.
* servername is the value for the hostname. Defaults to current FQDN.
* server_ip sets the NIC address (Gateway, Netmask, and DNS should already be configured in your base image). Defaults to current address. We set this because we set the IP after firing up a base box on a known addres.
* centos7_iptables contains a list of firewall exceptions for vmware and bare metal installs.  If you leave this empty, say goodby to ssh access. example below

```
centos7_iptables:
  - rule_name: Some SSH Broker
    source_ip: 192.168.0.2/32
    tcp_port: 22
  - rule_name: HTTP
    source_ip: 0.0.0.0
    tcp_port: 139
  - rule_name: HTTPS
    source_ip: 0.0.0.0
    tcp_port: 443
```

Dependencies
------------

Written with lastpass-cli in mind. Role information forthcoming

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: username.rolename, x: 42 }

License
-------

To be determined

Author Information
------------------

Jason Sherman
