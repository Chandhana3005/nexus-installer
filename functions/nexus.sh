downloadBinary() {
  wget https://download.sonatype.com/nexus/3/latest-unix.tar.gz
}

extractBinary() {
  sudo tar xvzf latest-unix.tar.gz
}

moveToOpt() {
  # Enable moving of dotfolders using mv
  shopt -s dotglob nullglob

  sudo mkdir /opt/nexus/
  sudo mv $dir/sonatype-work/ /opt/
  sudo mv $dir/nexus*/* /opt/nexus/
}
