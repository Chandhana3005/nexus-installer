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
  
  serviceFile="/etc/systemd/system/nexus.service"

  sudo touch $serviceFile
  sudo chmod 777 $serviceFile
  sudo cp $dir/service.txt $serviceFile
}

enableService() {
  sudo systemctl daemon-reload
  sudo systemctl enable nexus.service
}

startService() {
  sudo systemctl start nexus
}
