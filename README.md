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
        - configurations
            - docker-compose.yml
            - migrations.sh
            - README.md

# CLONE GIT
    git clone git@github.com:Matheus-Maricondi/configurations.git

    mkdir backend && cd backend
    git clone https://github.com/Matheus-Maricondi/top-api-gateway.git
    git clone https://github.com/Matheus-Maricondi/top-api-users.git
    git clone https://github.com/Matheus-Maricondi/top-api-finances.git

    mkdir frontend && cd frontend
    git clone https://github.com/Matheus-Maricondi/top-main.git
    git clone https://github.com/Matheus-Maricondi/top-users.git
    git clone https://github.com/Matheus-Maricondi/top-finances.git

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
