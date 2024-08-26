#5 7.270 /usr/sbin/dpkg-reconfigure: tzdata is not installed
#5 ERROR: process "/bin/sh -c apt-get update     && apt-get -y install sudo     && ln -fs /usr/share/zoneinfo/Etc/UTC /etc/localtime     && dpkg-reconfigure --frontend noninteractive tzdata     && sudo apt-get -y install     curl     software-properties-common     tzdata     python3.8     python3-pip     && curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -     && sudo apt-get install -y nodejs     && npm install -g npm@latest     && python3.8 -m pip install tensorspacejs     && echo \"alias python=python3.8\" >> ~/.bash_aliases     && . ~/.bash_aliases     && tensorspacejs_converter -init     && apt-get clean     && rm -rf /var/lib/apt/lists/*" did not complete successfully: exit code: 1
------
 > [2/3] RUN apt-get update     && apt-get -y install sudo     && ln -fs /usr/share/zoneinfo/Etc/UTC /etc/localtime     && dpkg-reconfigure --frontend noninteractive tzdata     && sudo apt-get -y install     curl     software-properties-common     tzdata     python3.8     python3-pip     && curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -     && sudo apt-get install -y nodejs     && npm install -g npm@latest     && python3.8 -m pip install tensorspacejs     && echo "alias python=python3.8" >> ~/.bash_aliases     && . ~/.bash_aliases     && tensorspacejs_converter -init     && apt-get clean     && rm -rf /var/lib/apt/lists/*:
7.059 debconf: delaying package configuration, since apt-utils is not installed
7.089 Fetched 515 kB in 1s (485 kB/s)
7.112 Selecting previously unselected package sudo.
(Reading database ... 4124 files and directories currently installed.)
7.117 Preparing to unpack .../sudo_1.8.31-1ubuntu1.5_amd64.deb ...
7.120 Unpacking sudo (1.8.31-1ubuntu1.5) ...
7.179 Setting up sudo (1.8.31-1ubuntu1.5) ...
7.270 dpkg-query: package 'tzdata' is not installed and no information is available
7.270 Use dpkg --info (= dpkg-deb --info) to examine archive files.
7.270 /usr/sbin/dpkg-reconfigure: tzdata is not installed
------
.gitpod.Dockerfile:8
--------------------
   7 |     # 更新和安装必要的软件包
   8 | >>> RUN apt-get update \
   9 | >>>     && apt-get -y install sudo \
  10 | >>>     && ln -fs /usr/share/zoneinfo/Etc/UTC /etc/localtime \
  11 | >>>     && dpkg-reconfigure --frontend noninteractive tzdata \
  12 | >>>     && sudo apt-get -y install \
  13 | >>>     curl \
  14 | >>>     software-properties-common \
  15 | >>>     tzdata \
  16 | >>>     python3.8 \
  17 | >>>     python3-pip \
  18 | >>>     && curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash - \
  19 | >>>     && sudo apt-get install -y nodejs \
  20 | >>>     && npm install -g npm@latest \
  21 | >>>     && python3.8 -m pip install tensorspacejs \
  22 | >>>     && echo "alias python=python3.8" >> ~/.bash_aliases \
  23 | >>>     && . ~/.bash_aliases \
  24 | >>>     && tensorspacejs_converter -init \
  25 | >>>     && apt-get clean \
  26 | >>>     && rm -rf /var/lib/apt/lists/*
  27 |     
--------------------
error: failed to solve: process "/bin/sh -c apt-get update     && apt-get -y install sudo     && ln -fs /usr/share/zoneinfo/Etc/UTC /etc/localtime     && dpkg-reconfigure --frontend noninteractive tzdata     && sudo apt-get -y install     curl     software-properties-common     tzdata     python3.8     python3-pip     && curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -     && sudo apt-get install -y nodejs     && npm install -g npm@latest     && python3.8 -m pip install tensorspacejs     && echo \"alias python=python3.8\" >> ~/.bash_aliases     && . ~/.bash_aliases     && tensorspacejs_converter -init     && apt-get clean     && rm -rf /var/lib/apt/lists/*" did not complete successfully: exit code: 1
{"@type":"type.googleapis.com/google.devtools.clouderrorreporting.v1beta1.ReportedErrorEvent","command":"build","error":"exit status 1","file":"build.go:44","func":"func1","level":"error","message":"build failed","serviceContext":{"service":"bob","version":""},"severity":"ERROR","time":"2024-08-26T00:06:10.503395687Z"}
exit

🍊 This task ran as a workspace prebuild


Error: headless task failed: exit status 1
