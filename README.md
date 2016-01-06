Role Name
=========

A brief description of the role goes here.

Requirements
------------

Any pre-requisites that may not be covered by Ansible itself or the role should be mentioned here. For instance, if the role uses the EC2 module, it may be a good idea to mention in this section that the boto package is required.

Requires Python passlib package.

Role Variables
--------------

vpshere tagged tasks expect server_name, server_ip, and broker_ip.  servername is the value for the hostname. Defaults to current FQDN. server_ip sets the NIC address (Gateway, Netmask, and DNS should already be configured in your base image). Defaults to current address. We set this because we set the IP after firing up a base box on a known addres.  broker_ip is an address for an ssh broker.

user_pass is set as the libacct unix user password.  It should be a crypted value.  You can use lastpass-cli or prompt.  Eg.

```
  vars_prompt:
  - name: user_pass
    prompt: "password for libacct"
    private: yes
    encrypt: "sha512_crypt"
    confirm: yes
    salt_size: 7
  tasks:
  - name: Set libacct password crypt as fact
    set_fact:
      libacct_pw_crypt: "{{ user_pass }}"
```

Dependencies
------------

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

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
