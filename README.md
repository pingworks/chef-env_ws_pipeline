# env_ws_pipeline-cookbook

Environment cookbook for the phonebook workshop pipeline.

## Supported Platforms

Ubuntu 14.04

## Usage

If you would like to setup the jkmaster and jkslave pair on your local machine
for further experimentation, this can be done in the following way:

You can either run both, jkmaster and jkslave as vagrant machines or as docker
containers.

### 1) Preparation
```
git clone https://github.com/pingworks/chef-env_ws_pipeline.git
cd chef-env_ws_pipeline
cp Berksfile.github Berksfile
berks install
```

### 2) Setting up jkmaster / jkslave
#### a) using vagrant / virtualbox
You need to have virtualbox, vagrant and chefdk available:
```
kitchen converge
```
You should new be able to reach the dashboard at http://192.168.88.100/

#### b) using docker
You need to have docker, chefdk and kitchen-docker available:
```
cp .kitchen.docker.yml .kitchen.local.yml
kitchen converge jkmaster
```
After the master is up and running, logon to the master and check it's IP.
```
kitchen login jkmaster
ip a l dev eth0
```
Change the master_url in .kitchen.yml to http://<master-ip>:8080/jenkins and
setup the slave:
```
kitchen converge jkslave
```
You should new be able to reach the dashboard at http://<master-ip>/


## License and Authors

Author:: Christoph Lukas (<christoph.lukas@gmx.net>)
