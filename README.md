Gpg4win Cookbook
================

Installs/Configures gpg4win

Requirements
------------

### Platform:

* Windows

### Cookbooks:

* windows

Attributes
----------

<table>
  <tr>
    <td>Attribute</td>
    <td>Description</td>
    <td>Default</td>
  </tr>
  <tr>
    <td><code>node['gpg']['version']</code></td>
    <td>Version of gpg4win required</td>
    <td><code>2.2.1</code></td>
  </tr>
  <tr>
    <td><code>node['gpg']['pkg_url']</code></td>
    <td>URL for the gpg4win installer package, interpolated with version</td>
    <td><code>http://files.gpg4win.org/gpg4win-2.2.1.exe</code></td>
  </tr>
  <tr>
    <td><code>node['gpg']['home']</code></td>
    <td>Set home folder for gpg keys and configuration</td>
    <td><code>C:\encryption</code></td>
  </tr>
  <tr>
    <td><code>node['gpg']['install']['path']</code></td>
    <td>Installation path for gpg4win</td>
    <td><code>C:\Program Files (x86)\GNU\GnuPG</code></td>
  </tr>
  <tr>
    <td><code>node['gpg']['install']['gpgol']</code></td>
    <td>Install gpgol feature</td>
    <td><code>true</code></td>
  </tr>
  <tr>
    <td><code>node['gpg']['install']['gpgex']</code></td>
    <td>Install gpgex feature</td>
    <td><code>true</code></td>
  </tr>
  <tr>
    <td><code>node['gpg']['install']['kleopatra']</code></td>
    <td>Install kleopatra feature</td>
    <td><code>true</code></td>
  </tr>
  <tr>
    <td><code>node['gpg']['install']['gpa']</code></td>
    <td>Install gpa feature</td>
    <td><code>true</code></td>
  </tr>
  <tr>
    <td><code>node['gpg']['install']['claws_mail']</code></td>
    <td>Install claws mail feature</td>
    <td><code>false</code></td>
  </tr>
  <tr>
    <td><code>node['gpg']['install']['compendium']</code></td>
    <td>Install compendium feature</td>
    <td><code>true</code></td>
  </tr>
  <tr>
    <td><code>node['gpg']['install']['start_menu']</code></td>
    <td>Install start menu folder installation</td>
    <td><code>true</code></td>
  </tr>
  <tr>
    <td><code>node['gpg']['install']['desktop']</code></td>
    <td>Install desktop icon</td>
    <td><code>true</code></td>
  </tr>
  <tr>
    <td><code>node['gpg']['install']['quick_launch_bar']</code></td>
    <td>Set name of Start Menu Folder</td>
    <td><code>Gpg4win</code></td>
  </tr>
  <tr>
    <td><code>node['gpg']['install']['gpg.conf']</code></td>
    <td>Set gpa.conf path</td>
    <td><code>C:\encryption\gpa.conf</code></td>
  </tr>
  <tr>
    <td><code>node['gpg']['install']['gpg-agent.conf']</code></td>
    <td>Set gpa-agent.conf path</td>
    <td><code>C:\encryption\gpa-agent.conf</code></td>
  </tr>
  <tr>
    <td><code>node['gpg']['install']['trustlist.txt']</code></td>
    <td>Set trustlist.txt path</td>
    <td><code>C:\encryption\trustlist.txt</code></td>
  </tr>
  <tr>
    <td><code>node['gpg']['install']['dirmngr.conf']</code></td>
    <td>Set dirmngr.conf path</td>
    <td><code>C:\encryption\dirmngr.conf</code></td>
  </tr>
  <tr>
    <td><code>node['gpg']['install']['dirmngr_ldapserver.conf']</code></td>
    <td>Set dirmngr_ldapserver.conf path</td>
    <td><code>C:\encryption\dirmngr_ldapserver.conf</code></td>
  </tr>
  <tr>
    <td><code>node['gpg']['install']['scdaemon.conf']</code></td>
    <td>Set scdaemon.conf path</td>
    <td><code>C:\encryption\scdaemon.conf</code></td>
  </tr>
  <tr>
    <td><code>node['gpg']['install']['gpa.conf']</code></td>
    <td>Set gpa.conf path</td>
    <td><code>C:\encryption\gpa.conf</code></td>
  </tr>
</table>

Recipes
-------

### default

- Installs desired version of gpg4win
- Provides custom installatation options with a control file
- Sets GNUPGHOME environment variable


License and Author
------------------

Author:: Kevin Rivers (<kevin@kevinrivers.com>)

Copyright:: 2014, Kevin Rivers

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
