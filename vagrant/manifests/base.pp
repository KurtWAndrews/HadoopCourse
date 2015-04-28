# base.pp

group { "puppet":
  ensure => "present",
}

$hadoop_home = "/home/vagrant"

Exec { path => [ "/bin/", "/sbin/" , "/usr/bin/", "/usr/sbin/" ] }
exec { 'apt-get update':
  command => 'apt-get update',
}

include hadoop 

