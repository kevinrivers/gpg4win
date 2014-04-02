#
# Author:: Kevin Rivers (<kevin@kevinrivers.com>)
# Cookbook Name:: gpg4win
# Recipe:: install
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
version = node['gpg4win']['version']

# Control file - unattended installation
control_file = "#{Chef::Config['file_cache_path']}/gpg4win.ini"
template control_file do
  source 'gpg4win.ini.erb'
  rights :read, "Everyone"
end

# Install
windows_package "Gpg4win (#{version})" do
  source node['gpg4win']['pkg_url']
  action :install
  installer_type :custom
  options "/S /C=#{control_file} /D=#{install_path}"
end

# Create GPG Home
directory node['gpg4win']['home'] do
  rights :read, "Everyone"
  rights :full_control, "Administrators"
end

# Set GPG Home environment variable
env "GNUPGHOME" do
  value node['gpg4win']['home']
end

# Create key if requested
if node['gpg4win']['create_key']
  include_recipe "gpg4win::create_key"
end
