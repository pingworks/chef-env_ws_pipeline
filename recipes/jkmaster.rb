
include_recipe 'pw_base'
include_recipe 'pw_jenkins::master'
include_recipe 'pw_git_repo'
include_recipe 'chef-dash::dash-prod'
include_recipe 'chef-dash::repo'
include_recipe 'chef-dash::dash-scripts'
include_recipe 'ws-phonebook::build'

include_recipe 'pw_base::ssh-user'
include_recipe 'ws-env-pipeline::pipeline-config'

include_recipe 'pw_chefdk::chefdk'
include_recipe 'pw_chefdk::kitchen_openstack'
include_recipe 'pw_openstack_clients'
include_recipe 'pw_mofa'
include_recipe 'pw_cookbook_repo'
