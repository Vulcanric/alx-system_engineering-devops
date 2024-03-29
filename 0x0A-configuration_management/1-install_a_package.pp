# Installs `flask` from `pip3`

package { 'flask':
  ensure   => '2.1.0',
  provider => pip3,
}

# Install flask requirement: Werkzeug also

package { 'Werkzeug':
  ensure   => '2.1.1',
  provider => pip3,
}

# The above resource declaration is same as running the following command on the cli
# $ pip3 install flask==2.1.0
# $ pip3 install Werkzeug==2.1.1
