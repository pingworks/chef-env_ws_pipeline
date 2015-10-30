service 'jenkins' do
  supports status: true, restart: true, reload: true
  action  [:enable]
end

cookbook_file 'jenkins-config.tar.gz' do
  path '/tmp/jenkins-config.tar.gz'
  owner 'root'
  group 'root'
  mode '644'
end

cookbook_file 'jenkins-demo-config.tar.gz' do
  path '/tmp/jenkins-demo-config.tar.gz'
  owner 'root'
  group 'root'
  mode '644'
end

bash 'cleanup jenkins-config' do
  code 'rm -rf /var/lib/jenkins/*.xml /var/lib/jenkins/jobs'
end

bash 'extract jenkins-config' do
  user 'jenkins'
  group 'jenkins'
  code 'tar xvz -f /tmp/jenkins-config.tar.gz -C /var/lib/jenkins'
end

if node['env_ws_pipeline']['os_user'] == 'demo' then
  bash 'cleanup pw jenkins-config' do
    code 'rm -rf /var/lib/jenkins/jobs/tpl-*'
  end
  bash 'extract pingworks-config' do
    user 'jenkins'
    group 'jenkins'
    code 'tar xvz -f /tmp/jenkins-demo-config.tar.gz -C /var/lib/jenkins'
  end
end

bash 'restart jenkins' do
  user 'jenkins'
  group 'jenkins'
  code 'echo "foo"'
  notifies :restart, 'service[jenkins]', :immediately
end

directory '/data/envs' do
  owner 'jenkins'
  group 'www-data'
  mode '775'
end

template '/data/envs/test01.json' do
  source 'testenv.json.erb'
  owner 'jenkins'
  group 'www-data'
  mode '775'
end

package 'parallel'
