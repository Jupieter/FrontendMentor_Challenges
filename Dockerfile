# Használja a hivatalos Node.js Docker alapot
FROM node:18

# Munkakönyvtár létrehozása a konténerben
WORKDIR /app

# Függőségek telepítése
COPY package*.json ./
RUN npm install

# Projekt fájlok másolása a konténerbe
COPY . .

EXPOSE 8080
# Alkalmazás futtatása
CMD ["npm", "run", "serve"]
