cat > Dockerfile <<EOL
# Étape 1 : utiliser l'image Nginx officielle
FROM nginx:alpine

# Étape 2 : copier le contenu du site dans le dossier web de Nginx
COPY . /usr/share/nginx/html

# Étape 3 : exposer le port 10000
EXPOSE 10000

# Étape 4 : lancer Nginx au premier plan
CMD ["nginx", "-g", "daemon off;"]
EOL
