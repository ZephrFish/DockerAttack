# Set up the basics 
# Leverage Kali Base Image
FROM kalilinux/kali-linux-docker

# Update off the bat
RUN apt update && apt-get upgrade -y && apt-get dist-upgrade -y

# Install the Core
RUN apt install sudo git wget curl git zip ccze byobu zsh golang  ufw python-pip  nikto dotdotpwn jsql nmap sqlmap sqlninja thc-ipv6 hydra metasploit-framework dirb -y

# Make Directory Structure
RUN mkdir /usr/share/wordlists
RUN mkdir /usr/share/tools
RUN mkdir /usr/share/tools/scripts/

# Pull Wordlists
RUN cd /usr/share/wordlists/
RUN git clone https://github.com/danielmiessler/SecLists.git 
RUN git clone https://github.com/danielmiessler/RobotsDisallowed
RUN cd SecLists
RUN tar xvzf rockyou.tar.gz

# Set up DNS Tooling
### Building Aquatone
FROM ruby
WORKDIR /

# Prepare
RUN apt-get update
RUN apt-get dist-upgrade -y

# Install normal Packages needed
RUN apt-get install -y -u apt-utils unzip nodejs wget curl jruby nano screen htop openssl git

# Install nodejs
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get install -y nodejs

# Installing the packages needed to run Nightmare
RUN apt-get install -y \
  xvfb \
  x11-xkb-utils \
  xfonts-100dpi \
  xfonts-75dpi \
  xfonts-scalable \
  xfonts-cyrillic \
  x11-apps \
  clang \
  libdbus-1-dev \
  libgtk2.0-dev \
  libnotify-dev \
  libgnome-keyring-dev \
  libgconf2-dev \
  libasound2-dev \
  libcap-dev \
  libcups2-dev \
  libxtst-dev \
  libxss1 \
  libnss3-dev \
  gcc-multilib \
  g++-multilib

# Use aq domain.com to automated all options of aquatone.
RUN wget "https://gist.githubusercontent.com/random-robbie/beae1991e9ad139c6168c385d8a31f7d/raw/" -O /bin/aq
RUN chmod 777 /bin/aq

#install aquatone
RUN gem install aquatone

# Clone down other DNS tooling
RUN mkdir /usr/share/tools/DNS
RUN cd /usr/share/tools/DNS
RUN git clone https://github.com/lorenzog/dns-parallel-prober
RUN git clone https://github.com/aboul3la/Sublist3r
RUN git clone https://github.com/guelfoweb/knock
RUN git clone https://github.com/anshumanbh/brutesubs
RUN git clone https://github.com/jhaddix/domain
RUN apt install -f -y fierce

# CMS Tooling
RUN cd /usr/share/tools
RUN mkdir CMS && cd CMS
RUN git clone https://github.com/droope/droopescan
RUN apt install -y wpscan
RUN git clone https://github.com/Dionach/CMSmap

# Directory Busting
RUN cd /usr/share/tools
RUN mkdir DirBusting && cd DirBusting
RUN apt install dirb -y
RUN git clone https://github.com/OJ/gobuster
RUN git clone https://github.com/henshin/filebuster

# Git Recon
RUN mkdir /usr/share/tools/git
RUN cd /usr/share/tools/git
RUN git clone https://github.com/libcrack/gitrecon
RUN git clone https://github.com/dxa4481/truffleHog
RUN git clone https://github.com/michenriksen/gitrob


# OSINT Tooling 
RUN mkdir /usr/share/tools/OSINT
RUN cd /usr/share/tools/OSINT
RUN apt install -y recon-ng
RUN git clone https://github.com/smicallef/spiderfoot
RUN git clone https://github.com/ZephrFish/GoogD0rker
RUN git clone https://github.com/GerbenJavado/LinkFinder 

# HTTP Analysis
RUN mkdir /usr/share/tools/HTTPAnal
RUN cd /usr/share/tools/HTTPAnal
RUN git clone https://github.com/ChrisTruncer/EyeWitness 
RUN git clone https://github.com/robertdavidgraham/masscan

# Optional
# BBF Tooling (There will be some dupes SORRY!
RUN mkdir /usr/share/tools/BBF
RUN cd /usr/share/tools/BBF
RUN for y in $(wget https://bugbountyforum.com/tools/ &&  grep "/tools/" index.html | cut -d "=" -f 2 | cut -d "/" -f 2,3 | grep -v ">"); do wget https://bugbountyforum.com/$y; done && for x in $(ls); do grep "href=" $x | cut -d "=" -f 2 | grep github.com | cut -d "/" -f 3,4,5 | cut -d " " -f 1 |sed -e 's/^"//' -e 's/"$//' | grep -v "gist" >> Repos.txt; done && for a in $(cat Repos.txt);do git clone https://$a; done && find . -maxdepth 1 -type f -delete

RUN echo "That's all folks! You're good to go hack the planet!"

# set to bash so you can set keys before running aquatone.
ENTRYPOINT ["/bin/bash"]

#  Set working directory
WORKDIR /root/
