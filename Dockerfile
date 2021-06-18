FROM tomcat:8.0-alpine

LABEL maintainer=”deepak@softwareyoga.com”
COPY ssl/* /usr/local/tomcat/conf/
COPY server.xml /usr/local/tomcat/conf/server.xml
ADD sample.war /usr/local/tomcat/webapps/

EXPOSE 8080 8443

CMD ["catalina.sh", "run"]
