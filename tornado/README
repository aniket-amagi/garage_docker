DOCKER
======
 @build
docker build -t <IMAGE_NAME> .
e.g.
0.a. cd {directory}/garage
1. docker build -f workflows/tornado/docker/Dockerfile -t amagidevops/garage:segmentation .

docker push <TAG>
e.g. docker push amagidevops/garage:segmentation


To make this docker run by AWS Batch:
1. You need to configure compute environment as follow:-

Service rolearn:aws:iam::{account_id}:role/MAPSOR-US-EAST-1-6AZ-BatchServiceRole-12D2WC8CZPMSU
Minimum vCPUs:0
Desired vCPUs:4
Maximum vCPUs:256
Instance typesp2.xlarge
Allocation strategy:BEST_FIT_PROGRESSIVE
Instance rolearn:aws:iam::{account_id}:instance-profile/MAPSOR-US-EAST-1-6AZ-IamInstanceProfile-1MBK8N6RW0D5N
AMI id:ami-02a722f3a63d73b04

2. You need to create Job queue using above defined compute environment.
3. Also AMI mentioned above should have updated and working ecs-agent, also we need to pull docker config file in the
following location : /etc/ecs/ecs.config

4. The file ecs.config should be as follow":-
ECS_ENGINE_AUTH_TYPE=docker
ECS_ENGINE_AUTH_DATA={"https://index.docker.io/v1/":{"username":"{UserName}","password":"{Password}","email":"{Docker Email Address}"}}

PlaceHolders :- 1.UserName, 2.Password, 3.Docker Email Address


