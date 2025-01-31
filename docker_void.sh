sudo xbps-install -Syu
sudo xbps-install -S docker

docker version

sudo ln -s /etc/sv/containerd/var/service

sudo ln -s /etc/sv/docker/var/service

sudo docker pull hello_world

docker run hello-world

echo docker compose

sudo mkdir -p /usr/local/lib/docker/cli-plugins
sudo curl -SL https://github.com/docker/compose/releases/latest/download/docker-compose-linux-x86_64 -o /usr/local/lib/docker/cli-plugins/docker-compose

sudo chmod +x /usr/local/lib/docker/cli-plugins/docker-compose
docker compose version
sudo usermod -aG docker $USER
