directory '/var/lib/jenkins/.ssh' do
  owner 'jenkins'
  group 'jenkins'
  mode '700'
end

cookbook_file 'id_rsa' do
  path '/var/lib/jenkins/.ssh/id_rsa'
  owner 'jenkins'
  group 'jenkins'
  mode '600'
end

cookbook_file 'id_rsa.pub' do
  path '/var/lib/jenkins/.ssh/id_rsa.pub'
  owner 'jenkins'
  group 'jenkins'
  mode '644'
end

cookbook_file 'id_rsa.pub' do
  path '/var/lib/jenkins/.ssh/authorized_keys'
  owner 'jenkins'
  group 'jenkins'
  mode '600'
end

cookbook_file 'ssh-config' do
  path '/var/lib/jenkins/.ssh/config'
  owner 'jenkins'
  group 'jenkins'
  mode '644'
end
