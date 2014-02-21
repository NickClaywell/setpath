template "environment" do
  path "/etc/environment"
  source "setpath.conf.erb"
  owner "root"
  group "root"
  mode "0644"
end

ruby_block "initialize" do
  block do
    ENV['PATH'] = "/opt/vagrant_ruby/bin:#{node[:setpath][:path]}:#{ENV['PATH']}"
  end
end
