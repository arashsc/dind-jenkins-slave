FROM jenkins/ssh-slave
RUN  curl -sSL https://get.docker.com/ | sh
RUN apt-get update &&\
    apt-get install -y openjdk-8-jdk python python-pip &&\
    apt-get clean -y && rm -rf /var/lib/apt/lists/*
RUN  pip install setuptools
RUN pip install ansible-container[docker,k8s,openshift]
