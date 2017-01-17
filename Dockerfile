FROM centos:7

RUN yum install -y gcc libffi-devel python-devel openssl-devel epel-release
RUN yum install python-pip -y
RUN pip install --user azure-cli

ENV PATH=$PATH:/root/.local/bin

CMD /sbin/init
