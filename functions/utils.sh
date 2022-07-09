showpassword() {
  # sudo rm -rf nexus*/
  # sudo rm -rf latest-unix.tar.gz
  $JENKINS_HOME/secrets/initialAdminPassword
  cat /var/lib/jenkins/secrets/initialAdminPassword
}
