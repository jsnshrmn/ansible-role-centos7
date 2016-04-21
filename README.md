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
* broker_ip is an address for an ssh broker.

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
