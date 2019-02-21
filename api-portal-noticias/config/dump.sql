
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
 url_noticia text,
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

INSERT INTO NOTICIAS (URL_IMG, URL_NOTICIA, TITULO, CONTEUDO) VALUES ("https://sm.ign.com/ign_br/screenshot/default/whatsapp-image-2019-02-05-at-140722-1_e73f.jpg","https://br.ign.com/samsung/70603/news/samsung-revela-notebook-com-visual-retro-e-oculos-vr-que-tra","SAMSUNG REVELA NOTEBOOK COM VISUAL RETRÔ E ÓCULOS VR QUE TRAZ MAIS IMERSÃO","Samsung Notebook Flash e HMD Odyssey+ chegam ao mercado brasileiro no dia 22 de fevereiro");
INSERT INTO NOTICIAS (URL_IMG, URL_NOTICIA, TITULO, CONTEUDO) VALUES ("https://sm.ign.com/t/ign_br/screenshot/default/cn-i7j6xgaaopba_mn4r.280.jpg","https://br.ign.com/gris/69303/news/os-primeiros-16-minutos-de-gris","OS PRIMEIROS 16 MINUTOS DE GRIS",'"Gris, game do estúdio Nomada, já está disponível para Nintendo Switch e PC. Com um visual deslumbrante, o game é protagonizado por "uma esperançosa jovem perdida em seu próprio mundo"."');
INSERT INTO NOTICIAS (URL_IMG, URL_NOTICIA, TITULO, CONTEUDO) VALUES ("https://sm.ign.com/t/ign_br/screenshot/default/fortnite-battleroyale-blogroll-1522177042308_114011_6uux.280.jpg","https://br.ign.com/fortnite-android/68627/news/fortnite-guia-completo-desafios-da-semana-8","Fortnite - Guia Completo: Desafios da Semana 8",'"Assista às quartas de final do Mundial de Rainbow Six; ao vivo"');
INSERT INTO NOTICIAS (URL_IMG, URL_NOTICIA, TITULO, CONTEUDO) VALUES ("https://sm.ign.com/ign_br/screenshot/default/dupla-15_uj45.jpg","https://br.ign.com/brasil-game-show-2018/67324/news/bgs-2018-josh-journey-darkness-totens-e-curta-de-animacao-na","BGS 2018: JOSH JOURNEY: DARKNESS TOTENS É CURTA DE ANIMAÇÃO NACIONAL TRANSFORMADO EM JOGO","FORTNITE - GUIA COMPLETO: DESAFIOS DA SEMANA 8"'"Assista às quartas de final do Mundial de Rainbow Six; ao vivo"');
INSERT INTO NOTICIAS (URL_IMG, URL_NOTICIA, TITULO, CONTEUDO) VALUES ("https://sm.ign.com/t/ign_br/screenshot/default/blob_jevg.280.jpg","https://br.ign.com/square-enix/71033/news/vendas-de-shadow-of-tomb-raider-e-just-cause-4-estao-abaixo","Vendas de Shadow of Tomb Raider e Just Cause 4 estão 'abaixo do esperado' pela Square Enix",'"Lucros da empresa sofreu queda de 60%"');
INSERT INTO NOTICIAS (URL_IMG, URL_NOTICIA, TITULO, CONTEUDO) VALUES ("https://sm.ign.com/ign_br/screenshot/default/fallout-76-small-2_7pmh.jpg","https://br.ign.com/fallout-76/71032/news/jogador-investe-mais-de-900-horas-em-fallout-76-e-e-banido-p","JOGADOR INVESTE MAIS DE 900 HORAS EM FALLOUT 76 E É BANIDO POR TER 'MUITA MUNIÇÃO'",'"O crime dele foi ter amado demais"');
INSERT INTO NOTICIAS (URL_IMG, URL_NOTICIA, TITULO, CONTEUDO) VALUES ("https://sm.ign.com/ign_br/screenshot/default/concolescarro_qzsn.jpg","https://br.ign.com/rocket-league/71029/news/rocket-league-recebe-grupos-cross-platform","ROCKET LEAGUE RECEBE GRUPOS CROSS-PLATFORM",'"A Psyonix vai entregar a cereja no topo do cross-play"');
INSERT INTO NOTICIAS (URL_IMG, URL_NOTICIA, TITULO, CONTEUDO) VALUES ("https://sm.ign.com/t/ign_br/screenshot/default/blob_vza3.280.jpg","https://br.ign.com/one-piece-world-seeker/71016/news/one-piece-world-seeker-recebe-trailer-apresentando-sistema-d","One Piece: World Seeker recebe trailer apresentando sistema de Karma",'"Construir novos relacionamentos abrirá mais portas e missões para o jogador que controla Luffy."');

