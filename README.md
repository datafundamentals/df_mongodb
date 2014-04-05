# df_mongodb cookbook
this installs a standalone instance of mongodb and activates it from a local rpm. If you are looking for a source
# Requirements

This version is currently only supported for the following
 
 * Centos 6

this also requires you to have downloaded the RPM's prior to this. The link can be found at http://downloads-distro.mongodb.org/repo/redhat/os/x86_64/RPMS/ for future reference. 

# Usage
this is designed to work on our local Vagrant machines. Plans for cloud based delivery are coming later.

# Attributes

* default["df_mongodb"]["10gen"]["source"]: location of local RPM
* default["df_mongodb"]["server"]["source"]: location of local RPM

# Recipes

* default: installs and starts mongodb service.


# Author

Author:: Jeff Carapetyan (<jeff@datafundamentals.com>)
