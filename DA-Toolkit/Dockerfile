# Kali
FROM kalilinux/kali-linux-docker

# Update and apt install programs
RUN apt-get update && apt-get upgrade -y && apt-get dist-upgrade -y && apt-get install -y \
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
RUN mkdir /usr/share/tools && cd /usr/share/tools
RUN git clone https://github.com/trustedsec/hate_crack
RUN git clone https://github.com/EmpireProject/Empire
RUN git clone https://github.com/byt3bl33d3r/DeathStar
RUN git clone https://github.com/lgandx/Responder
RUN git clone https://github.com/Kevin-Robertson/Inveigh
RUN git clone https://github.com/nettitude/PoshC2
RUN git clone https://github.com/CoreSecurity/impacket
RUN wget https://medium.com/@adam.toscher/top-five-ways-i-got-domain-admin-on-your-internal-network-before-lunch-2018-edition-82259ab73aaa -O DA.html
RUN git clone https://github.com/fox-it/mitm6
RUN git clone https://github.com/nccgroup/redsnarf
RUN git clone https://github.com/Neohapsis/creddump7
RUN git clone https://github.com/purpleteam/snarf
