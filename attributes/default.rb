#
# Author:: Kevin Rivers (<kevin@kevinrivers.com>)
# Cookbook Name:: gpg4win
# Attribute:: default
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

# Version
default['gpg4win']['version'] = "2.2.1"
default['gpg4win']['pkg_url'] = "http://files.gpg4win.org/gpg4win-#{node['gpg4win']['version']}.exe"

# Install options
default['gpg4win']['install']['path'] = "C:\\Program Files (x86)\\GNU\\GnuPG"
default['gpg4win']['install']['gpgol'] = true
default['gpg4win']['install']['gpgex'] = true
default['gpg4win']['install']['kleopatra'] = true
default['gpg4win']['install']['gpa'] = false
default['gpg4win']['install']['claws_mail'] = false
default['gpg4win']['install']['compendium'] = true

default['gpg4win']['install']['start_menu'] = true
default['gpg4win']['install']['desktop'] = false
default['gpg4win']['install']['quick_launch_bar'] = false
default['gpg4win']['install']['start_menu_folder'] = "Gpg4win"

# Configuration files
default['gpg4win']['home'] = "C:\\encryption"
default['gpg4win']['install']['gpg.conf'] = "#{node['gpg4win']['home']}\\gpg.conf"
default['gpg4win']['install']['gpg-agent.conf'] = "#{node['gpg4win']['home']}\\gpg-agent.conf"
default['gpg4win']['install']['trustlist.txt'] = "#{node['gpg4win']['home']}\\trustlist.txt"
default['gpg4win']['install']['dirmngr.conf'] = "#{node['gpg4win']['home']}\\dirmngr.conf.conf"
default['gpg4win']['install']['dirmngr_ldapserver.conf'] = "#{node['gpg4win']['home']}\\dirmngr_ldapserver.conf"
default['gpg4win']['install']['scdaemon.conf'] = "#{node['gpg4win']['home']}\\scdaemon.conf"
default['gpg4win']['install']['gpa.conf'] = "#{node['gpg4win']['home']}\\gpa.conf"
