override['motd_attributes']['company'] ='The Galacti-OverRidden-con Co'
default['motd_attributes']['company'] ='The Galacticon Co'

default['motd_attributes']['tomcat_home'] = '/usr/local/tomcat6'
default['motd_attributes']['tomcat_bin'] = "#{node['motd_attributes']['tomcat_bin']}"
# /usr/local/tomcat6/bin/tomcat

default['motd_attributes']['message'] = 'Goovy (not ruby) day'

default['motd_attributes']['motd'] = [
  "This node is running on #{node['virtualization']['system']}",
  "This address of this node is #{node['ipaddress']}",
  node['motd_attributes']['message'],
  "Welcome to #{node['motd_attributes']['company']}",
  "JAVA_HOME on this node is #{node['motd_attributes']['java_home']}",
  "JAVA_BIN  on this node is #{node['motd_attributes']['java_bin']}",
  "TOMCAT_BIN on this node is #{node['motd_attributes']['tomcat_bin']}",
]
