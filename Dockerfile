FROM openjdk:8

ARG ARG_PROJECT_VERSION="0.0.1"
ENV PROJECT_VERSION "${ARG_PROJECT_VERSION}"

ADD target/pizzas-backend-"${PROJECT_VERSION}".jar pizzas-backend.jar
EXPOSE 8080
ENTRYPOINT ["java","-Dspring.profiles.active=pdn", "-jar", "pizzas-backend.jar"]
