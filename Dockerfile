FROM tomcat:11.0-jdk25-temurin

ENV PORT=8080
COPY target/*.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080

CMD ["sh", "-c", "sed -i \"s/port=\\\"8080\\\"/port=\\\"${PORT:-8080}\\\"/\" \"$CATALINA_HOME/conf/server.xml\" && catalina.sh run"]