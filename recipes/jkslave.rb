
include_recipe 'ws-base'
include_recipe 'ws-jenkins::slave'
include_recipe 'chef-dash::dash-scripts'
include_recipe 'ws-phonebook::middleware'

include_recipe 'ws-env-pipeline::ssh-auth'
