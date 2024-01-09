FROM wordpress:cli
USER root
WORKDIR /var/www/html
COPY ./wp-cli/installation.sh /installation.sh
RUN chmod a+x /installation.sh
CMD ["/installation.sh"]