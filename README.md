Gpg4win Cookbook
================

- Installs/Configures gpg4win
- Optionally allows first key to be created

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
    <td><code>node['gpg4win']['version']</code></td>
    <td>Version of gpg4win required</td>
    <td><code>2.2.1</code></td>
  </tr>
  <tr>
    <td><code>node['gpg4win']['pkg_url']</code></td>
    <td>URL for the gpg4win installer package, interpolated with version</td>
    <td><code>http://files.gpg4win.org/gpg4win-2.2.1.exe</code></td>
  </tr>
  <tr>
    <td><code>node['gpg4win']['home']</code></td>
    <td>Set home folder for gpg keys and configuration</td>
    <td><code>C:\encryption</code></td>
  </tr>
  <tr>
    <td><code>node['gpg4win']['install']['path']</code></td>
    <td>Installation path for gpg4win</td>
    <td><code>C:\Program Files (x86)\GNU\GnuPG</code></td>
  </tr>
  <tr>
    <td><code>node['gpg4win']['install']['gpgol']</code></td>
    <td>Install gpgol feature</td>
    <td><code>true</code></td>
  </tr>
  <tr>
    <td><code>node['gpg4win']['install']['gpgex']</code></td>
    <td>Install gpgex feature</td>
    <td><code>true</code></td>
  </tr>
  <tr>
    <td><code>node['gpg4win']['install']['kleopatra']</code></td>
    <td>Install kleopatra feature</td>
    <td><code>true</code></td>
  </tr>
  <tr>
    <td><code>node['gpg4win']['install']['gpa']</code></td>
    <td>Install gpa feature</td>
    <td><code>true</code></td>
  </tr>
  <tr>
    <td><code>node['gpg4win']['install']['claws_mail']</code></td>
    <td>Install claws mail feature</td>
    <td><code>false</code></td>
  </tr>
  <tr>
    <td><code>node['gpg4win']['install']['compendium']</code></td>
    <td>Install compendium feature</td>
    <td><code>true</code></td>
  </tr>
  <tr>
    <td><code>node['gpg4win']['install']['start_menu']</code></td>
    <td>Install start menu folder installation</td>
    <td><code>true</code></td>
  </tr>
  <tr>
    <td><code>node['gpg4win']['install']['desktop']</code></td>
    <td>Install desktop icon</td>
    <td><code>true</code></td>
  </tr>
  <tr>
    <td><code>node['gpg4win']['install']['quick_launch_bar']</code></td>
    <td>Set name of Start Menu Folder</td>
    <td><code>Gpg4win</code></td>
  </tr>
  <tr>
    <td><code>node['gpg4win']['install']['gpg.conf']</code></td>
    <td>Set gpa.conf path</td>
    <td><code>C:\encryption\gpa.conf</code></td>
  </tr>
  <tr>
    <td><code>node['gpg4win']['install']['gpg-agent.conf']</code></td>
    <td>Set gpa-agent.conf path</td>
    <td><code>C:\encryption\gpa-agent.conf</code></td>
  </tr>
  <tr>
    <td><code>node['gpg4win']['install']['trustlist.txt']</code></td>
    <td>Set trustlist.txt path</td>
    <td><code>C:\encryption\trustlist.txt</code></td>
  </tr>
  <tr>
    <td><code>node['gpg4win']['install']['dirmngr.conf']</code></td>
    <td>Set dirmngr.conf path</td>
    <td><code>C:\encryption\dirmngr.conf</code></td>
  </tr>
  <tr>
    <td><code>node['gpg4win']['install']['dirmngr_ldapserver.conf']</code></td>
    <td>Set dirmngr_ldapserver.conf path</td>
    <td><code>C:\encryption\dirmngr_ldapserver.conf</code></td>
  </tr>
  <tr>
    <td><code>node['gpg4win']['install']['scdaemon.conf']</code></td>
    <td>Set scdaemon.conf path</td>
    <td><code>C:\encryption\scdaemon.conf</code></td>
  </tr>
  <tr>
    <td><code>node['gpg4win']['install']['gpa.conf']</code></td>
    <td>Set gpa.conf path</td>
    <td><code>C:\encryption\gpa.conf</code></td>
  </tr>
  <tr>
    <td><code>node['gpg4win']['create_key']</code></td>
    <td>Boolean - Controls whether an initial GPG key is generated</td>
    <td><code>false</code></td>
  </tr>
  <tr>
    <td><code>node['gpg4win']['key']['real_name']</code></td>
    <td>Full Name</td>
    <td><code>nil</code></td>
  </tr>
  <tr>
    <td><code>node['gpg4win']['key']['comment']</code></td>
    <td>Comment about the key</td>
    <td><code>nil</code></td>
  </tr>
  <tr>
    <td><code>node['gpg4win']['key']['email']</code></td>
    <td>Email associated with the key</td>
    <td><code>nil</code></td>
  </tr>
  <tr>
    <td><code>node['gpg4win']['key']['passphrase']</code></td>
    <td>Optional Passphrase for the key. No encryption provided.</td>
    <td><code>nil</code></td>
  </tr>
  <tr>
    <td><code>node['gpg4win']['key']['key_type']</code></td>
    <td>Algorithm for Primary Key, RSA or DSA</td>
    <td><code>default (RSA)</code></td>
  </tr>
  <tr>
    <td><code>node['gpg4win']['key']['key_length']</code></td>
    <td>Length for Primary Key, 1024 - 4096</td>
    <td><code>default (2048)</code></td>
  </tr>
  <tr>
    <td><code>node['gpg4win']['key']['expiration_date']</code></td>
    <td>Number of days until expiration</td>
    <td><code>0</code></td>
  </tr>
</table>

Recipes
-------

### default

### install
- Installs desired version of gpg4win
- Provides custom installatation options with a control file
- Sets GNUPGHOME environment variable
- Creates GNUPGHOME
- Feature toggle for create_key

### create_key
- Creates a GPG key as defined in gpg4win['key'] if gpg4win['create_key'] is true.
- Minimally set realname, comment, email
- Sub-Key options are not exposed to avoid conflicts

### Example Usage:
run_list:
```
"recipe[gpg4win::install]"
```

node json:
```
"gpg4win" => {
  "create_key" => true,
  "key" => 
  {
    "real_name" => "Example Key",
    "comment" => "This is just an example",
    "email" => "user@example.com"
  }
}
```
This would result in:
- Gpg4win installed with defaults
- Default key generated with custom name, email and comment

License and Author
------------------

Author:: Kevin Rivers (<kevin@kevinrivers.com>)

Copyright:: 2014, Kevin Rivers

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
