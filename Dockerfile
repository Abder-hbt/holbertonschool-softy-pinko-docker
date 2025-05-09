FROM ubuntu:latest

# Mettre à jour le système
RUN apt-get update && apt-get upgrade -y

# Installer Python3 et pip3
RUN apt-get install -y python3 python3-pip

# Résoudre le problème de pip dans certains environnements
RUN rm /usr/lib/python*/EXTERNALLY-MANAGED || true

# Installer Flask via pip
RUN pip3 install flask

# Définir le dossier de travail
WORKDIR /app

# Copier le fichier de l'API
COPY ./api.py /app/api.py

# Commande pour lancer le serveur Flask
CMD ["python3", "api.py"]

