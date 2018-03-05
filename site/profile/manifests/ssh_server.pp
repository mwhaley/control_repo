class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCq56xMwuF66+G3ICkYFHn0dY94jtLkMb68Why99ndtQ/+2Kc0iMLKab+h3EtYClVsaJKjd3mfaGnKJ/gtqNAYhAc0c5pcNDyWSo5qI18OBAU57VymFkoOKZrNnNSuw6D2XrjuCea5G1gHFmuBb7YTj0aZsIiGCnoTGtV6t5FuHkkMtleZJQH+f/g++y7iVqsgtYr7r1ROkeRVFWsrwdB+T4nXoKJ7FW3pKSRrnf8R+9TGtMdGyLY/z01ePBZY6BhFzWazroRRbWCWtCiyFaIwg6k8lSr+kHlGOgrtU5hvNXyLrTDgheXdrdBzGahrRNXYYqGeYMJR9rDOJxXEWjifB',
  }  
}
