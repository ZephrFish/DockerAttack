# Some basic tooling for conducting IT Health Checks
Includes BuildReview tools, Network Segragation & Basic Inf
Inspiration taken from https://www.pentestpartners.com/security-blog/docker-for-hackers-a-pen-testers-guide/

# How to Build

```
docker build -t dockerattack/ithc $(pwd)/
```

# How to Run

```
docker run -ti -p 80:80 -p 443:443 -p 8080:8080 -v /root/clients:/clients dockerattack/ithc
```


