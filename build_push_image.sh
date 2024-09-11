# agar bisa menjalankan command terminal, maka diperlukan shebang atau yang ada dibawah ini
#!/bin/bash 

# membangun Dockerfile yang sudah dibuat dengan nama dan juga tag-nya
docker build -t item-app:v1 . 
# menampilkan daftar image yang ada di local
docker images
# menyesuaikan nama image dengan format Docker Hub / github
docker tag item-app:v1 ghcr.io/hudastilllearning/item-app:v1

# jika sudah login ke Docker Hub via terminal, kode dibawah ini tidak perlu dijalankan
# export PASSWORD_DOCKER_HUB="mypasswd"
# echo $PASSWORD_DOCKER_HUB | docker login --username k1zuko --password-stdin

# meng-upload image ke Docker Hub / github
docker push ghcr.io/hudastilllearning/item-app:v1
