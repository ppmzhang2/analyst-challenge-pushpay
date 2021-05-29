# Analyst Challenge - PushPay

## Install Dependencies

### Docker Engine

Docker's documentation has a [detailed guide](https://docs.docker.com/engine/install/) for its installation on a variety of operating systems. Particularly for Amazon Linux users a [docker developer guide](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/docker-basics.html) is available.

### Docker Compose

```shell
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
```

### Git

You need `git` and `git-lfs` to pull this repo:

```shell
sudo yum update -y
sudo yum install -y git
sudo amazon-linux-extras install epel -y
sudo yum-config-manager --enable epel
sudo yum install git-lfs
```
