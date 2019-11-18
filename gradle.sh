wget https://services.gradle.org/distributions/gradle-5.4.1-bin.zip -P /tmp
unzip -d /opt/gradle /tmp/gradle-*.zip

echo 'export GRADLE_HOME=/opt/gradle/gradle-5.4.1' >> ~/.bashrc
echo 'export PATH=${GRADLE_HOME}/bin:${PATH}' >> ~/.bashrc

. ~/.bashrc 

gradle wrapper --gradle-version 5.4.1 --distribution-type all
gradle wrapper 
./gradlew
