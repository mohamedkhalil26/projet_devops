# Étape 1 : construire l'image avec Java
FROM eclipse-temurin:17-jdk-alpine

WORKDIR /app

# Copier le jar compilé
COPY target/student-management-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java","-jar","app.jar"]
