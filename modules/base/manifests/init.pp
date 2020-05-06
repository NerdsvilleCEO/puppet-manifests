# This class provides base setup for a linux server
class base::linux {
  case $facts['os']['name'] {
    'Ubuntu': {
      include base::ubuntu
    }
    'RedHat': {
      include base::rhel
    }
  }
}
