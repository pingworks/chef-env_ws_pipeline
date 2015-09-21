
include_recipe 'ws-base'
include_recipe 'ws-jenkins::master'
include_recipe 'ws-git-repo'
include_recipe 'chef-dash::dash-prod'
include_recipe 'chef-dash::dash-scripts'
include_recipe 'chef-dash::repo'
