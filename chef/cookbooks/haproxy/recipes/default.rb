apt_package 'haproxy' do
  action :install
end

cookbook_file '/etc/haproxy/haproxy.cfg' do
  source 'haproxy.cfg'
  action :create
  notifies :restart, 'service[haproxy]', :delayed
end

service 'haproxy' do
  action [:enable, :start]
end
