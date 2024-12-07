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
- zsh\_aliases: dictionary of zsh aliases. Can't use literal ' in the aliased command

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
        zsh_aliases:
          g: git

License
-------

MIT
