# Kali
FROM kalilinux/kali-linux-docker:latest

# Update and apt install programs. Don't dist-upgrade with docker.
RUN apt-get update && apt-get upgrade -y && apt-get install -y \
 exploitdb \
 exploitdb-bin-sploits \
 git \
 gdb \
 gobuster \
 hashcat \
 john \
 hydra \
 man-db \
 python-impacket \
 minicom \
 nasm \
 nmap \
 sqlmap \
 sslscan \
 wordlists

# Make Attacky things
RUN mkdir /usr/share/tools/ && cd /usr/share/tools/ && \
	git clone https://github.com/trustedsec/hate_crack && \
	git clone https://github.com/EmpireProject/Empire && \
	git clone https://github.com/byt3bl33d3r/DeathStar && \
	git clone https://github.com/lgandx/Responder && \
	git clone https://github.com/Kevin-Robertson/Inveigh && \
	git clone https://github.com/nettitude/PoshC2 && \
	git clone https://github.com/CoreSecurity/impacket && \
	wget https://medium.com/@adam.toscher/top-five-ways-i-got-domain-admin-on-your-internal-network-before-lunch-2018-edition-82259ab73aaa -O /usr/share/tools/DA.html
	git clone https://github.com/fox-it/mitm6 && \
	git clone https://github.com/nccgroup/redsnarf && \
	git clone https://github.com/Neohapsis/creddump7 && \
	git clone https://github.com/purpleteam/snarf

RUN echo "Lets get some hashes!"
