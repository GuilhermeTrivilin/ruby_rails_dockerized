FROM ruby:2.7.1-buster

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg |\
    apt-key add - &&\
    echo "deb https://dl.yarnpkg.com/debian/ stable main" |\
    tee /etc/apt/sources.list.d/yarn.list &&\
    apt-get update -qq &&\
    apt-get install -y nodejs yarn

WORKDIR /app
COPY . /app
RUN gem install rails

# CMD bash