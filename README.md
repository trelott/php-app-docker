# Dockerisation d'une application php

## Architecture

Cette application est composée de 3 composants principaux:
- le server, qui permet de convertir une vidéo
- le client, qui permet d'envoyer le lien d'une vidéo ainsi que le format souhaité au serveur
- le rabbitmq, qui permet de gérer la liste d'attente des requêtes faites au serveur

Le serveur, le client et les fichiers convertis sont disponibles via un serveur web apache

## Guide d'utilisation

Pour cloner ce dépôt:
```git clone https://github.com/trelott/php-app-docker.git```

Pour lancer l'application complète:
```docker compose up -d```

Ensuite, il faut lancer le server en accédant à l'adresse [http://localhost:8080/server.php](http://localhost:8080/server.php)
Puis il faut lancer le client pour télécharger le fichier et le convertir en accédant à l'adresse [http://localhost:8080/client.php](http://localhost:8080/client.php)

On peut enfin accéder à la converti via le lien [http://localhost:8080/video.mov](http://localhost:8080/video.mov)

## Source
<https://github.com/ProdigyView-Toolkit/Microservices-Examples-PHP>