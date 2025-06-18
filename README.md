# DLP Content Setup

## Introduction

By mid 2025, DLP Content team hasn't welcome new members for more than 6 years. This has taken the team, and its tools, to a situation where tools are not documented and the development environment is a real maze.

This repository intents to work aligned with [this guide](https://netskope.atlassian.net/wiki/spaces/~7120206cd3d31a126c4ac698f8d9f8d0bc6e99/pages/5567480072/DLP+Content+-+Development+Environment+Windows+11) to guide newcomers quickly set up their environment in a working, isolated, and convenient way.

## How does this repository work?

This repository acts as a layer above other repositories that you should clone by following _the guide_. It was developed with the intention to not modify the original repositories, so all tweaks were performed in this repository instead of changing the productive ones.

The way to communicate with this repository is through `make` commands, which are defined in the `Makefile` file.

If you do not have `make` installed in your system, please execute:

```bash
sudo apt install -y make
```

After installing this tool, feel free to **call `make` without any parameters**. Do not worry, it will just show the _help_ with the commands available, **it will not build anything**.

## Set up the repository

1. Even if you did not clone any repository yet, you need to decide where you will do it.
2. Once you decide it, open a terminal and navigate to it.
3. Clone the repository
```bash
git clone git@github.com:ns-dalvarezpons/dlp-content-setup.git
```
4. Then move inside the repository:
```bash
cd dlp-content-setup
```
5. Now, duplicate `.env.example` and rename the copy to `.env`, this is the file that the repository will use, feel free to complete the empty/pending environment variables with your data. Do not worry if some folders do not exist yet.
6. Continue in [this guide](https://netskope.atlassian.net/wiki/spaces/~7120206cd3d31a126c4ac698f8d9f8d0bc6e99/pages/5567480072/DLP+Content+-+Development+Environment+Windows+11)

## Regular use


### Build the images

The intended use of this repository is to remain as a sidecar to the other repositories. As an initial step, an whenever you perform an infrastructure change in the other repositories, you need to execute:
```bash
make build
```

This should create three images in your system, for example:
```bash
$ docker images
REPOSITORY            TAG                    IMAGE ID       CREATED             SIZE
dlp-setup-edk         latest                 154a0fab3cf2   About an hour ago   883MB
dlp-setup-dataplane   latest                 1801d02271e6   3 hours ago         827MB
svcbuilder            dalvarezpons-develop   07a8b3d2e907   31 hours ago        3.23GB
```

### Start the containers

Then, you need to _start the containers_ of the services involved. To do so, execute:
```bash
make start
```

Now, you should see your dockers running, for example:
```bash
$ docker ps
CONTAINER ID   IMAGE                             COMMAND                  CREATED          STATUS          PORTS     NAMES
fed4f7771a2f   svcbuilder:dalvarezpons-develop   "/cmd.sh tail -f /de…"   26 minutes ago   Up 26 minutes             dlp-setup-service
fa2e21eba2b0   dlp-setup-edk:latest              "tail -f /dev/null"      26 minutes ago   Up 26 minutes             dlp-setup-edk
07717c419248   dlp-setup-dataplane:latest        "tail -f /dev/null"      26 minutes ago   Up 26 minutes             dlp-setup-dataplane
```

This indicates that everything is running as expected. These containers will keep running until an error occurs or you shut down Docker. It is a good practice to check if they are running as a first check when debugging a problem.

### Enter the development environment

Finally, to access the development environment of any of the available services, just execute:
```bash
make dev-xxx
```

Where `<xxx>` represents the name of the service you want to access.

To return to the regular terminal, just type `exit`.

### Stop the containers

If you want to save resources or simply want to gracefully shut down the system, use the following command:
```bash
make down
```

### Clean the resources

If you want to remove all docker resources, use the following command:
```bash
make clean
```

:warning: Take into account that this command will clean *all* docker images, container, and cache entries created not only by this repository but by any other process in your computer.
