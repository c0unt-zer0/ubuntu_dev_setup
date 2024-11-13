#!/bin/bash

set -e

ansible-playbook -i "localhost," -c local -K setup.yml
