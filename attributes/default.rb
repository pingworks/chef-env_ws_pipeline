default['chef-dash']['package']['version'] = '442+git4c1d13d'

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
