# AttackDeploy Server Deployment Kit

Includes Basic tooling for an attack server deployment
Inspiration taken from https://www.pentestpartners.com/security-blog/docker-for-hackers-a-pen-testers-guide/

# How to Build

```
docker build -t dockerattack/attackdeploy $(pwd)/
```

# How to Run

```
docker run -ti -p 80:80 -p 443:443 -p 8080:8080 -v /tmp/AttackDeploy:/home/AttackDeploy dockerattack/attackdeploy
```


