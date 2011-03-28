require 'pathname'
current_dir = Pathname(__FILE__).parent
log_level :debug
log_location $stdout
node_name "bddmon"
validation_client_name "chef-validator"
validation_key "#{(current_dir+'..'+'..'+'..'+'..'+'/chefserver/etc/validation.pem').to_s}"
client_key "#{current_dir.parent}/etc/client.pem"
#validation_key "/home/hedge/chef/kitchens/chefserver/etc/validation.pem"
#client_key "/home/hedge/chef/kitchens/development/nodes/bddmon/etc/client.pem"
chef_server_url "http://33.33.33.254:4000"
cache_type 'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path ["#{current_dir}/../cookbooks","#{current_dir}/../site-cookbooks"]

# EC2:
knife[:aws_access_key_id] = ENV['AWS_ACCESS_KEY'] if ENV['AWS_ACCESS_KEY']
knife[:aws_secret_access_key] =  ENV['AWS_SECRET_KEY'] if ENV['AWS_SECRET_KEY']
 
# Rackspace:
knife[:rackspace_api_key]  = ENV['RS_API_KEY'] if ENV['RS_API_KEY']
knife[:rackspace_api_username] = ENV['RS_API_USERNAME'] if ENV['RS_API_USERNAME']
 
# Slicehost
knife[:slicehost_password] = ENV['SH_PASSWORD'] if ENV['SH_PASSWORD']
 
# Terremark
knife[:terremark_password] = ENV['TM_PASSWORD'] if ENV['TM_PASSWORD']
knife[:terremark_username] = ENV['TM_USERNAME'] if ENV['TM_USERNAME']
knife[:terremark_service]  = ENV['TM_SERVICE'] if ENV['TM_SERVICE']