INSERT INTO NOTICIAS (URL_IMG, URL_NOTICIA, TITULO, CONTEUDO) VALUES ("http://static1.purebreak.com.br/articles/3/83/68/3/@/312148-descubra-qual-hit-da-rihanna-voce-e-diapo-1.jpg","http://www.purebreak.com.br/noticias/descubra-qual-hit-da-rihanna-voce-e-nesse-teste-do-purebreak/83683","Responda estas perguntas aleatórias e diremos qual hit da Rihanna você é!","Rihanna está completando 31 aninhos nesta quarta-feira (20) e nós do Purebreak estamos muito contentes. Afinal, estamos falando de uma das maiores artistas da década. Isso que é moral, né? ");
INSERT INTO NOTICIAS (URL_IMG, URL_NOTICIA, TITULO, CONTEUDO) VALUES ("https://images1.minhavida.com.br/imagensconteudo/32491/abacate_32491_250_375.jpg","https://www.minhavida.com.br/alimentacao/tudo-sobre/32491-abacate-beneficios-para-a-saude-e-como-incluir-na-dieta","Abacate: benefícios para a saúde e como incluir na dieta","O abacate é rico em antioxidantes e fibras, que auxiliam no bom funcionamento do organismo e na perda de peso");
INSERT INTO NOTICIAS (URL_IMG, URL_NOTICIA, TITULO, CONTEUDO) VALUES ("https://images1.minhavida.com.br/imagensconteudo/17981/hortel%c3%a3%2001_17981_250_375.jpg","https://www.minhavida.com.br/alimentacao/tudo-sobre/17981-hortela-conheca-todos-os-beneficios-e-veja-receitas","Hortelã: conheça todos os benefícios e veja receitas","Conheça a fundo seus benefícios e veja receitas com a planta");
INSERT INTO NOTICIAS (URL_IMG, URL_NOTICIA, TITULO, CONTEUDO) VALUES ("https://images1.minhavida.com.br/imagensconteudo/4890/berinjela%2001_4890_250_375.jpg","https://www.minhavida.com.br/alimentacao/tudo-sobre/4890-berinjela-combate-colesterol-e-cancer-veja-receitas","Berinjela combate colesterol e câncer: veja receitas","Rica em sabor, a berinjela tem vitaminas e minerais capazes de prevenir diabetes e câncer, além de ajudar a emagrecer");
INSERT INTO NOTICIAS (URL_IMG, URL_NOTICIA, TITULO, CONTEUDO) VALUES ("https://images1.minhavida.com.br/imagensconteudo/34423/aer%c3%b3bico_34423_250_375.jpg","https://www.minhavida.com.br/fitness/noticias/34423-melhor-atividade-fisica-para-regular-o-apetite-descubra","Melhor atividade física para regular o apetite: descubra","Estudo comparou atividade aeróbica, musculação e a combinação de aeróbico e musculação juntos para controlar o apetite");
INSERT INTO NOTICIAS (URL_IMG, URL_NOTICIA, TITULO, CONTEUDO) VALUES ("https://images1.minhavida.com.br/imagensconteudo/34416/muscula%c3%a7%c3%a3o%20para%20emagrecer%2001_34416_250_375.jpg","https://www.minhavida.com.br/fitness/noticias/34416-7-fatos-que-fazem-da-musculacao-a-atividade-perfeita-para-emagrecer","7 fatos que fazem da musculação perfeita para emagrecer","Segundo estudo, mais do que ajudar a definir o corpo e ganhar massa, a musculação é uma forte aliada para perder peso");
INSERT INTO NOTICIAS (URL_IMG, URL_NOTICIA, TITULO, CONTEUDO) VALUES ("https://images1.minhavida.com.br/imagensconteudo/34374/exerc%c3%adcios%20sem%20academia%2002_34374_250_375.jpg","https://www.minhavida.com.br/fitness/materias/34374-exercicios-fora-da-academia-74-das-pessoas-buscam-novas-maneiras-de-treinar","Exercícios fora da academia: 74% das pessoas buscam novas maneiras de treinar","Para grande parte dos brasileiros sedentários, adaptar exercícios aos próprios horários é decisivo para ter uma vida mais saudável");
INSERT INTO NOTICIAS (URL_IMG, URL_NOTICIA, TITULO, CONTEUDO) VALUES ("http://static1.purebreak.com.br/articles/1/83/70/1/@/312169-brit-awards-2019-veja-tudo-o-que-vai-ro-diapo-1.jpg","http://www.purebreak.com.br/noticias/brit-awards-2019-indicados-performances-apostas-e-tudo-que-deve-rolar-na-premiacao/83701","Veja tudo o que vai rolar no Brit Awards 2019 aqui no Purebreak!","Nesta quarta-feira (20) vai rolar o Brit Awards, maior evento de música do Reino Unido e uma galera que a gente ama vai marcar presença na premiação. ");




INSERT INTO likes (id_user, id_noticia,qtd_likes) values (1,1,0);
INSERT INTO likes (id_user, id_noticia,qtd_likes) values (1,2,0);
INSERT INTO likes (id_user, id_noticia,qtd_likes) values (1,3,0);
INSERT INTO likes (id_user, id_noticia,qtd_likes) values (1,4,0);
INSERT INTO likes (id_user, id_noticia,qtd_likes) values (1,5,0);
INSERT INTO likes (id_user, id_noticia,qtd_likes) values (1,6,0);
INSERT INTO likes (id_user, id_noticia,qtd_likes) values (1,7,0);
INSERT INTO likes (id_user, id_noticia,qtd_likes) values (1,8,0);

INSERT INTO likes (id_user, id_noticia,qtd_likes) values (1,9,0);
INSERT INTO likes (id_user, id_noticia,qtd_likes) values (1,10,0);
INSERT INTO likes (id_user, id_noticia,qtd_likes) values (1,11,0);
INSERT INTO likes (id_user, id_noticia,qtd_likes) values (1,12,0);
INSERT INTO likes (id_user, id_noticia,qtd_likes) values (1,13,0);
INSERT INTO likes (id_user, id_noticia,qtd_likes) values (1,14,0);
INSERT INTO likes (id_user, id_noticia,qtd_likes) values (1,15,0);
INSERT INTO likes (id_user, id_noticia,qtd_likes) values (1,16,0);

