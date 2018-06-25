# All bad things start with Kali
FROM kalilinux/kali-linux-docker:latest

# Update and apt install programs. Don't dist-upgrade with docker.
RUN apt-get update && apt-get upgrade -y && apt-get install -y \
 exploitdb \
 exploitdb-bin-sploits \
 git \
 gobuster \
 hashcat \
 hydra \
 man-db \
 nasm \
 nmap \
 sqlmap \
 sslscan \
 wordlists

# Making our tools dir
RUN mkdir -p /usr/share/tools/RT
RUN mkdir /usr/share/wordlists

# Clone down some basic things
RUN git clone https://github.com/lgandx/Responder /usr/share/tools/RT/responder
