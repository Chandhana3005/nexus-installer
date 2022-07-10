installJdk8() {
  # sudo apt-get install -y python-software-properties debconf-utils
  # sudo add-apt-repository -y ppa:webupd8team/java
  # sudo apt-get update
  # echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | sudo debconf-set-selections
  # sudo apt-get install -y oracle-java8-installer
if java -version 2>&1 >/dev/null | grep -q "java version" ; then
  echo "Java installing."
  sudo yum install -y java-11-openjdk-devel
else
  echo "Java NOT installed!"
fi
}
