# ORGANIZANDO OS MICROSSERVICOS:
    - root
        - backend
            - top-api-gateway
            - top-api-finances
            - top-api-users
        - frontend
            - top-main
            - top-users
            - top-finances
        docker-compose.yml
        migrations.sh
        README.md


# PASSOS PARA RODAR OS SERVICOS

# 1 - criar a rede para os containers
docker network create top-network

# 2 - executar docker compose
docker compose up -d --build

# 3 - rodas as migratios e seeds
chmod -x migrations.sh
./migrations.sh


# ACESSOS
- localhost:8080
- user: admin, password: 123456