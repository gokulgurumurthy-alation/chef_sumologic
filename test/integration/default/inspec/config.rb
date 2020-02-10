# Make sure config file is created for kitchen run.
describe file('/etc/sumo.json/cloud-init.json') do
  it { should exist }
end
