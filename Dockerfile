FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.0.10

RUN gem install activeadmin-generator --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["activeadmin-generate"]
CMD ["--help"]