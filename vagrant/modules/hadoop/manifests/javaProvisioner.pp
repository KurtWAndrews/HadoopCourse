# javaProvisioner.pp

class hadoop::javaProvisioner {
  package { "openjdk-6-jdk" :
    ensure => present,
    require => Exec['apt-get update'],
  }
}
