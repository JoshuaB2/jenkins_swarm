Doccker Jenkins Node
===

###Dependencie
Additional dependencies can be added via apt-get or the recommended installation process.

###SSH Keys
A ssh key will be automatically generated for the jenkins user. If a specific ssh key is needed then create the .ssh
directory under the jenkins home directory, add the ssh private and public keys then set the permissions for the key
files and the .ssh directory.

###Starting the node
The swarm node can be started by passing the swarm client arguments at the end of the docker command.<br>
docker run jenkins-swarm-node -master http://1.2.3.4:8080
