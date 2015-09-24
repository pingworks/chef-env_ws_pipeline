
include_recipe 'ws-base'
include_recipe 'ws-jenkins::slave'
include_recipe 'chef-dash::dash-scripts'
include_recipe 'ws-phonebook::middleware'
include_recipe 'ws-phonebook::installer'

include_recipe 'ws-base::ssh-user'
