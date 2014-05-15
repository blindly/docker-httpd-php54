FROM centos:latest
MAINTAINER github.com/blindly

# Install HTTPD
RUN yum install httpd php* -y

# Install EPEL
RUN rpm -i http://mirrors.servercentral.net/fedora/epel/6/i386/epel-release-6-8.noarch.rpm

# Install MBstring
RUN yum install mbstring php-mbstring -y

# Install Mcrypt
RUN yum install mcrypt php-mcrypt -y

# Add HTTPD Conf
ADD httpd.conf /etc/httpd/conf/httpd.conf

EXPOSE 80

CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
