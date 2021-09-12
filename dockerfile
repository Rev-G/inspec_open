FROM fedora:latest

#docker build -f dockerfile -t gpalmerjr/inspec-open:latest .

LABEL maintainer="gpalmerjr@gmail.com"

RUN dnf install ruby ruby-devel make gcc gcc-c++ -y && dnf clean all -y

RUN gem install inspec octokit wmi-lite
