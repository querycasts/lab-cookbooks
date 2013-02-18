package "git-core"

cookbook_file "/home/vagrant/.gitconfig" do
  source "gitconfig"
  owner "vagrant"
  group "vagrant"
end

cookbook_file "/home/vagrant/.gitignore" do
  source "gitignore"
  owner "vagrant"
  group "vagrant"
end

