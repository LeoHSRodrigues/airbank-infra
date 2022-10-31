<h1 align="center">
    <img alt="Warren Bank App" width="250px" height="150px" src="https://uploads-ssl.webflow.com/5ffa4de03c5ff1202dcdba1b/6176e8261b9a19f304b5caf6_airbank%20Speedinvest%20portfolio.jpg" />
    <br>
    Airbank
</h1>

## :desktop_computer: Technologies

This project was built with the following stacks:

![Nuxtjs](https://img.shields.io/badge/Nuxt-002E3B?style=for-the-badge&logo=nuxtdotjs&logoColor=#00DC82) 	
![TailwindCSS](https://img.shields.io/badge/tailwindcss-%2338B2AC.svg?style=for-the-badge&logo=tailwind-css&logoColor=white)
![NodeJS](https://img.shields.io/badge/node.js-6DA55F?style=for-the-badge&logo=node.js&logoColor=white) 
![Postgres](https://img.shields.io/badge/postgres-%23316192.svg?style=for-the-badge&logo=postgresql&logoColor=white)
![TypeScript](https://img.shields.io/badge/typescript-%23007ACC.svg?style=for-the-badge&logo=typescript&logoColor=white) 
![Express.js](https://img.shields.io/badge/express.js-%23404d59.svg?style=for-the-badge&logo=express&logoColor=%2361DAFB) 
![Docker](https://img.shields.io/badge/docker-%230db7ed.svg?style=for-the-badge&logo=docker&logoColor=white)
![Apollo-GraphQL](https://img.shields.io/badge/-ApolloGraphQL-311C87?style=for-the-badge&logo=apollo-graphql)
![GraphQL](https://img.shields.io/badge/-GraphQL-E10098?style=for-the-badge&logo=graphql&logoColor=white)
![cypress](https://img.shields.io/badge/-cypress-%23E5E5E5?style=for-the-badge&logo=cypress&logoColor=058a5e)
![Jest](https://img.shields.io/badge/-jest-%23C21325?style=for-the-badge&logo=jest&logoColor=white)

## :information_source: How to use

Backend:
https://github.com/LeoHSRodrigues/airbank-backend

Frontend:
https://github.com/LeoHSRodrigues/airbank-frontend

To run this app, you are required to have 

- Docker Engine 1.13.0+
- Docker-compose (tested on v2.12.2)

Inside airbank-infra, add execution permission to `setup.sh`:

```
sudo chmod +x ./setup.sh
```

And execute with:

```
./setup.sh
```

Or:

```
sh ./setup.sh
```

The setup will take care of all infrastructure requirements and will start all container

To access the app, go to: http://localhost:8000 and you're good to go:

## :test_tube: Testes

### Backend

```
docker container exec airbank-api yarn test
```
### Frontend

To test the frontend, you'll have to enter the folder and install the requirements to run cypress on your machine then run from the client folder.

```
yarn cypress
```
or

```
npm run cypress
```

## :motorway: Routes - Backend

| Route                           | Method | Details                                 |
| ------------------------------- | ------ | --------------------------------------- |
| `/api/v1/healthcheck`           | GET    | `App health check route`                |
| `/api/v1/graphql`               | ANY    | `GraphQL route`                         |

## :floppy_disk: Environments variables - Backend

| Variable               | Description                          | Default value                                           |
| ---------------------- | ------------------------------------ | -----------------------------------------------         |
| `DATABASE_URL`         | Postgres URL                         | `postgresql://root:root@airbank-database:5432/airbank`  |
| `PORT`                 | Backend port                         | `3000`                                                  |

## :iphone: Environments variables - Frontend

| Variable                            | Description                | Default value           |
| ----------------------------------- | -------------------------- | ----------------------- |
| `GRAPH_API`                         | GraphQL url                | `v1/graphql`            |
| `PORT`                              | Frontend port              | `8000`                  |
| `API_BASE_URL`                      | API port                   | `http://localhost:3000` |

---
