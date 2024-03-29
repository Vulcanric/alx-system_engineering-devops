<img src='./project_img/configuration_management.jpg' width="200" height="200">

## Configuration Management (Puppet)
This project was done to get familiar with Configuration Management(CM) as a devOps engineer. **Puppet** was used as the Configuration Management Tool with very basic tasks done to get familiar with the Puppet syntax.

### What's Configuration Management, CM?
Configuration Management is the process of configuring networking machines inorder to reach or maintain a desired state.

### What's Puppet?
Puppet is a CM tool with a server/client architecture designed with the ability to work on very large heterogenous networking infrastruture. It uses a Declarative language syntax, which only tells what to do, and not how to do it. The Puppet server and client machines communicates using the Secure Socket Layout (SSL) which ensures an encrypted channel between both machines.

### Concepts used in Puppet
- **Manifests** - Actual codes for configuring clients.
- **Templates** - Data combined with Manifests to render final document.
- **Files** - Static contents that can be downloaded by clients.
- **CA** - Stands for Certificate Authority; allows the master or server to sign client's certificate, thereby allowing further interaction between both machines.
- **Modules** - Comprises of Manifests, Templates and Files combined
- **The Puppet Master** - The controlling machine that controls other machine (clients). Contains Modules and CA.
- **The Puppet Client** - The machine to be configured. Contains:
	- **The Agent** - Responsible for maintaining constant interaction with The Master.
	- **Facter** - Collects data on the current state of the client and sends it to the master for inspection.

### The Puppet Manifest Syntax
```ruby
Resourcetype { 'title'
	Attribute_name_1 => attribute_value,
	Attribute_name_2 => attribute_value,
}
```

For more information on Puppet, check out the **Puppet** [docs](https://www.puppet.com/docs/puppet/5.5/puppet_index.html)
