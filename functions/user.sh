addNexusUser() {
  sudo adduser nexus --gecos "" --disabled-password
  echo nexus:nexus | sudo chpasswd
}

makeNexusUserOwner() {
  sudo chown -R nexus:nexus /opt/sonatype-work/
  sudo chown -R nexus:nexus /opt/nexus/
}
