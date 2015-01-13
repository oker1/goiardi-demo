#!/bin/bash

set -x

vagrant plugin install vagrant-omnibus
vagrant up

knife node from file node.json
knife cookbook upload apt tmux -o cookbooks

vagrant provision

knife search node 'goiardidemo'
knife search node 'hostname:goiardi*'
knife search node 'recipes:apt\:\:default'
knife search node 'recipes:apt'
knife search node 'lsb_codename:precise'
knife search node 'lsb_codename:trusty'