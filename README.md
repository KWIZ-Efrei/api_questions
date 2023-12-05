Pour lancer l'application en local nous vous conseillons de crééer une base POSTGRE à l'aide du Dockerfile présent dans `utils/docker/`

A l'aide du terminal :

Build l'image :
`docker build -t <mypostgresimage> -f postgres_dockerfile .`

Puis en lançant l'image :
`docker run -d --name <mypostgrescontainer> -p 5432:5432 <mypostgresimage>`