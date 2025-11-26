FROM tomcat:9.0-jdk17

# حذف التطبيقات الافتراضية
RUN rm -rf /usr/local/tomcat/webapps/*

# نسخ ملف WAR إلى Tomcat
COPY target/LoginV.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

CMD ["catalina.sh", "run"]
