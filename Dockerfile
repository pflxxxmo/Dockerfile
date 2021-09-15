FROM centos:7

RUN yum install -y epel-release && yum update -y && yum install -y nginx
RUN rm -f /usr/share/nginx/html/index.html \
&& echo "HELLO!? dzmitryasetnik/nginx:3-alpine" > /usr/share/nginx/html/index.html

EXPOSE 80

ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]