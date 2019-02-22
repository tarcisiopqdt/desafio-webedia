
CREATE DATABASE portal_noticias;
use portal_noticias;

SET time_zone = "+00:00";

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
 data_criacao datetime,
 PRIMARY KEY (id_noticia)

);

CREATE TABLE likes(
 id_like int not null auto_increment,
 id_noticia int,
 qtd_likes int,
 PRIMARY KEY (id_like),
 foreign key (id_noticia) references noticias(id_noticia)
);

CREATE INDEX index_noticias
ON noticias (id_noticia);

CREATE INDEX index_likes
ON likes (id_like);

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

INSERT INTO NOTICIAS (URL_IMG, URL_NOTICIA, TITULO, CONTEUDO) VALUES ("https://images1.minhavida.com.br/imagensconteudo/34429/minha-vida-desmame-noturno_34429_250_375.jpg","https://www.minhavida.com.br/familia/materias/34429-desmame-noturno-quando-e-a-hora-certa","Desmame Noturno: Quando é a hora certa?","Veja como identificar os sinais de que seu filho está pronto para o desmame noturno");
INSERT INTO NOTICIAS (URL_IMG, URL_NOTICIA, TITULO, CONTEUDO) VALUES ("https://images1.minhavida.com.br/imagensconteudo/34420/aquecimento-global-bebes_34420_250_375.jpg","https://www.minhavida.com.br/familia/noticias/34420-aquecimento-global-pode-influenciar-o-sexo-do-bebe-entenda","Aquecimento global pode influenciar o sexo do bebê: entenda","Fenômeno também afeta a gestação das mulheres, e não apenas o meio ambiente");
INSERT INTO NOTICIAS (URL_IMG, URL_NOTICIA, TITULO, CONTEUDO) VALUES ("https://images1.minhavida.com.br/imagensconteudo/34422/minha%20vida%20-%20leiliane_34422_250_375.jpg","https://www.minhavida.com.br/saude/noticias/34422-entenda-a-doenca-que-acomete-mulher-que-socorreu-motorista-apos-acidente-de-helicoptero","Entenda a doença que acomete mulher que socorreu motorista após acidente de helicóptero","Leiliane Rafael da Silva não pode fazer esforço e se estressar por conta de Malformação Arteriovenosa (MAV) JÁ AJUDOU 0 PESSOAS");
INSERT INTO NOTICIAS (URL_IMG, URL_NOTICIA, TITULO, CONTEUDO) VALUES ("https://sm.ign.com/t/ign_br/screenshot/default/blob_c9v6.280.jpg","https://br.ign.com/playstation-1/71047/news/voce-usaria-este-relogio-oficial-retro-do-playstation","Você usaria este relógio oficial retrô do PlayStation?","Volta e meia, quando não está pensando no PS4 e em seus games -");
INSERT INTO NOTICIAS (URL_IMG, URL_NOTICIA, TITULO, CONTEUDO) VALUES ("https://sm.ign.com/t/ign_br/screenshot/default/alien-movie_8py4.280.jpg","https://br.ign.com/cinema-tv/71077/news/alien-isolation-pode-ganhar-serie-animada-para-maiores","Alien: Isolation pode ganhar série animada para maiores","Além do game mobile Alien: Blackout, a franquia de ficção científica e terror de Ridley Scott pode alcançar novos formatos.");
INSERT INTO NOTICIAS (URL_IMG, URL_NOTICIA, TITULO, CONTEUDO) VALUES ("https://sm.ign.com/t/ign_br/news/t/the-haunti/the-haunting-of-hill-house-gets-season-2-order-from-netflix_jedv.280.jpg","https://br.ign.com/the-haunting-of-hill-house/71086/news/netflix-renova-a-maldicao-da-residencia-hill-para-2a-tempora","Netflix renova A Maldição da Residência Hill para 2ª temporada","A Maldição da Residência Hill, série de terror da Netflix, foi renovada para uma segunda temporada.");
INSERT INTO NOTICIAS (URL_IMG, URL_NOTICIA, TITULO, CONTEUDO) VALUES ("https://sm.ign.com/t/ign_br/screenshot/default/codeveronica_s1br.280.jpg","https://br.ign.com/xbox-one/71091/news/resident-evil-code-veronica-torna-se-retrocompativel-no-xbox","Resident Evil – Code: Veronica torna-se retrocompatível no Xbox One","O título chega ao sistema da Microsoft junto com a trilogia Lost Planet.");
INSERT INTO NOTICIAS (URL_IMG, URL_NOTICIA, TITULO, CONTEUDO) VALUES ("https://sm.ign.com/t/ign_br/news/t/thors-chri/thors-chris-hemsworth-to-play-hulk-hogan-in-biopic-from-joke_6b1f.280.jpg","https://br.ign.com/chris-hemsworth/71068/news/chris-hemsworth-sera-hulk-hogan-em-cinebiografia-da-netflix","Chris Hemsworth será Hulk Hogan em cinebiografia da Netflix","O filme irá abordar a ascensão a fama de Hulk Hogan.");





INSERT INTO likes (id_noticia,qtd_likes) values (1,0);
INSERT INTO likes (id_noticia,qtd_likes) values (2,0);
INSERT INTO likes (id_noticia,qtd_likes) values (3,0);
INSERT INTO likes (id_noticia,qtd_likes) values (4,0);
INSERT INTO likes (id_noticia,qtd_likes) values (5,0);
INSERT INTO likes (id_noticia,qtd_likes) values (6,0);
INSERT INTO likes (id_noticia,qtd_likes) values (7,0);
INSERT INTO likes (id_noticia,qtd_likes) values (8,0);

INSERT INTO likes (id_noticia,qtd_likes) values (9,0);
INSERT INTO likes (id_noticia,qtd_likes) values (10,0);
INSERT INTO likes (id_noticia,qtd_likes) values (11,0);
INSERT INTO likes (id_noticia,qtd_likes) values (12,0);
INSERT INTO likes (id_noticia,qtd_likes) values (13,0);
INSERT INTO likes (id_noticia,qtd_likes) values (14,0);
INSERT INTO likes (id_noticia,qtd_likes) values (15,0);
INSERT INTO likes (id_noticia,qtd_likes) values (16,0);

INSERT INTO likes (id_noticia,qtd_likes) values (17,0);
INSERT INTO likes (id_noticia,qtd_likes) values (18,0);
INSERT INTO likes (id_noticia,qtd_likes) values (19,0);
INSERT INTO likes (id_noticia,qtd_likes) values (20,0);
INSERT INTO likes (id_noticia,qtd_likes) values (21,0);
INSERT INTO likes (id_noticia,qtd_likes) values (22,0);
INSERT INTO likes (id_noticia,qtd_likes) values (23,0);
INSERT INTO likes (id_noticia,qtd_likes) values (24,0);

