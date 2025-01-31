docker pull postgres
docker pull dpage/pgadmin4
docker run --name postgres -e POSTGRES_PASSWORD=123456 -p 5432:5432 -d postgres

docker run -d \
    --name pgadmin-container \
    -e PGADMIN_DEFAULT_EMAIL=admin@example.com \
    -e PGADMIN_DEFAULT_PASSWORD=123456 \
    -p 5050:80 \
    dpage/pgadmin4

docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' postgres
172.17.0.2
