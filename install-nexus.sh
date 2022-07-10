#!/bin/bash

export dir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
echo "Base-directory set to $dir"

source $dir/functions/jdk.sh
source $dir/functions/jenkins.sh
# source $dir/functions/user.sh
source $dir/functions/service.sh
source $dir/functions/utils.sh

################################################################################
# Install JDK 8 using PPA
################################################################################

installJdk8

################################################################################
# Setup nexus
################################################################################

downloadBinary
extractBinary
# moveToOpt

################################################################################
# Add nexus user
################################################################################

# addNexusUser
# makeNexusUserOwner

################################################################################
# Create the nexus service
################################################################################

# createServiceFile
enableService
startService
enablefirewallService

################################################################################
# Remove downloaded archive and extracted folders
################################################################################

showpassword
