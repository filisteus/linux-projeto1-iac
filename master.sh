
#!/bin/bash
sudo docker swarm init --advertise-addr=192.168.56.110
sudo docker swarm join-token worker | grep docker > /vagrant/worker.sh
sudo docker volume create portainer_data
sudo docker run -d -p 8000:8000 -p 9443:9443 --name portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:latest
