Role Name
=========

Run ssh-agent as a systemd user unit.

Requirements
------------

openssh and systemd need to be installed.

Role Variables
--------------

- ssh\_agent\_key\_timeout: Default lifetime of an identity added to the agent in seconds

Dependencies
------------

None.

Example Playbook
----------------

    - hosts: workstations
      roles:
        - ssh-agent
      vars:
        ssh_agent_key_timeout: 1800

License
-------

MIT
