# devops_project1


Step 1: Provision 2 Ec2 server jenkins_server and webapp_server
step 2: Install Docker on both server (use docker.sh script to install it)
step 3: install jenkins on jenkins_server (use jenkins.sh script to install it)
steps 4: open Jenkins_server and install "ssh agent" plugin
step 5: add new job in Jenkins "docker-webapp" (pipeline based)
add groovy script to jenkins

note: using jenskins withcredential (secret text), we keep the docker password as secret
add webapp-server ssh login via sshAgent client in jenkins


after creation pipeline & stages it will do following 

a) git checkout

b) build docker Image

c) push docker image to dockerHub

d) Run container on webapp_server by pulling the same image from dockerhub
remove old images/containers from webapp-server



You can access the website by accessing "<webapp-server's public IP>:9000" on your browser

ref: https://www.youtube.com/watch?v=ct_ZkMG7S8g&t=677s
