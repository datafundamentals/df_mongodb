# df_mongodb cookbook
this installs a standalone instance of mongodb and activates it from a local rpm. If you are looking for a source
# Requirements

* NOTE1: This cookbook (along with almost all dataFundamentals cookbooks) requires that you have local binaries to install other programs. If you are looking to use these as is, download the df_base cookbook to pull all the repositories. If you are looking to only pull certain binaries, please select the install flavor you would like in the attributes. The only one currently available is for Maven
*NOTE2: Please look at the .kitchen.yml file and adjust the synced folder from what we have run or it won't work
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
