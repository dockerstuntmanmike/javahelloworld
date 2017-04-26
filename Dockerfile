FROM java:7

WORKDIR /home/root/javahelloworld

RUN mkdir bin

ENV FOO bar

COPY HelloWorld.java .

RUN javac HelloWorld.java

RUN touch testfile

ENTRYPOINT ["java", "HelloWorld"]
