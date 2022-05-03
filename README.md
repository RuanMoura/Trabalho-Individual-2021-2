# Trabalho Individual  2021.2

Trabalho individual de GCES 2021.2

## Como rodar

### Versão do docker
- Docker `20.10.12`
- Docker Compose `1.25.0`

```
git clone https://github.com/RuanMoura/Trabalho-Individual-2021-2.git
cd Trabalho-Individual-2021-2/aplicacao/
docker-compose up --build
```

Após o serviço app_1 informar que esta ouvindo é só acessar o __localhost__ no seu navegador.

## 1. Containerização do Banco

A containerização do banco está sendo feita no [docker-compose.yml](./aplicacao/docker-compose.yml) usando a imagem do postgresql versão 12.1.

## 2. Containerização da Aplicação + Banco

Para a containerização da aplicação foi adicionado o serviço no docker compose usando a imagem gerada pelo seguinte [Dockerfile](./aplicacao/Dockerfile), sua execução é feita quando o banco de dados estiver rodando saudavelmente.

## 3. Adição de um container do Nginx 

Para a containerização do linx foi feito o seguinte [Dockerfile](./aplicacao/prod/Dockerfile) para gerar a imagem do Nginx.

## 4. Integração Contínua (CI)

Para a integração contínua foi criado um workflow para testar o build, test e lint da aplicação. Arquivo do workflow disponível [aqui](./.github/workflows/ci.yml).

## 5. Deploy Contínuo (CD)

Sempre que o CI rodar com sucesso na branch main será dado um trigger para rodar o workflow de deploy. O deploy está feito no [Docker Hub](https://hub.docker.com/r/ruanmoura/gces-trabalho-final-2021.2/tags), o arquivo do workflow pode ser acessado [aqui](./.github/workflows/cd.yml).
