# AttackDeploy Server Deployment Kit

Includes Basic tooling for an attack server deployment
Inspiration taken from https://www.pentestpartners.com/security-blog/docker-for-hackers-a-pen-testers-guide/

# How to Build

```
docker build -t dockerattack/attackdeploy $(pwd)/
```

# How to Run

```
docker run -ti -v /tmp/AttackDeploy:/home/AttackDeploy dockerattack/attackdeploy
```

# Compose

Use [`docker-compose`](https://github.com/docker/compose/releases/)
to simplify this process and create a persistent `attackdeploy` container:

```bash
# pull & build images, create container
docker-compose up --build --no-start attackdeploy
# run container
docker run -ai attackdeploy
```
