# default sumocollector attributes

# Collector Name if not set defaults to chef node name
default['sumologic']['name'] = nil

# IMPORTANT: Set this to true if the sumo_json_path is a directory
default['sumologic']['use_json_path_dir'] = true

# Data Bag for Collector Credentials
default['sumologic']['credentials']['bag_name'] = 'sumo-logic'
if node.chef_environment == 'development'
  default['sumologic']['credentials']['item_name'] = 'dev-api-creds'
elsif node.chef_environment == 'production'
  default['sumologic']['credentials']['item_name'] = 'prod-api-creds'
elsif node.chef_environment == 'build'
  default['sumologic']['credentials']['item_name'] = 'build-api-creds'
else
  # Default to test key.
  default['sumologic']['credentials']['item_name'] = 'test-api-creds'
end

# Ephemeral node (collector config deleted after 2 days of no heartbeat
# - data is not deleted from Sumo Logic)
# Set this to false to keep logs around.
default['sumologic']['ephemeral'] = 'false'
default['sumologic']['syslog_cat'] = 'dev/kitchen/system'
default['sumologic']['security_cat'] = 'dev/kitchen/system'
