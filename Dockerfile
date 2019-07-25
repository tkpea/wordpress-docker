FROM wordpress:latest
RUN apt-get update && apt-get install
RUN apt-get install nodejs npm -y
RUN npm install -g yarn
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
     && chmod +x wp-cli.phar \
     && mv wp-cli.phar /usr/local/bin/wp \
     && wp --info
RUN apt install rubygems - y
RUN gem install wordmove