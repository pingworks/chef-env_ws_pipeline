
include_recipe 'pw_base'
include_recipe 'pw_jenkins::slave'
include_recipe 'chef-dash::dash-scripts'
include_recipe 'ws-phonebook::middleware'
include_recipe 'ws-phonebook::installer'

include_recipe 'pw_base::ssh-user'
