
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
 id_like int not null auto_increment,
 id_user int,
 id_noticia int,
 qtd_likes int,
 PRIMARY KEY (id_like),
 foreign key (id_noticia) references noticias(id_noticia)
);

INSERT INTO NOTICIAS (URL_IMG, TITULO, CONTEUDO) VALUES ("10.jpg","Homem vence a batalha contra a mente","Ele conta como foi ter passado por tudo que é coisa ruim da vida.");
INSERT INTO NOTICIAS (URL_IMG, TITULO, CONTEUDO) VALUES ("11.jpg","Jovem mostra como é difícil se tornar um programador web",'"Segundo ele, foram mais de dois anos de estudo intenso: faculdade e cursos online"');
INSERT INTO NOTICIAS (URL_IMG, TITULO, CONTEUDO) VALUES ("12.jpg","Assista às quartas de final do Mundial de Rainbow Six; ao vivo",'"Assista às quartas de final do Mundial de Rainbow Six; ao vivo"');
INSERT INTO NOTICIAS (URL_IMG, TITULO, CONTEUDO) VALUES ("13.jpg","Como posso fazer esse like funcionar?",'"Assista às quartas de final do Mundial de Rainbow Six; ao vivo"');
INSERT INTO NOTICIAS (URL_IMG, TITULO, CONTEUDO) VALUES ("14.jpg","Simplesmente ao como isso deveria ser o mais simples posssivel porém, nao é o que de fato acontece",'"Assista às quartas de final do Mundial de Rainbow Six; ao vivo"');
INSERT INTO NOTICIAS (URL_IMG, TITULO, CONTEUDO) VALUES ("15.jpg","Carregar mais notícias conforme o usuário for scrollando a página ('Scroll infinito').",'"Observar que no mobile o scroll é em formato de slide. Enquanto em desktop o scroll é natural (vertical)."');
INSERT INTO NOTICIAS (URL_IMG, TITULO, CONTEUDO) VALUES ("16.jpg","Carregar mais notícias conforme o usuário for scrollando a página ('Scroll infinito').",'"Observar que no mobile o scroll é em formato de slide. Enquanto em desktop o scroll é natural (vertical)."');



INSERT INTO likes (id_user, id_noticia,qtd_likes) values (1,1,0);
INSERT INTO likes (id_user, id_noticia,qtd_likes) values (1,2,0);
INSERT INTO likes (id_user, id_noticia,qtd_likes) values (1,3,0);
INSERT INTO likes (id_user, id_noticia,qtd_likes) values (1,4,0);
INSERT INTO likes (id_user, id_noticia,qtd_likes) values (1,5,0);
INSERT INTO likes (id_user, id_noticia,qtd_likes) values (1,6,0);
INSERT INTO likes (id_user, id_noticia,qtd_likes) values (1,7,0);
