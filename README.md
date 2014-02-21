DESCRIPTION
===========
This cookbook is just a simple recipe to set the PATH on the target machine.  It has only been tested with vagrant's Precise64 Ubuntu box.

REQUIREMENTS
============
N/A

ATTRIBUTES
==========
:setpath:path (default: "/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/zend/bin")

USAGE 
=====
config.vm.provision :chef_solo do |chef|
   chef.cookbooks_path = "~/cookbooks"
   chef.add_recipe "setpath"
   chef.json = {
     :setpath => {
          :path => "/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/zend/bin:/usr/test"
      }
    }
end
