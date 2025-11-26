FROM tomcat:9.0-jdk17

# إزالة التطبيقات الافتراضية
RUN rm -rf /usr/local/tomcat/webapps/*

# نسخ مشروعك مباشرة داخل ROOT
COPY ./src/main/webapp/ /usr/local/tomcat/webapps/ROOT/

EXPOSE 8080

CMD ["catalina.sh", "run"]
