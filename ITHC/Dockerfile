# From the Kali linux base image
FROM kalilinux/kali-linux-docker

# Update and apt install programs
RUN apt-get update && apt-get upgrade -y && apt-get dist-upgrade -y && apt-get install -y \
 exploitdb \
 exploitdb-bin-sploits \
 git \
 gdb \
 golang \
 ccze \
 byobu \
 tar \
 metasploit-framework \
 gobuster \
 hashcat \
 hydra \
 man-db \
 minicom \
 nasm \
 nmap \
 sqlmap \
 sslscan \
 wordlists \
 tmux \ 
 thc-ipv6 

# Create known_hosts for git cloning
RUN touch /root/.ssh/known_hosts
# Add host keys
RUN ssh-keyscan bitbucket.org >> /root/.ssh/known_hosts
RUN ssh-keyscan github.com >> /root/.ssh/known_hosts

# Clone git repos
# Set up folders for BR/Seg/Inf
RUN mkdir /usr/share/tools/
RUN mkdir /usr/share/tools/NetSeg/
RUN git clone https://github.com/commonexploits/vlan-hopping /usr/share/tools/NetSeg/
RUN mkdir /usr/share/tools/BuildReview/
RUN wget https://raw.githubusercontent.com/ZephrFish/RandomScripts/master/UbuntuBR.sh  -O /usr/share/tools/BuildReview/

# Wordlists
RUN mkdir /usr/share/tools/wordlists/
RUN git clone https://github.com/danielmiessler/SecLists /usr/share/tools/wordlists
RUN git clone https://github.com/danielmiessler/RobotsDisallowed  /usr/share/tools/wordlists/

# WIP
