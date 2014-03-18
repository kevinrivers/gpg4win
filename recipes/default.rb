#
# Author:: Kevin Rivers (<kevin@kevinrivers.com>)
# Cookbook Name:: gpg4win
# Recipe:: default
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

# Download the appropiate version
version = node['gpg4win']['version']
gpg4win_pkg = "#{Chef::Config[:file_cache_path]}/gpg4win-#{version}.exe"
remote_file gpg4win_pkg do
  source node['gpg4win']['pkg_url']
  rights :read, "Everyone"
  backup 1
end

# Control file
control_file = "#{Chef::Config[:file_cache_path]}/gpg4win.ini"
template control_file do
  source 'gpg4win.ini.erb'
  rights :read, "Everyone"
end

windows_reboot 59 do
  reason "Reboot required after gpg4win install (ver: #{version})"
  action :nothing
end

# Run the installer
windows_batch "install_gpg4win" do
  code "#{Chef::Config[:file_cache_path]}/gpg4win-#{version}.exe /S /C=#{control_file} /D=#{install_path}"
  not_if {::File.exists?("#{install_path}/gpg2.exe")}
  notifies :request, 'windows_reboot[59]'
end

# Set GPG Home environment variable
env "GNUPGHOME" do
  value "#{node['gpg4win']['home']}"  
end
