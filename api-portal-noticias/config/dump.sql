CREATE DATABASE portal_noticias;
use portal_noticias;

CREATE TABLE users(
 id int not null auto_increment,
 name varchar(55),
 PRIMARY KEY (id)
);

CREATE TABLE noticias(
 id_noticia int not null auto_increment,
 url_img text,
 titulo varchar(200),
 conteudo text,
 data_criacao timestamp default current_timestamp,
 PRIMARY KEY (id_noticia)
 
);

CREATE TABLE likes(
 id int not null auto_increment,
 user_id int,
 post_id int,
 qtd_likes int,
 PRIMARY KEY (id),
 foreign key (post_id) references noticias(id_noticia)
);

INSERT INTO NOTICIAS (URL_IMG, TITULO, CONTEUDO) VALUES ("10.jgp","Homem vence a batalha contra a mente","Ele conta como foi ter passado por tudo que é coisa ruim da vida.");
INSERT INTO NOTICIAS (URL_IMG, TITULO, CONTEUDO) VALUES ("11.jgp","Jovem mostra como é difícil se tornar um programador web",'"Segundo ele, foram mais de dois anos de estudo intenso: faculdade e cursos online"');
INSERT INTO NOTICIAS (URL_IMG, TITULO, CONTEUDO) VALUES ("10.jgp","Assista às quartas de final do Mundial de Rainbow Six; ao vivo",'"Assista às quartas de final do Mundial de Rainbow Six; ao vivo"');

INSERT INTO likes (user_id, post_id,qtd_likes) values (1,1,0);


select * from noticias;
select * from likes;
select * from likes where user_id=1;