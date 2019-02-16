CREATE DATABASE portal_noticias;

use portal_noticias;

CREATE TABLE NOTICIAS(
 id_noticia int not null primary key auto_increment,
 url_img text,
 titulo varchar(200),
 conteudo text,
 qtd_likes int(10),
 data_criacao timestamp default current_timestamp
);

INSERT INTO NOTICIAS (TITULO,CONTEUDO, QTD_LIKES) VALUES ("Homem vence a batalha contra a mente","Ele conta como foi ter passado por tudo que é coisa ruim da vida.", 20);
INSERT INTO NOTICIAS (TITULO,CONTEUDO, QTD_LIKES) VALUES ("Jovem mostra como é difícil se tornar um programador web",'"Segundo ele, foram mais de dois anos de estudo intenso: faculdade e cursos online"', 8);
INSERT INTO NOTICIAS (TITULO,CONTEUDO, QTD_LIKES) VALUES ("Assista às quartas de final do Mundial de Rainbow Six; ao vivo",'"Assista às quartas de final do Mundial de Rainbow Six; ao vivo"', 15);
