# BorgBackup Server Docker container

[![CircleCI](https://dl.circleci.com/status-badge/img/circleci/F8zvFL89rXf6pgQo3twuVc/UzLQdLgZfC4Mzd1je1xiS5/tree/main.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/circleci/F8zvFL89rXf6pgQo3twuVc/UzLQdLgZfC4Mzd1je1xiS5/tree/main)

<a href="https://www.buymeacoffee.com/dciancu" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/v2/default-yellow.png" alt="Buy Me A Coffee" style="height: 42px !important;width: 151.9px !important;" ></a>

Run BorgBackup server in Docker.

## Usage

Docker Hub Image: [dciancu/borgbackup-server](https://hub.docker.com/r/dciancu/borgbackup-server)  

Run `gen-ssh-host-keys.sh` script before starting container.  
Make sure to put the authorized ssh key in `data/ssh/key.pub`.  
Run the container using `docker compose` with the provided `docker-compose.yml`.

On remote host use repository `ssh://borgbackup@1.2.3.4:2222/backup`.

## License

This project is open-source software licensed under the [Apache License, Version 2.0](https://opensource.org/license/apache-2-0).
