SaitServe - Server Management Software
====================================
A docker service that runs nginx, php8.2, php8.1, php7.4, mysql, postgres, phpmyadmin and redis. With ability to add more than one vhost to nginx.

If you manage different clients applications and do not want to maintain different services for them, then this is a good option.

You can modify the docker services to reflect your need.


DOCUMENTATION AND SUPPORT
-------------------------
* sait.com.ng/forum (coming soon)

## Setup
After you clone you should initialize the project by running `make init` or `bash init.sh` if you do not have make installed.
Then you edit the .env file that will be generated.

## Adding VHost
To add a vhost for an application named app2, add a file in `containers/nginx/sites-enabled` named `app2.conf` and set to the PHP version you will be using if a PHP app.  

SYSTEM REQUIREMENTS
-------------------
* A system that can run [docker](https://docker.com) engine


Release Notes
-------------

> #### SaitServe 1.0.0
>	- First release 1.0.0 : 13/06/2024.

