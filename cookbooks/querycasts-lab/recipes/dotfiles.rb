cookbook_file "/home/vagrant/.bashrc" do
  source "bashrc"
  owner "vagrant"
  group "vagrant"
end

cookbook_file "/home/vagrant/.gemrc" do
  source "gemrc"
  owner "vagrant"
  group "vagrant"
end
