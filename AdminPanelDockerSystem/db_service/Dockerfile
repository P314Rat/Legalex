FROM postgres:latest

WORKDIR /app

ENV POSTGRES_DB=legalex_admin_panel_db \
    POSTGRES_USER=legalexs_admin \
    POSTGRES_PASSWORD=1234dev!

COPY . .
COPY ./db_backups/init.sql /docker-entrypoint-initdb.d/

EXPOSE 5432
