FROM maven
WORKDIR /opt/server
COPY src /opt/server
COPY *.xml .
RUN mvn clean package 
RUN mv /opt/server/target/shipping-1.0.jar /opt/servershipping.jar
ENV CART_ENDPOINT="cart:8080" \
DB_HOST="mysql"
CMD ["java", "-jar", "shipping.jar"]