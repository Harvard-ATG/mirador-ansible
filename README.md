# An Ansible playbook for installing [Mirador](https://github.com/IIIF/mirador).

## Local Dev.

Uses Test Kitchen for vagrant management.

Uses Serverspec for testing.

### requirements

* ruby version 2.2.4 or greater.
* ruby gem bundler
* vagrant
* virtualbox

### install.

1. Clone this repo amd name active directory
2. run `bundle install` (bundle may guide you, to install other gems depending on your reuby setup).

### Useage.

[Kitchen](https://github.com/test-kitchen/test-kitchen) is used to test and build local environments.

Run `kitchen list` to see availabe build enviroments.
Run `kitchen converge ENVROMENT_NAME` to build an environment
Run `kitchen verify ENVROMENT_NAME` to build and test an enviroment.

### Port forwarding and derectory sharing.

#### Port 8000 grunt server of the environment is forwarded hte local port for the bellow enviroments.

* ubuntu 14.04 -> 8001
* ubuntu 16.04 -> 8002

#### shared folder

For both roles the folder src/ the _dev_ suites will share src/ localy and have the Mirador codebase shared

### Mirador versions per suite.

* The _default_ suite will run the lastest stabe branch of Mirador. (currenly 2.0).
* The _dev_ suite will be based off of the master branch

