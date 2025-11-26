FROM tomcat:9.0-jdk17

RUN apt-get update && apt-get install -y nano && apt-get install -y --no-install-recommends \
    openjdk-17-jdk && rm -rf /var/lib/apt/lists/*

RUN rm -rf /usr/local/tomcat/webapps/*

RUN mkdir -p /usr/local/tomcat/webapps/ROOT/WEB-INF/classes

COPY ./src/main/webapp/ /usr/local/tomcat/webapps/ROOT/

COPY ./src/main/java/ /tmp/java/

RUN javac -cp "/usr/local/tomcat/lib/*" -d /usr/local/tomcat/webapps/ROOT/WEB-INF/classes $(find /tmp/java -name "*.java")

EXPOSE 8080

CMD ["catalina.sh", "run"]
