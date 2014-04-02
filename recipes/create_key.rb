#
# Author:: Kevin Rivers (<kevin@kevinrivers.com>)
# Cookbook Name:: gpg4win
# Recipe:: create_key
#
# Copyright 2014, Kevin Rivers (<kevin@kevinrivers.com>)
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

install_path = node['gpg4win']['install']['path']
home_path = node['gpg4win']['home']
key = node['gpg4win']['key']

# Return if any values are nil
if key.select {|k,v| v == nil && k != "passphrase"}.count > 0
  log "GPG key hash has nil attributes" do
    message "Key generation was requested, but key hash has nil attributes." \
          " Only passphrase can be nil.\n#{key}"
    level   :info
    action  :write
  end
  return
end

# Key attributes
key_type        = key['key_type']
key_length      = key['key_length']
expiration_date = key['expiration_date']
real_name       = key['real_name']
comment         = key['comment']
email           = key['email']
passphrase      = key['passphrase'].nil? ? "%no-ask-passphrase" : "Passphrase: #{key['passphrase']}"

# Batch Key Template
key_file = "#{Chef::Config['file_cache_path']}/gpg4win_key.txt"
template key_file do
  source 'key.txt.erb'
  rights :read, "Everyone"
  variables({
      :key_type           => key_type,
      :key_length         => key_length,
      :expiration_date    => expiration_date,
      :real_name          => real_name,
      :comment            => comment,
      :email              => email,
      :passphrase         => passphrase
    })
end

# Create key, set env assuming reboot didn't occur
windows_batch "create_gpg_key_#{real_name}" do
  cwd home_path
  code "SET GNUPGHOME=#{home_path}\n\"#{install_path}/gpg2.exe\" --batch --gen-key #{key_file}"
  not_if { ::File.exists?("#{home_path}/pubring.gpg")}
end
