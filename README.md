# Containerized version


## deployment options

### option 1

```
cd discovery-service 
mvn clean package

cd movie-service
mvn clean package

cd review-service
mvn clean package

docker network create my-network
docker-compose up --build
```

### option 2

if we add `<packaging>pom</packaging>` on the base pom.xml and `<relativePath>../</relativePath>` on each server `parent` section, we can do:

```
mvn clean package
docker network create my-network
docker-compose up --build
```

### checks

```
eureka: http://localhost:8761
reviews: http://localhost:8083/reviews
movies: http://localhost:8082/movies/

check service communication: http://localhost:8082/api/movies/1
```