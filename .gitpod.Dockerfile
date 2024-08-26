FROM ubuntu:20.04

# 设置环境变量以避免交互式提示
ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Etc/UTC

# 更新和安装必要的软件包
RUN apt-get update \
    && apt-get -y install sudo \
    && ln -fs /usr/share/zoneinfo/Etc/UTC /etc/localtime \
    && dpkg-reconfigure --frontend noninteractive tzdata \
    && sudo apt-get -y install \
    curl \
    software-properties-common \
    tzdata \
    python3.8 \
    python3-pip \
    && curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash - \
    && sudo apt-get install -y nodejs \
    && npm install -g npm@latest \
    && python3.8 -m pip install tensorspacejs \
    && echo "alias python=python3.8" >> ~/.bash_aliases \
    && . ~/.bash_aliases \
    && tensorspacejs_converter -init \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# 设置工作目录
WORKDIR /data

# 复制项目文件
#COPY . /data

# 设置默认命令
#CMD ["bash", "/data/converter.sh"]
