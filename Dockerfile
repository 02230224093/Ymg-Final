# Java 17 tabanlı bir imaj kullan
FROM openjdk:17

# Uygulama dosyasını konteynıra kopyala
COPY HelloWorld.java /usr/src/myapp/
WORKDIR /usr/src/myapp

# Java dosyasını derle
RUN javac HelloWorld.java

# Uygulamayı çalıştır
CMD ["java", "HelloWorld"]
