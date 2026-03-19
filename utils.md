### Localhost URLs:

App (nginx/php): http://localhost:8080 (backend) 
phpMyAdmin : http://localhost:8081
Prometheus : http://localhost:9090
Grafana : http://localhost:3000

Frontend : http://localhost:8083  (faire npm start dans mobile-web)

# Point d'attention : les ports 8080 et 8081 sont utilisés par le backend (nginx/php et phpMyAdmin) ; le frontend utilise le port 8083 pour éviter les conflits.



Pour le debug : suivre en temps réel (var/log)
# depuis PowerShell :  docker compose exec php tail -f var/log/dev.log 
# Ou depuis WSL : tail -f backend/var/log/dev.log

 
# Lancer Backend :
(docker compose up / start) dans le dossier racine du projet (où se trouve le docker-compose.yml)
# Lancer Frontend : 
Lancer depuis mobile-web (npm start) pour que les variables d’environnement soient prises en compte

### Docker Compose commands:

# docker compose up -d
→ crée (si nécessaire) et démarre les services en arrière-plan (mode détaché)

# docker compose logs -f
→ affiche les logs en temps réel (follow)

# docker compose up
→ crée (si nécessaire) et démarre les services au premier plan ; affiche les logs ; Ctrl + C arrête les conteneurs

# docker compose ps
→ affiche l'état des conteneurs du projet

# docker compose logs
→ affiche les logs des services

# docker compose logs -t
→ affiche les logs avec horodatage (timestamps)

# docker compose down
→ arrête et supprime les conteneurs et réseaux du projet ; conserve les volumes (et les images, sauf option --rmi local ou all)

# docker compose down -v
→ idem que down, mais supprime aussi les volumes du projet (pas les volumes external)

# docker compose stop
→ arrête les conteneurs sans les supprimer

# docker compose start
→ redémarre des conteneurs déjà créés et arrêtés 

# docker compose restart
→ redémarre les conteneurs du projet (équivalent à stop + start)

# docker ps -a
→ affiche tous les conteneurs (en cours d'exécution ou arrêtés)

# docker image ls 
→ affiche les images Docker disponibles localement

# docker volume ls 
→ affiche les volumes Docker disponibles localement

# docker network ls 
→ affiche les réseaux Docker disponibles localement


### Nettoyer Docker (supprimer tous les conteneurs, images, volumes et réseaux inutilisés) :
$containers = docker ps -aq; if ($containers) { docker rm -f $containers }; $images = docker image ls -aq; if ($images) { docker rmi -f $images }; $volumes = docker volume ls -q; if ($volumes) { docker volume rm $volumes }; $networks = docker network ls --format "{{.Name}}" | Where-Object { $_ -notin @('bridge','host','none') }; if ($networks) { docker network rm $networks }; docker system df