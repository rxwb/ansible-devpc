dotfiles
=========

Install dotfiles.

Requirements
------------

None.

Role Variables
--------------

- git\_name: name used for git commits
- git\_email: email used for git commits
- git\_aliases: dictionary of git aliases

Dependencies
------------

None.

Example Playbook
----------------

    - hosts: workstations
      roles:
        - dotfiles
      vars:
        git_name: Example User
        git_email: user@example.com
        git_aliases:
          ci: commit

License
-------

MIT
