FROM tomcat:latest
COPY /target/LoginWebApp.war /usr/local/tomcat/webapps
WORKDIR /usr/local/tomcat/webapps
RUN sudo chmod -R 700 /usr/local/tomcat/webapps
EXPOSE 8080
CMD ["catalina.sh" ,"run"]
