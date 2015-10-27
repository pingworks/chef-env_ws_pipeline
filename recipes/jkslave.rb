
include_recipe 'pw_base'
include_recipe 'pw_jenkins::slave'
include_recipe 'chef-dash::dash-scripts'
include_recipe 'ws_phonebook::middleware'
include_recipe 'ws_phonebook::installer'

include_recipe 'pw_base::ssh-user'
