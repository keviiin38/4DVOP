apt_package 'nginx' do
  action :install
end

cookbook_file '/etc/nginx/sites-available/default' do
  source 'nginx.conf'
  action :create
  notifies :restart, 'service[nginx]', :delayed
end

service 'nginx' do
  action [:enable, :start]
end

directory '/usr/share/nginx/html' do
  action :delete
  recursive true
end

git '/usr/share/nginx/html' do
  repository 'git://github.com/diranetafen/static-website-example.git'
  action :sync
end
