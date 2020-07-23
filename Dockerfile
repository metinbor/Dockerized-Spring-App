FROM java 
COPY . /springapp 
WORKDIR /springapp 
RUN ./mvnw package && mv target/*.jar app.jar 
EXPOSE 8080 
ENTRYPOINT ["java","-jar","app.jar"]