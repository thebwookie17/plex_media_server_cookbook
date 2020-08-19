#
# Cookbook:: plex_media_server_cookbook
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

# Install updates
execute 'yum_update_upgrade' do
  command 'sudo yum update -y && sudo yum upgrade -y'
end

execute 'check_needs_restarting' do
  command 'needs-restarting'
end