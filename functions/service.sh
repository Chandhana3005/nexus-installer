setNexusHome() {
 sudo  echo 'NEXUS_HOME="opt/nexus/"' | sudo tee -a /home/nexus/.bashrc > /dev/null
}

setRunAsUser() {
  filePath="/opt/nexus/bin/nexus.rc"

  sudo rm -rf $filePath
  sudo echo 'run_as_user="nexus"' | sudo tee -a $filePath > /dev/null
  sudo chown -R nexus:nexus $filePath
  sudo chmod -R 664 $filePath
}

createServiceFile() {
  setNexusHome
  setRunAsUser

  sudo touch /etc/systemd/system/nexus.service
  sudo chmod 777 /etc/systemd/system/nexus.service
  sudo cp $dir/service.txt /etc/systemd/system/nexus.service
}

enableService() {
  sudo systemctl daemon-reload
  sudo systemctl enable nexus.service
}

startService() {
  sudo systemctl start nexus
}
