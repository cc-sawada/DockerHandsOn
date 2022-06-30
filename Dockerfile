# イメージの取得
FROM mysql:8.0

# 環境変数の指定
ENV MYSQL_ROOT_PASSWORD=password

# HOSTからContainerにコピー
COPY my.cnf /etc/mysql/conf.d/my.cnf
COPY create-messages.sql /docker-entrypoint-initdb.d/create-messages.sql
