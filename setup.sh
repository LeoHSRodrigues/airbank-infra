#!/bin/bash

INSTALL_PATH=$(pwd)

REPOSITORIES=( "airbank-frontend" "airbank-backend")

PATHS=( "airbank-frontend" "airbank-backend")

LENGTH=${#REPOSITORIES[@]}

git submodule update --init

echo "######################################"
echo "Cloning repositories..."
echo "######################################"

for (( i=0; i<${LENGTH}; i++ ));
do
  echo "Adicionando repositório ${REPOSITORIES[$i]}"
  git submodule add -b master https://github.com/LeoHSRodrigues/${REPOSITORIES[$i]}.git ${PATHS[$i]}
  cp ${REPOSITORIES[$i]}/.env.example ${REPOSITORIES[$i]}/.env
done

echo "############################################"
echo "Building image and launching containers..."
echo "############################################"

docker-compose up -d

echo "Waiting database to launch on 5432 to seed database..."

while ! nc -z localhost 5432; do   
  sleep 0.5
done

echo "Creating and seeding database, it may freeze but it's still running"

docker container exec airbank-api yarn migrate
docker container exec airbank-api yarn seed