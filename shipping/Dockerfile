FROM maven:3.9
WORKDIR /opt/server
COPY src/ .
COPY *.xml .
RUN mvn clean package 
RUN mv target/shipping-1.0.jar shipping.jar
ENV CART_ENDPOINT=cart\
DB_HOST=mysql
CMD ["java", "-jar", "shipping.jar"]