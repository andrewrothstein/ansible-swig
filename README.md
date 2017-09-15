andrewrothstein.swig
===========================
[![Build Status](https://travis-ci.org/andrewrothstein/ansible-swig.svg?branch=master)](https://travis-ci.org/andrewrothstein/ansible-swig)

A role for installing [Swig](http://http://www.swig.org/) from source.

Requirements
------------

See [meta/main.yml](meta/main.yml)

Role Variables
--------------

See [defaults/main.yml](defaults/main.yml)

Dependencies
------------

See [meta/main.yml](meta/main.yml)

Example Playbook
----------------

```yml
- hosts: servers
  roles:
    - andrewrothstein.swig
```

License
-------

MIT

Author Information
------------------

Andrew Rothstein <andrew.rothstein@gmail.com>
