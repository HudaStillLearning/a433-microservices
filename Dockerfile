# menggunakan base image node.js versi 14
FROM node:14

# membuat working directory 'app' di container
WORKDIR /app
# menyalin source code yang ada di local ke working directory container
COPY . .
# menentukan agar aplikasi berjalan di 'production mode' dan container item-db sebagai database-nya
ENV NODE_ENV=production DB_HOST=item-db

# meng-install dependensi production dan kemudian membangun aplikasinya
RUN npm install --production --unsafe-perm && npm run build
# menentukan port yang akan digunakan
EXPOSE 8080
# menjalankan aplikasi
CMD [ "npm", "start" ]