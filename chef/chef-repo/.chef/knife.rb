# See http://docs.chef.io/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "willdevops"
client_key               "#{current_dir}/willdevops.pem"
validation_client_name   "willdevopsorg-validator"
validation_key           "#{current_dir}/willdevopsorg-validator.pem"
chef_server_url          "https://api.chef.io/organizations/willdevopsorg"
cookbook_path            ["#{current_dir}/../cookbooks"]
