#!/bin/bash

# permissions sanity check
sudo chown -R www-data: /razorcms

# Start apache
/usr/sbin/apache2 -D FOREGROUND
