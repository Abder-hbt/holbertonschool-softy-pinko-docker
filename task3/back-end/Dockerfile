FROM ubuntu:latest

# Mettre à jour le système et installer Python + pip
RUN apt-get update && \
    apt-get install -y python3 python3-pip

# Installer Flask et flask-cors avec contournement de la restriction PEP 668
RUN pip3 install --break-system-packages flask flask-cors

# Définir le dossier de travail
WORKDIR /app

# Copier le fichier Python dans le conteneur
COPY ./api.py /app/api.py

# Exposer le port
EXPOSE 5252

# Lancer l'application Flask
CMD ["python3", "api.py"]

