grafana_version = node[:grafana][:version]

# --- INSTALL ---

execute "wget -q https://s3-us-west-2.amazonaws.com/grafana-releases/release/grafana-#{grafana_version}.x86_64.rpm" do
  not_if "test -e /usr/local/src/grafana-#{grafana_version}.x86_64.rpm"
  cwd "/usr/local/src"
end

execute "yum install grafana-#{grafana_version}.x86_64.rpm -y" do
  cwd "/usr/local/src"
end

#execute "yum install initscripts fontconfig"
#execute "rpm -Uvh grafana-#{grafana_version}.x86_64.rpm"
