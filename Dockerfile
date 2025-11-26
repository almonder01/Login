FROM tomcat:9.0-jdk17

# حذف تطبيقات Tomcat الافتراضية
RUN rm -rf /usr/local/tomcat/webapps/*

# نسخ JSP + HTML إلى ROOT
COPY ./src/main/webapp/ /usr/local/tomcat/webapps/ROOT/

# نسخ ملفات السيرفلت المترجمة (.class)
COPY ./build/classes/ /usr/local/tomcat/webapps/ROOT/WEB-INF/classes/

EXPOSE 8080

CMD ["catalina.sh", "run"]
