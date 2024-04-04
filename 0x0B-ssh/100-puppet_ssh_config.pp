# SSH configuration using puppet
# Change the first line containing the pattern 'PasswordAuthentication' to 'PasswordAuthentication no'
# Change the first line containing the pattern 'IdentityFile' to 'IdentityFile ~/.ssh/school'

exec { '/etc/ssh/ssh_config':
  command => "/bin/sed -i -e '/PasswordAuthentication/ c \
PasswordAuthentication no' -e '/IdentityFile/ c \
IdentityFile ~/.ssh/school' /etc/ssh/ssh_config",
  path    => '/usr/bin:/bin',
}
