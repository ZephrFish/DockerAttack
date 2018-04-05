# From the Kali linux base image
FROM kalilinux/kali-linux-docker:latest

# Update and apt install programs. Don't dist-upgrade with docker.
RUN apt-get update && apt-get upgrade -y && apt-get install -y \
 exploitdb \
 exploitdb-bin-sploits \
 git \
 gdb \
 golang \
 ccze \
 byobu \
 gobuster \
 hashcat \
 hydra \
 man-db \
 minicom \
 nasm \
 nmap \
 yersinia \
 tshark \
 arp-scan \
 ethtool \
 vlan \
 sqlmap \
 sslscan \
 wordlists \
 tmux \ 
 python \
 thc-ipv6 

# Create known_hosts for git cloning
RUN mkdir /root/.ssh/ && touch /root/.ssh/known_hosts

# Add host keys
RUN ssh-keyscan bitbucket.org >> /root/.ssh/known_hosts
RUN ssh-keyscan github.com >> /root/.ssh/known_hosts

# Clone git repos
# Set up folders for BR/Seg/Inf
RUN mkdir -p /usr/share/tools/NetSeg/
RUN git clone https://github.com/commonexploits/vlan-hopping /usr/share/tools/NetSeg/vlanhop
RUN mkdir /usr/share/tools/BuildReview/
RUN wget https://raw.githubusercontent.com/ZephrFish/RandomScripts/master/UbuntuBR.sh  -O /usr/share/tools/BuildReview/UbntBR.sh

# Pull down prettifier scripts
RUN mkdir /usr/share/tools/reporting
RUN git clone https://github.com/cornerpirate/ReportCompiler /usr/share/tools/reporting/rc
RUN git clone https://github.com/cornerpirate/nmap-summariser /usr/share/tools/reporting/nmapsum

# Wordlists
RUN git clone https://github.com/danielmiessler/SecLists /usr/share/wordlists/seclists
RUN git clone https://github.com/danielmiessler/RobotsDisallowed /usr/share/wordlists/robotsdisallowed
RUN cd /usr/share/wordlists/seclists/Passwords/Leaked-Databases && tar xvzf rockyou.txt.tar.gz

# Set entrypoint and working directory
WORKDIR /root/

# Expose the Key ports
# Web Ports for Fun
EXPOSE 80/tcp 443/tcp 8080/tcp
