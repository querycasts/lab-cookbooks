cookbook_file "/home/vagrant/.gemrc" do
  source "gemrc"
  owner "vagrant"
  group "vagrant"
end

cookbook_file "/home/vagrant/.labrc" do
  source "labrc"
  owner "vagrant"
  group "vagrant"
end

execute "load labrc from bashrc" do
  command <<-CMD
cat <<SCRIPT >>/home/vagrant/.bashrc
# Load Querycasts Lab Bash additions
if [ -f ~/.labrc ]; then
  source ~/.labrc
fi
SCRIPT
CMD
  user "vagrant"
  group "vagrant"
  not_if { File.read("/home/vagrant/.bashrc").include?("Querycasts") }
end
