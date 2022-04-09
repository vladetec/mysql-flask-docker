# mysql-flask-docker
É uma abordagem de exemplo para atividade de como trabalhar com mysql do Bootcamp da DIO

## Como rodar o projeto?
* Pré condiçaõ Git, Docker
* Clone esse repositório.
* Rode o ambiente com os comandos abaixo.
- :: `git clone https://github.com/vladetec/mysql-flask-docker.git`
- :: `cd mysql-flask-docker`
- Crie a Base de dados a Base de Dados no Mysql
```
mkdir db
cd db
touch init.sql
```
- Abre o init.sql no Editor tipo Vscode e cole
```
CREATE TABLE `quote` (
    `id` INT(11) PRIMARY KEY AUTO_INCREMENT,
    `quote` VARCHAR(512) NOT NULL,
    `quote_by` VARCHAR(100),
    `added_by` VARCHAR(100),
    `created` DATETIME DEFAULT CURRENT_TIMESTAMP(),
    `updated` DATETIME DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP()
);

INSERT INTO `quote` (`quote`, `quote_by`, `added_by`)
VALUES ('Citações ou frases.', 'Autor', 'Adicionado_Por');
```
- ## Rodar o Projeto.
- :: `docker-compose up --build -d && docker-compose logs --tail=all -f`

## Links
* [Visualizar API](http://localhost:8000/)
* [Visualizar Aplicação](http://localhost:8001/)
* [phpMyAdmin](http://localhost:8080/)
-- User = dbuser
-- Password = dbpassword
* [Grafana Monitoramento](http://localhost:9878/login)
-- User = admin
-- Password = secret

### Interroper o Projeto
- :: `docker-compose down`
- :: `docker container stop $(docker container ls -aq) && docker container rm $(docker  container ls -aq)`

# Comandos uteis
```
:: python -m venv env
:: source env/bin/activate
:: pip install flask flask-restful sqlalchemy pymysql flask-cors uwsgi
:: docker exec -it mysql-client bash
:: docker logs mysql-client
:: docker run --name mysql-client -it --link db:mysql --rm mysql sh -c '-hmysql -uname_user -ppassword_user
:: docker exec -it <Id_Name_grafana> grafana-cli admin reset -admin -password <New admin password>
```
