# Execute a command with manifest

exec { 'pkill -f killmenow':
  command => 'pkill -f killmenow',  # Command to run
  path    => '/usr/bin:/bin'        # Which command path should be used
}
