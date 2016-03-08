FROM java:7

COPY src /home/root/javahelloworld/src
WORKDIR /home/root/javahelloworld
RUN mkdir bin
RUN javac -d bin src/HelloWorld.java
RUN apt-get install wget
ENV FOO bar

ENTRYPOINT ["java", "-cp", "bin", "HelloWorld"]
