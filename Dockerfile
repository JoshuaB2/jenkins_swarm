FROM ubuntu:14.04

RUN apt-get -y update
RUN apt-get -y install git openjdk-7-jdk openssh-client wget

# Adding ons user
RUN adduser jenkins
RUN echo 'jenkins:jenkins2015' | chpasswd

#Install Jenkins swarm client
RUN wget http://maven.jenkins-ci.org/content/repositories/releases/org/jenkins-ci/plugins/swarm-client/1.22/swarm-client-1.22-jar-with-dependencies.jar -O /usr/local/bin/swarm-client.jar 

USER jenkins
RUN ssh-keygen -q -t rsa -N '' -f ~/.ssh/id_rsa
ENTRYPOINT ["java", "-jar", "/usr/local/bin/swarm-client.jar"]
