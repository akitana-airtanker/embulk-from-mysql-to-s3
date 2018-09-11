FROM amazonlinux:2

RUN yum -y install java wget

RUN wget -q https://dl.embulk.org/embulk-latest.jar -O /bin/embulk \
  && chmod +x /bin/embulk

RUN embulk gem install embulk-input-mysql embulk-output-s3

COPY config.yml /work/

WORKDIR /work

ENTRYPOINT ["java", "-jar", "/bin/embulk", "run", "config.yml"]
