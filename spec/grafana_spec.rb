require "spec_helper"

# version
describe command("/usr/sbin/grafana-cli -v") do
  its(:stdout) { should contain("5.1.2") }
end

describe command("/usr/sbin/grafana-server -v") do
  its(:stdout) { should contain("5.1.2") }
end

# config
describe file("/etc/grafana/grafana.ini") do
  it { should be_file }
end

# systemd
describe file("/lib/systemd/system/grafana-server.service") do
  it { should be_file }
end
