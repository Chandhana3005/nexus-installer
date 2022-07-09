downloadBinary() {
  # wget https://download.sonatype.com/nexus/3/latest-unix.tar.gz
sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import http://pkg.jenkins.io/redhat-stable/jenkins.io.key
}

extractBinary() {
sudo yum install -y jenkins
}

# moveToOpt() {
#   # Enable moving of dotfolders using mv
#   shopt -s dotglob nullglob

#   sudo mkdir /opt/nexus/
#   sudo mv $dir/sonatype-work/ /opt/
#   sudo mv $dir/nexus*/* /opt/nexus/
# }
