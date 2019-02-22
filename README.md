# Desafio-Webedia

#### Esse Projeto foi construído com:
- CSS PURO
- JAVASCRIPT PURO
- NODEJS
- MYSQL
# Como Rodar o Projeto

Para rodar esse projeto é necessário ter instalado:
  - NodeJS
  - NPM
  - MySQL

## 1º Passo - Configurar MySQL

- Certificar-se que o usuário do banco de dados é o "root" e a senha "" (vazia)
- Rodar no MYSQL o script para criação do banco de dados que está no diretório abaixo:
```sh
 api-portal-noticias/config/dump.sql
```
    
> Caso não tenha um usuário "root" com senha vazia, altere as credenciais de conexão com o banco no diretório:

```sh
 api-portal-noticias/config/dbConnection.js
```

## 2º Passo -  Startar Servidor da API


2.1 - Abra o terminal de comando na pasta raiz e então selecione o diretório da API:

```sh
$ cd api-portal-noticias/
```
2.2 Agora que já estar no diretório "desafio-webedia/api-portal-noticias/" execute o comando para fazer o download das dependências:

```sh
 npm install 
```
2.3 **Starte o servidor**
```sh
 $ node api 
```

> Para testar se tudo ocorreu bem, será exibido no terminal a seguinte mensagem:

" ----------------- API online: http://localhost:7000 ----------------- "

2.4 **Acesse http://localhost:7000 para ver o JSON vindo do banco.**

## 3º Passo -  Startar Servidor Cliente

3.1 - Abra outro terminal de comando na pasta raiz e então selecione o diretório client-server :

```sh
$ cd client-server/
```
3.2 Agora que já estar no diretório "desafio-webedia/client-server/" execute o comando para fazer o download das dependências:

```sh
 npm install 
```
3.3 **Starte o servidor cliente**
```sh
 $ node app 
```

> Nesse momento, se ocorreu tudo bem, você verá a seguinte mensagem no seu terminal:

" ----------------- Client Server: http://localhost:2000 ----------------- "

2.4 **Acesse http://localhost:2000 e navege pelo portal de notícias :)**

### Qualquer problema estou a disposição ;)
