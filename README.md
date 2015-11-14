# env_ws_pipeline-cookbook

Environment cookbook for the phonebook workshop pipeline.

## Supported Platforms

Ubuntu 14.04

## Usage

If you would like to setup the jkmaster and jkslave pair on your local machine
for further experimentation, this can be done in the following way:

### 1) Preparation
```
git clone https://github.com/pingworks/chef-env_ws_pipeline.git
```

### 2) Setting up jkmaster / jkslave
You need to have docker, chefdk and kitchen-docker available:
```
cd chef-env_ws_pipeline
./setup-local-pipeline.sh
```
ATTENTION: This script will try to use sudo to modify your /etc/hosts file to
make the pipeline machines accessible from your host.

After the script has finished you should be able to reach the dashboard at
http://dash.local/

### 3) Restarting the pipeline after a reboot
After you have rebooted your system you also need to restart the pipeline
containers. This can be done with:
```
cd chef-env_ws_pipeline
./start-local-pipeline.sh
```

## 4) Limitations
The continuous delivery pipeline for the phonebook should be fully up and
working.
The cookbook pipeline will fail in the acceptance test stage because it tries
to connect to the openstack controller which is not available.
The env-create will fail for the same reason.

## License and Authors

Author:: Christoph Lukas (<christoph.lukas@gmx.net>)
