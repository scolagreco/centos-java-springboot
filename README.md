[![](https://images.microbadger.com/badges/image/scolagreco/centos-java-springboot.svg)](https://microbadger.com/images/scolagreco/centos-java-springboot "Get your own image badge on microbadger.com") 
[![](https://images.microbadger.com/badges/commit/scolagreco/centos-java-springboot.svg)](https://microbadger.com/images/scolagreco/centos-java-springboot "Get your own commit badge on microbadger.com")

[![Docker Stars](https://img.shields.io/docker/stars/scolagreco/centos-java-springboot.svg)](https://hub.docker.com/r/scolagreco/centos-java-springboot/)
[![Docker Pulls](https://img.shields.io/docker/pulls/scolagreco/centos-java-springboot.svg)](https://hub.docker.com/r/scolagreco/centos-java-springboot/)

# Docker CentOS e Java for running Spring Boot App

Repository con il dockerfile per creare una Docker Image per eseguire app Spring Boot (su CentOS).

## Info

Si parte dall'immagine CentOS + Java creata dal seguente [Dockerfile](https://github.com/scolagreco/centos-java/blob/master/Dockerfile).

Il JAR contenuto è solamente a titolo di esempio ed è stato creato con il codice presente sul seguente [Blog](https://www.boraji.com/spring-boot-hello-world-example).

In fase di build è possibile passare come argomento il JAR da utilizzare, altrimenti viene usato quello di esempio nella directory app/.

Sono utilizzati:

- VOLUME che punta /tmp visto che sarà li che l'app Spring Boot creerà le working directory di Tomcat per default;

- "/dev/urandom" per aumentare l'entropia necessaria al calcolo del valore random che tomcat assegna per gli id di sessione e velocizzarne l'avvio.

Viene esposta verso l'esterno la porta 8080, quella usata dal tomcat embedded.

Per eseguire il container:

	docker run --name testspringboot -p 8080:8080 -d scolagreco/centos-java-springboot

Per altre informazioni su Spring Boot App in Container potete guardare [qui](https://spring.io/guides/gs/spring-boot-docker/#_containerize_it).

## Versions

- `latest` [(Dockerfile)](https://github.com/scolagreco/centos-java-springboot/blob/master/Dockerfile)
