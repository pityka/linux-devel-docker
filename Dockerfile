FROM centos:7

RUN yum install -y gcc make gcc-c++ zlib-devel java clang which wget centos-release-scl
RUN yum install -y llvm-toolset-7
RUN scl enable llvm-toolset-7 bash
RUN curl https://bintray.com/sbt/rpm/rpm | tee /etc/yum.repos.d/bintray-sbt-rpm.repo && yum install -y sbt && sbt sbtVersion
RUN wget http://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm && rpm -ivh epel-release-latest-7.noarch.rpm
RUN yum install -y re2-devel libunwind-devel
