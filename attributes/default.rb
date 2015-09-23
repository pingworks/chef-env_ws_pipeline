default['chef-dash']['platform'] = 'ubuntu-lts'
default['chef-dash']['package']['version'] = '444+git520aaf9'
default['chef-dash']['pipelinestages'] = 2

default['chef-dash']['frontend']['toolbar']['links'] = "{
                id: 'JenkinsButton',
                text: 'Jenkins',
                url: '#{node['chef-dash']['jenkins']['url']}/'
            },
            {
                id: 'RepoButton',
                text: 'Binärrepo',
                url: '/repo/'
            },
            {
                  id: 'GitButton',
                  text: 'Gitrepo',
                  url: 'http://git.#{node['ws-base']['domain']}/gitweb/'
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

default['chef-dash']['frontend']['bundlegrid']['vcslink'] = "<a href=\"http://git.#{node['ws-base']['domain']}/gitweb/?p={0};a=commit;h={1}\" target=\"_blank\" style=\"color: black\">{1}</a>"
default['chef-dash']['frontend']['bundlegrid']['vcsrepolink'] = "<a href=\"http://git.#{node['ws-base']['domain']}/gitweb/\" target=\"_blank\" style=\"color: black\">{0}</a>"

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
