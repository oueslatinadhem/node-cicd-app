# Utiliser une image node officielle
FROM node:14

# Définir le répertoire de travail dans le conteneur
WORKDIR /usr/src/app

# Copier package.json et installer les dépendances
COPY package*.json ./
RUN npm install

# Copier le reste de l’application
COPY . .

# Exposer le port de l’application
EXPOSE 3001

# Commande pour démarrer l’application
CMD ["node", "app.js"]