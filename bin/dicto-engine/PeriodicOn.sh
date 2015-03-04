#!/bin/bash  

crontab -l | sed "/^#.*dicto.*$1/s/^#//" | crontab -