This repository is to handle docker definition of garage dockers
Pre-requisite:-
a. Require docker login
b. sudo access to docker user (if not then execute command below without sudo included)

1. To create new docker tag:-
docker build -t amagidevops/garage:{tag_name} .

2.To upload new docker tag
docker push amagidevops/garage:{tag_name}
