

cd ansible000/

docker build .

deploy n dockers 

docker run -d -P --name server01 -p 2221:22 <id_resultante>

ssh root@localhost -p 2223 -i ../key.private
