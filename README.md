# mysql-flask-docker
É uma abordagem de exemplo para atividade de como trabalhar com mysql do Bootcamp da DIO

### Rodar o Projeto
- Ter as dependencias instaladas python3, Docker
- :: `docker-compose up --build`
- :: `docker-compose up --build -d && docker-compose logs --tail=all -f`

### Parar de Rodar
- :: `docker-compose down`
- :: `docker container stop $(docker container ls -aq) && docker container rm $(docker  container ls -aq)`

# Comandos uteis
python -m venv env
source env/bin/activate
pip install flask flask-restful sqlalchemy pymysql flask-cors uwsgi

docker exec -it mysql-client bash
docker logs mysql-client
docker run --name mysql-client -it --link db:mysql --rm mysql sh -c '-hmysql -uname_user -ppassword_user'