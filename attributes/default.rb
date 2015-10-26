default['ws-env-pipeline']['user'] = 'jenkins'
default['ws-env-pipeline']['group'] = 'jenkins'
default['ws-env-pipeline']['userhome'] = '/var/lib/jenkins'
default['ws-env-pipeline']['os_url'] = 'http://10.33.0.10:5000/v2.0'
default['ws-env-pipeline']['os_user'] = 'test'
default['ws-env-pipeline']['os_pass'] = 'test'
default['ws-env-pipeline']['os_keyname'] = 'test'
default['ws-env-pipeline']['os_img'] = 'pingworks/docker-ws-baseimg:0.2'
default['ws-env-pipeline']['os_flavor'] = 'default'

default['chef-dash']['platform'] = 'ubuntu-lts'
default['chef-dash']['package']['version'] = '444+git520aaf9'
default['chef-dash']['pipelinestages'] = 2

default['chef-dash']['frontend']['toolbar']['links'] = "{
                id: 'JenkinsButton',
                text: 'Jenkins',
                url: '#{node['chef-dash']['jenkins']['url']}/'
            },
            {
                  id: 'GitButton',
                  text: 'Gitrepo',
                  url: 'http://git.#{node['pw_base']['domain']}/gitweb/'
            },
            {
                  id: 'RepoButton',
                  text: 'Binär-Repo',
                  url: '/repo/'
            },
            {
                  id: 'CookbookRepoButton',
                  text: 'Cookbook-Repo',
                  url: '/cookbooks/'
            },
            {
                id: 'EnvButton',
                text: 'Environments',
                handler: function() {
                    this.findParentByType('toolbar').fireEvent('hideCommentWindow');
                    this.findParentByType('toolbar').fireEvent('hideDeployWindow');
                    this.findParentByType('toolbar').fireEvent('showEnvironmentsWindow');
                }
            }"

default['chef-dash']['frontend']['bundlegrid']['vcslink'] = "<a href=\"http://git.#{node['pw_base']['domain']}/gitweb/?p={0};a=commit;h={1}\" target=\"_blank\" style=\"color: black\">{1}</a>"
default['chef-dash']['frontend']['bundlegrid']['vcsrepolink'] = "<a href=\"http://git.#{node['pw_base']['domain']}/gitweb/\" target=\"_blank\" style=\"color: black\">{0}</a>"

default['chef-dash']['frontend']['bundlegrid']['flex']['deployment'] = '1'
default['chef-dash']['frontend']['bundlegrid']['flex']['triggerJenkinsJob'] = '0'
default['chef-dash']['frontend']['bundlegrid']['flex']['comment'] = '1'

default['chef-dash']['frontend']['bundlegrid']['hidden']['triggerJenkinsJob'] = 'true'

default['chef-dash']['frontend']['deployment']['triggerUrl'] = "#{node['chef-dash']['jenkins']['url']}/job/deployment/buildWithParameters?token=Omi7foh4gu7d"
default['chef-dash']['frontend']['deployment']['showUrl'] = "#{node['chef-dash']['jenkins']['url']}/job/deployment/"

default['chef-dash']['repo']['ownerhome'] = '/var/lib/jenkins'
default['chef-dash']['repo']['owner'] = 'jenkins'
default['chef-dash']['repo']['group'] = 'jenkins'

default['chef-dash']['scripts']['impl'] = 'ssh'
default['chef-dash']['scripts']['sshlogin'] = 'jenkins@dash'

default['chef-dash']['regex']['env'] = '^test[0-9][0-9]\$'

default['pw_base']['ssh-user-sudo'] = 'jenkins	ALL = NOPASSWD: /usr/bin/dpkg -i phonebook*
jenkins	ALL = (gitdaemon) NOPASSWD: /usr/bin/git fetch origin master\:master'
default['pw_base']['ssh-user'] = "#{node['ws-env-pipeline']['user']}"
default['pw_base']['ssh-group'] = "#{node['ws-env-pipeline']['group']}"
default['pw_base']['ssh-userhome'] = "#{node['ws-env-pipeline']['userhome']}"
default['pw_base']['gemrc-files'] = ['/root/.gemrc', '/opt/chefdk/embedded/etc/gemrc', '/opt/chef/embedded/etc/gemrc']


default['pw_chefdk']['kitchen']['os_url'] = "#{node['ws-env-pipeline']['os_url']}"
default['pw_chefdk']['kitchen']['os_user'] = "#{node['ws-env-pipeline']['os_user']}"
default['pw_chefdk']['kitchen']['os_pass'] = "#{node['ws-env-pipeline']['os_pass']}"
default['pw_chefdk']['kitchen']['os_keyname'] = "#{node['ws-env-pipeline']['os_keyname']}"
default['pw_chefdk']['kitchen']['os_img'] = "#{node['ws-env-pipeline']['os_img']}"
default['pw_chefdk']['kitchen']['os_flavor'] = "#{node['ws-env-pipeline']['os_flavor']}"

default['pw_chefdk']['kitchen']['user'] =  "#{node['ws-env-pipeline']['user']}"
default['pw_chefdk']['kitchen']['group'] =  "#{node['ws-env-pipeline']['group']}"
default['pw_chefdk']['kitchen']['userhome'] = "#{node['ws-env-pipeline']['userhome']}"

default['pw_cookbook_repo']['owner'] = "#{node['ws-env-pipeline']['user']}"
default['pw_cookbook_repo']['group'] = "#{node['ws-env-pipeline']['group']}"
default['pw_cookbook_repo']['dir'] = '/data/cookbooks'

default['pw_openstack_clients']['user'] = "#{node['ws-env-pipeline']['user']}"
default['pw_openstack_clients']['group'] = "#{node['ws-env-pipeline']['group']}"
default['pw_openstack_clients']['userhome'] = "#{node['ws-env-pipeline']['userhome']}"

default['pw_openstack_clients']['os_url'] = "#{node['ws-env-pipeline']['os_url']}"
default['pw_openstack_clients']['os_user'] = "#{node['ws-env-pipeline']['os_user']}"
default['pw_openstack_clients']['os_pass'] = "#{node['ws-env-pipeline']['os_pass']}"
default['pw_openstack_clients']['os_keyname'] = "#{node['ws-env-pipeline']['os_keyname']}"
default['pw_openstack_clients']['os_img'] = "#{node['ws-env-pipeline']['os_img']}"
default['pw_openstack_clients']['os_flavor'] = "#{node['ws-env-pipeline']['os_flavor']}"

default['pw_mofa']['user'] = "#{node['ws-env-pipeline']['user']}"
default['pw_mofa']['group'] = "#{node['ws-env-pipeline']['group']}"
default['pw_mofa']['userhome'] = "#{node['ws-env-pipeline']['userhome']}"

default['pw_cookbook_repo']['berks-api-url'] = "http://repo.#{node['pw_base']['domain']}"
