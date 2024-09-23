FROM eclipse-temurin:17-jdk-alpine
    
EXPOSE 8080
 
ENV APP_HOME /usr/src/app

COPY target/*.jar $APP_HOME/app.jar

WORKDIR $APP_HOME

COPY target/*.jar $APP_HOME/

RUN mv $APP_HOME/*.jar $APP_HOME/app.jar

CMD ["java", "-jar", "app.jar"]
