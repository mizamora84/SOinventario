FROM postgres:14.3
RUN localedef -i de_DE -c -f UTF-8 -A /usr/share/locale/locale.alias de_DE.UTF-8
ENV LANG de_DE.utf8
# Copy Postgres config file into container
COPY ./postgres_docker/my-postgres.conf /etc/postgresql
# Override default Postgres config file
CMD ["postgres", "-c", "config_file=/etc/postgresql/postgresql.conf"]
# Este contenedor se comunica por el puerto 8080
EXPOSE 8080
