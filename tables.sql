USE jornada_matemagica;

-- jogador
drop table if exists `jogador`;
create table `jogador` (
  `id` int not null auto_increment,
  `nome` varchar(100) not null,
  `email` varchar(100) not null,
  `senha` varchar(100) not null,
  primary key (`id`),
  unique key `email` (`email`)
);

-- configuracoes
drop table if exists `configuracoes`;
create table `configuracoes` (
  `id_usuario` int not null,
  `volume_musica` float default '1',
  `volume_efeitos` float default '1',
  `idioma` varchar(50) default 'pt-BR',
  primary key (`id_usuario`),
  constraint `configuracoes_ibfk_1` foreign key (`id_usuario`) references `jogador` (`id`)
);

-- assunto
drop table if exists `assunto`;
create table `assunto` (
  `id` int not null auto_increment,
  `nome_assunto` varchar(100) not null,
  primary key (`id`)
);

-- quiz
drop table if exists `quiz`;
create table `quiz` (
  `id` int not null auto_increment,
  `id_assunto` int not null,
  `pergunta` text not null,
  `dificuldade` enum('1','2','3') not null,
  `alternativa1` varchar(255) not null,
  `alternativa2` varchar(255) not null,
  `alternativa3` varchar(255) not null,
  `alternativa4` varchar(255) not null,
  primary key (`id`),
  key `id_assunto` (`id_assunto`),
  constraint `quiz_ibfk_1` foreign key (`id_assunto`) references `assunto` (`id`)
);

-- feedback
drop table if exists `feedback`;
create table `feedback` (
  `id_quiz` int not null,
  `explicacacao` text not null,
  primary key (`id_quiz`),
  constraint `feedback_ibfk_1` foreign key (`id_quiz`) references `quiz` (`id`)
);

-- sessao
drop table if exists `sessao`;
create table `sessao` (
  `id` int not null auto_increment,
  `id_usuario` int not null,
  `id_progresso_jogo` int default null,
  `id_desempenho_jogo` int default null,
  primary key (`id`),
  key `id_usuario` (`id_usuario`),
  key `fk_progresso` (`id_progresso_jogo`),
  key `fk_desempenho` (`id_desempenho_jogo`),
  constraint `fk_desempenho` foreign key (`id_desempenho_jogo`) references `desempenho_jogo` (`id`),
  constraint `fk_progresso` foreign key (`id_progresso_jogo`) references `progresso_jogo` (`id`),
  constraint `sessao_ibfk_1` foreign key (`id_usuario`) references `jogador` (`id`)
);

-- progresso_jogo
drop table if exists `progresso_jogo`;
create table `progresso_jogo` (
  `id` int not null auto_increment,
  `id_sessao` int not null,
  `ponto_de_salvamento` varchar(100) default null,
  primary key (`id`),
  key `id_sessao` (`id_sessao`),
  constraint `progresso_jogo_ibfk_1` foreign key (`id_sessao`) references `sessao` (`id`)
);

-- desempenho_jogo
drop table if exists `desempenho_jogo`;
create table `desempenho_jogo` (
  `id` int not null auto_increment,
  `id_sessao_jogo` int not null,
  `acertos1` int default '0',
  `acertos2` int default '0',
  `acertos3` int default '0',
  `tempo_de_jogo` time default null,
  primary key (`id`),
  key `id_sessao_jogo` (`id_sessao_jogo`),
  constraint `desempenho_jogo_ibfk_1` foreign key (`id_sessao_jogo`) references `sessao` (`id`)
);

ALTER TABLE Progresso_jogo 
  MODIFY COLUMN ponto_de_salvamento LONGTEXT NULL;

-- inserts
INSERT INTO jogador (nome, email, senha)
VALUES ('Jogador Teste', 'teste@example.com', 'senha123');
INSERT INTO sessao (id_usuario) VALUES (1);

-- Inserção do assunto
INSERT INTO Assunto (nome_assunto)
VALUES ('Sistema de numeração decimal');

-- Inserção das questões e feedbacks
INSERT INTO Quiz (id_assunto, pergunta, dificuldade, alternativa1, alternativa2, alternativa3, alternativa4)
VALUES
(1, 'Qual é a leitura correta do número 307?', '1', 'Trezentos e sete', 'Trinta e sete', 'Setecentos e três', 'Trezentos mil e sete'),
(1, 'Qual número está entre 399 e 401?', '1', '400', '398', '402', '401,5'),
(1, 'Qual o valor do algarismo 5 no número 5.231?', '1', '5.000', '500', '50', '5'),
(1, 'Qual número é maior: 3,25 ou 3,052?', '1', '3,25', '3,052', 'São iguais', '3,0525'),
(1, 'Qual é a forma decimal de "dois inteiros e cinquenta centésimos"?', '1', '2,50', '2,05', '0,25', '25'),
(1, 'Qual é o número formado por três dezenas e sete unidades?', '1', '37', '73', '30,7', '307'),
(1, 'Qual é o valor posicional do 2 no número 2.134?', '1', '2.000', '200', '20', '2'),
(1, 'Qual é a escrita por extenso de 480?', '1', 'Quatrocentos e oitenta', 'Quatro mil e oitenta', 'Quatrocentos e oito', 'Quatro mil e oitocentos'),
(1, 'Qual desses números é menor que 0,5?', '1', '0,3', '0,75', '0,9', '1,5'),
(1, 'Qual número é equivalente a 1 inteiro e 25 centésimos?', '1', '1,25', '12,5', '0,125', '1,05'),
(1, 'Qual número vem logo após 899?', '1', '900', '899,1', '901', '890'),
(1, 'Qual número tem o algarismo 6 na casa das dezenas: 462?', '1', '60', '600', '6', '2'),
(1, 'Qual desses números tem a maior parte decimal?', '1', '2,9', '2,2', '2,01', '2,5'),
(1, 'Qual é o número representado por 9 centenas, 0 dezenas e 4 unidades?', '1', '904', '940', '409', '490'),
(1, 'Qual desses números representa cinco unidades e quatro décimos?', '1', '5,4', '54', '0,54', '4,5'),
(1, 'Qual é o número que representa "setenta e oito centésimos"?', '1', '0,78', '7,8', '78', '0,87'),
(1, 'Qual o número que tem 3 na casa dos milhar, 2 na centena, 0 na dezena e 5 na unidade?', '1', '3.205', '3.025', '3.520', '2.305'),
(1, 'Qual número representa três unidades e seis décimos?', '1', '3,6', '36', '0,36', '6,3'),
(1, 'Qual é a forma decimal de "noventa e nove centésimos"?', '1', '0,99', '9,9', '0,909', '99'),
(1, 'Qual o valor posicional do 4 no número 1.458?', '1', '400', '40', '4.000', '4');

-- Inserção dos feedbacks
INSERT INTO Feedback (id_quiz, explicacacao)
VALUES
(1, 'A leitura correta de 307 é "Trezentos e sete", pois o 3 está na casa das centenas, o 0 nas dezenas e o 7 nas unidades.'),
(2, 'O número 400 vem exatamente entre 399 e 401 na sequência dos números naturais.'),
(3, 'O número 5 está na casa dos milhares, então seu valor posicional é 5.000.'),
(4, '3,25 é maior que 3,052, pois no sistema decimal os décimos têm mais peso que os centésimos.'),
(5, 'Cinquenta centésimos correspondem a 0,50, somados a dois inteiros, resultando em 2,50.'),
(6, 'Três dezenas valem 30, somando sete unidades temos 37.'),
(7, 'O 2 está na casa dos milhares, então seu valor posicional é 2.000.'),
(8, 'O número 480 se lê "Quatrocentos e oitenta".'),
(9, '0,3 é menor que 0,5, pois 3 décimos são menos que 5 décimos.'),
(10, 'Um inteiro e vinte e cinco centésimos é igual a 1,25.'),
(11, 'Depois de 899 vem o 900 na ordem dos números naturais.'),
(12, 'O 6 está na casa das dezenas, o que equivale a 60.'),
(13, '2,9 tem nove décimos, que é a maior parte decimal entre as opções.'),
(14, 'Nove centenas valem 900, somando 4 unidades temos 904.'),
(15, 'Cinco unidades e quatro décimos formam o número decimal 5,4.'),
(16, 'Setenta e oito centésimos correspondem a 0,78 na forma decimal.'),
(17, 'A composição 3.205 é feita com 3 mil, 2 centenas, 0 dezenas e 5 unidades.'),
(18, 'Três inteiros e seis décimos é igual a 3,6 na forma decimal.'),
(19, 'Noventa e nove centésimos é igual a 0,99 na forma decimal.'),
(20, 'O 4 está na casa das centenas e representa 400 no número 1.458.');

-- Inserção de questões de dificuldade 2 e feedbacks
INSERT INTO Quiz (id_assunto, pergunta, dificuldade, alternativa1, alternativa2, alternativa3, alternativa4)
VALUES
(1, 'Qual é o número representado por 4 unidades, 3 décimos e 8 centésimos?', '2', '4,38', '4,83', '4,308', '43,8'),
(1, 'Qual desses números é maior: 2,345 ou 2,354?', '2', '2,354', '2,345', 'São iguais', '2,453'),
(1, 'Qual é o valor do algarismo 7 no número 1.738?', '2', '700', '7.000', '70', '7'),
(1, 'Escreva o número "doze inteiros e sete centésimos" na forma decimal.', '2', '12,07', '12,7', '1,27', '12,70'),
(1, 'Qual desses números é equivalente a 1/10?', '2', '0,1', '0,01', '1,0', '10'),
(1, 'Qual desses números é menor: 0,305 ou 0,35?', '2', '0,305', '0,35', '0,53', '0,3'),
(1, 'Em qual alternativa os números estão em ordem crescente?', '2', '1,2 - 1,23 - 1,3', '1,23 - 1,2 - 1,3', '1,3 - 1,2 - 1,23', '1,2 - 1,3 - 1,23'),
(1, 'Qual é a forma decimal de 3 inteiros e 125 milésimos?', '2', '3,125', '3,0125', '31,25', '3,25'),
(1, 'Qual o número que representa dois inteiros e seis milésimos?', '2', '2,006', '2,6', '2,06', '2,0006'),
(1, 'Em qual número o dígito 9 vale 90?', '2', '3.294', '9.003', '294,1', '2.940'),
(1, 'Qual a forma correta de escrever o número com 6 centenas, 0 dezenas, 4 unidades e 5 décimos?', '2', '604,5', '640,5', '460,5', '6.045'),
(1, 'Qual número decimal tem 5 na casa dos centésimos em 3,254?', '2', '0,05', '0,5', '0,5', '0,05'),
(1, 'Entre os números 2,1 – 2,01 – 2,001, qual é o maior?', '2', '2,1', '2,01', '2,001', 'São iguais'),
(1, 'Quantas casas decimais tem o número 4,056?', '2', '3', '2', '4', '1'),
(1, 'Qual é o número decimal equivalente a 250 centésimos?', '2', '2,5', '25', '0,25', '2,05'),
(1, 'Em 5.307, qual o valor posicional do 3?', '2', '300', '3.000', '30', '3'),
(1, 'Qual dessas opções mostra números decimais em ordem decrescente?', '2', '4,5 - 4,25 - 4,1', '4,1 - 4,25 - 4,5', '4,25 - 4,1 - 4,5', '4,1 - 4,5 - 4,25'),
(1, 'O número 0,9 é equivalente a qual fração decimal?', '2', '9/10', '1/9', '90/100', '1/10'),
(1, 'Qual é o valor de 4 centenas + 2 dezenas + 9 unidades + 3 décimos?', '2', '429,3', '492,3', '924,3', '249,3'),
(1, 'Qual é a forma correta de escrever o número com 2 mil, 30 centenas e 8 unidades?', '2', '5.008', '2.308', '32.008', '2.038');

-- Feedbacks
INSERT INTO Feedback (id_quiz, explicacacao)
VALUES
(21, '4 unidades + 3 décimos (0,3) + 8 centésimos (0,08) formam 4,38.'),
(22, '2,354 é maior porque o dígito 5 na casa dos milésimos pesa mais que 4.'),
(23, 'O 7 está na casa das centenas, portanto vale 700.'),
(24, '"Sete centésimos" é igual a 0,07, então a forma decimal é 12,07.'),
(25, '1/10 em forma decimal é 0,1.'),
(26, '0,305 tem milésimos e é menor que 0,35 (que tem centésimos apenas).'),
(27, 'A sequência correta em ordem crescente é 1,2 – 1,23 – 1,3.'),
(28, '125 milésimos correspondem a 0,125, logo o número é 3,125.'),
(29, 'Seis milésimos é igual a 0,006, somado a dois inteiros dá 2,006.'),
(30, 'O dígito 9 vale 90 apenas se estiver na casa das dezenas, como em 3.294.'),
(31, '6 centenas (600), 4 unidades e 5 décimos: 604,5.'),
(32, 'A casa dos centésimos é a segunda após a vírgula. Em 3,254, o 5 está nesta posição.'),
(33, '2,1 tem apenas um décimo, mas é maior do que 2,01 e 2,001.'),
(34, '4,056 tem 3 casas decimais: décimos, centésimos e milésimos.'),
(35, '250 centésimos é igual a 2,50 ou 2,5.'),
(36, 'O dígito 3 está na casa das centenas, valendo 300.'),
(37, 'A ordem decrescente correta entre os valores dados é 4,5 - 4,25 - 4,1.'),
(38, '0,9 é igual a 9/10, pois são 9 décimos.'),
(39, '4 centenas = 400, 2 dezenas = 20, 9 unidades e 0,3: total de 429,3.'),
(40, '30 centenas = 3.000, somando com 2.000 e 8 unidades: 5.008.');

-- Inserção de questões de dificuldade 3 e seus feedbacks
INSERT INTO Quiz (id_assunto, pergunta, dificuldade, alternativa1, alternativa2, alternativa3, alternativa4)
VALUES
(1, 'Qual número decimal representa corretamente a soma: 3 + 0,06 + 0,007?', '3', '3,067', '3,67', '3,76', '3,0076'),
(1, 'Qual número completa corretamente a sequência: 1,2 - 1,25 - 1,3 - ___?', '3', '1,35', '1,32', '1,28', '1,31'),
(1, 'Qual número tem o dígito 9 valendo 0,09?', '3', '4,09', '0,9', '9,0', '4,9'),
(1, 'Qual a diferença entre 3,456 e 3,0456?', '3', '0,4104', '0,411', '0,0456', '0,4004'),
(1, 'Qual número equivale à fração 375/100?', '3', '3,75', '0,375', '37,5', '3,057'),
(1, 'Qual dessas frações representa o mesmo valor que 0,625?', '3', '5/8', '3/5', '6/10', '7/8'),
(1, 'Entre 1,999 – 2 – 2,001, qual é o menor?', '3', '1,999', '2', '2,001', 'Todos são iguais'),
(1, 'Qual número tem 7 como algarismo das milésimas e 2 como das décimas?', '3', '3,207', '3,072', '3,720', '2,703'),
(1, 'Quantas casas decimais possui o número 0,0034?', '3', '4', '2', '3', '5'),
(1, 'O número 4,208 é composto por:', '3', '4 unidades, 2 décimos, 0 centésimos e 8 milésimos', '4 dezenas, 2 unidades e 8 décimos', '4 centenas, 20 unidades e 8 milésimos', '4 unidades e 208 milésimos'),
(1, 'Qual é o número que tem o mesmo valor que 2 + 3/10 + 4/1000?', '3', '2,304', '2,34', '2,034', '2,43'),
(1, 'Qual das opções apresenta números em ordem crescente?', '3', '0,45 - 0,504 - 0,55', '0,504 - 0,45 - 0,55', '0,55 - 0,504 - 0,45', '0,504 - 0,55 - 0,45'),
(1, 'Qual é o valor absoluto da diferença entre 5,008 e 4,999?', '3', '0,009', '0,099', '0,109', '0,001'),
(1, 'Qual é a posição do dígito 6 em 74,068?', '3', 'Centésimos', 'Décimos', 'Milésimos', 'Unidades'),
(1, 'Transformando 0,875 para fração irredutível, qual é o resultado?', '3', '7/8', '3/4', '6/7', '5/6'),
(1, 'Em qual número o dígito 1 vale 1 décimo de milésimo?', '3', '0,0001', '0,001', '0,01', '0,1'),
(1, 'Qual número está mais próximo de 3,5?', '3', '3,499', '3,45', '3,59', '3,41'),
(1, 'Qual número equivale à soma de 2,35 e 1,028?', '3', '3,378', '3,383', '3,503', '3,478'),
(1, 'Qual é a leitura correta do número 7,204?', '3', 'Sete inteiros e duzentos e quatro milésimos', 'Sete inteiros e vinte e quatro centésimos', 'Setenta inteiros e quatro centésimos', 'Sete mil e duzentos e quatro décimos'),
(1, 'Qual das opções representa um erro comum ao comparar números decimais?', '3', 'Achar que 0,8 < 0,75 porque 75 é maior que 8', 'Achar que 0,8 > 0,75', 'Comparar os valores da esquerda para a direita', 'Adicionar zeros à direita do número decimal');

-- Inserção dos feedbacks das questões de dificuldade 3
INSERT INTO Feedback (id_quiz, explicacacao)
VALUES
(41, '0,06 + 0,007 = 0,067, somado a 3 = 3,067.'),
(42, 'A diferença entre os termos é de 0,05, então o próximo número é 1,35.'),
(43, '0,09 é a casa dos centésimos. O dígito 9 em 4,09 está na posição correta.'),
(44, '3,456 - 3,0456 = 0,4104.'),
(45, '375 ÷ 100 = 3,75.'),
(46, '0,625 é igual a 5/8 quando simplificamos.'),
(47, '1,999 é o menor valor entre os três.'),
(48, '7 na milésima e 2 na décima posição ocorre em 3,207.'),
(49, 'Há 4 casas decimais após a vírgula: 0,0034.'),
(50, '4 unidades + 2 décimos + 8 milésimos = 4,208.'),
(51, '3/10 = 0,3 e 4/1000 = 0,004, totalizando 2,304.'),
(52, '0,45 < 0,504 < 0,55 é a sequência crescente correta.'),
(53, 'A diferença entre 5,008 e 4,999 é 0,009.'),
(54, 'O 6 está na casa dos centésimos em 74,068.'),
(55, '0,875 é igual a 875/1000, que simplificando vira 7/8.'),
(56, '1 décimo de milésimo é 0,0001.'),
(57, '3,499 está mais próximo de 3,5 do que as demais opções.'),
(58, '2,35 + 1,028 = 3,378.'),
(59, '7,204 lê-se como "sete inteiros e duzentos e quatro milésimos".'),
(60, 'Alguns acham que 0,8 < 0,75 porque 75 parece maior que 8, mas 0,8 é maior que 0,75.');

-- Inserção do novo assunto
INSERT INTO Assunto (nome_assunto)
VALUES ('Operações com números naturais e divisão euclidiana');

-- Inserção das 20 questões de dificuldade 1
INSERT INTO Quiz (id_assunto, pergunta, dificuldade, alternativa1, alternativa2, alternativa3, alternativa4)
VALUES
(2, 'Qual é o resultado de 25 + 17?', '1', '42', '43', '41', '44'),
(2, 'Quanto é 100 - 28?', '1', '72', '82', '78', '68'),
(2, 'Qual é o resultado de 7 x 6?', '1', '42', '36', '48', '52'),
(2, 'Quanto é 81 ÷ 9?', '1', '9', '8', '7', '10'),
(2, 'Qual o resultado de 5²?', '1', '25', '10', '15', '20'),
(2, 'Se João tem 10 balas e dá 4 para Pedro, com quantas balas João fica?', '1', '6', '5', '4', '7'),
(2, 'Quanto é 3 + 8 + 4?', '1', '15', '13', '14', '16'),
(2, 'Qual é o valor de 6 x 0?', '1', '0', '6', '1', '36'),
(2, 'Quanto é 9²?', '1', '81', '72', '99', '91'),
(2, 'Qual número somado a 27 resulta em 100?', '1', '73', '77', '63', '83'),
(2, 'Quanto é 50 ÷ 5?', '1', '10', '5', '15', '8'),
(2, 'Qual o resultado de 8 x 5?', '1', '40', '35', '30', '45'),
(2, 'Qual o resultado de 3²?', '1', '9', '6', '3', '12'),
(2, 'Qual é o valor de 18 - 7?', '1', '11', '10', '12', '13'),
(2, 'Quanto é 12 + 6 + 2?', '1', '20', '18', '22', '21'),
(2, 'Qual o resultado de 64 ÷ 8?', '1', '8', '6', '9', '7'),
(2, 'Se Ana tem 3 caixas com 4 lápis cada, quantos lápis ela tem?', '1', '12', '7', '10', '9'),
(2, 'Quanto é 2 x 10 + 5?', '1', '25', '20', '15', '30'),
(2, 'Qual o resultado de 4²?', '1', '16', '8', '12', '14'),
(2, 'Quanto é 90 - 45?', '1', '45', '40', '35', '50');

-- Inserção dos feedbacks
INSERT INTO Feedback (id_quiz, explicacacao)
VALUES
(61, '25 + 17 = 42. Soma simples de dois números naturais.'),
(62, '100 - 28 = 72. Subtração direta sem reagrupamento.'),
(63, '7 x 6 = 42. Multiplicação básica.'),
(64, '81 dividido por 9 é 9.'),
(65, '5² significa 5 x 5, que é 25.'),
(66, 'João deu 4 balas de 10. 10 - 4 = 6.'),
(67, '3 + 8 + 4 = 15. Soma com três parcelas.'),
(68, 'Todo número multiplicado por 0 é igual a 0.'),
(69, '9² = 81 porque 9 x 9 = 81.'),
(70, '100 - 27 = 73. A operação inversa ajuda a encontrar o número.'),
(71, '50 ÷ 5 = 10. Divisão simples.'),
(72, '8 x 5 = 40. Multiplicação direta.'),
(73, '3² = 3 x 3 = 9. Potenciação simples.'),
(74, '18 - 7 = 11. Subtração simples.'),
(75, '12 + 6 + 2 = 20. Soma de números naturais.'),
(76, '64 ÷ 8 = 8. Divisão simples.'),
(77, '3 x 4 = 12. Multiplicação de duas parcelas.'),
(78, '2 x 10 + 5 = 25. Multiplicação seguida de adição.'),
(79, '4² = 4 x 4 = 16. Potenciação de base 4.'),
(80, '90 - 45 = 45. Subtração direta.');

-- Inserção das 20 questões de dificuldade 2 
INSERT INTO Quiz (id_assunto, pergunta, dificuldade, alternativa1, alternativa2, alternativa3, alternativa4)
VALUES
(2, 'Qual é o quociente de 165 ÷ 15?', '2', '11', '10', '12', '9'),
(2, 'Quanto é 42 x 8?', '2', '336', '322', '348', '308'),
(2, 'O que é 12³?', '2', '1728', '1440', '1300', '1800'),
(2, 'Qual é o valor de 300 ÷ 25?', '2', '12', '13', '11', '14'),
(2, 'Quanto é 125 + 750?', '2', '875', '900', '850', '800'),
(2, 'Se você subtrair 50 de 250, qual é o resultado?', '2', '200', '150', '100', '250'),
(2, 'Quanto é 0,5 x 10?', '2', '5', '4', '6', '7'),
(2, 'Qual o resultado de 96 ÷ 12?', '2', '8', '6', '9', '7'),
(2, 'Qual é o valor de 4 x 5 x 2?', '2', '40', '35', '45', '50'),
(2, 'Qual número subtraído de 500 resulta em 350?', '2', '150', '175', '130', '120'),
(2, 'O que é 15 x 15?', '2', '225', '150', '200', '175'),
(2, 'Qual é o valor de 25 ÷ 5?', '2', '5', '4', '6', '8'),
(2, 'Quanto é 6³?', '2', '216', '125', '150', '200'),
(2, 'Se você adicionar 15 a 35, qual é o resultado?', '2', '50', '55', '40', '45'),
(2, 'Qual é o resultado de 125 ÷ 25?', '2', '5', '6', '7', '4'),
(2, 'O que é 27 ÷ 3?', '2', '9', '6', '12', '8'),
(2, 'Qual o valor de 18 x 4?', '2', '72', '68', '75', '70'),
(2, 'Qual número é o resultado de 75 ÷ 15?', '2', '5', '6', '4', '3'),
(2, 'Quanto é 10³?', '2', '1000', '900', '800', '1100'),
(2, 'Qual é o resultado de 72 ÷ 9?', '2', '8', '9', '7', '6');

-- Inserção dos feedbacks 
INSERT INTO Feedback (id_quiz, explicacacao)
VALUES
(81, '165 ÷ 15 = 11. Divisão simples entre dois números naturais.'),
(82, '42 x 8 = 336. Multiplicação de dois números naturais.'),
(83, '12³ = 1728. Potenciação de 12 com expoente 3.'),
(84, '300 ÷ 25 = 12. Divisão simples.'),
(85, '125 + 750 = 875. Soma de dois números naturais.'),
(86, '250 - 50 = 200. Subtração simples.'),
(87, '0,5 x 10 = 5. Multiplicação com número decimal.'),
(88, '96 ÷ 12 = 8. Divisão simples.'),
(89, '4 x 5 x 2 = 40. Multiplicação de três fatores.'),
(90, '500 - 150 = 350. Subtração simples.'),
(91, '15 x 15 = 225. Multiplicação de dois números naturais.'),
(92, '25 ÷ 5 = 5. Divisão simples.'),
(93, '6³ = 216. Potenciação de 6 com expoente 3.'),
(94, '35 + 15 = 50. Soma simples.'),
(95, '125 ÷ 25 = 5. Divisão direta.'),
(96, '27 ÷ 3 = 9. Divisão simples.'),
(97, '18 x 4 = 72. Multiplicação simples.'),
(98, '75 ÷ 15 = 5. Divisão simples.'),
(99, '10³ = 1000. Potenciação de 10 com expoente 3.'),
(100, '72 ÷ 9 = 8. Divisão simples.');

-- Inserção das 20 questões de dificuldade 3
INSERT INTO Quiz (id_assunto, pergunta, dificuldade, alternativa1, alternativa2, alternativa3, alternativa4)
VALUES
(2, 'Qual é o resto da divisão de 245 por 17?', '3', '7', '8', '6', '5'),
(2, 'Quanto é 314 x 21?', '3', '6594', '6534', '6741', '6700'),
(2, 'Qual é a raiz quadrada de 625?', '3', '25', '24', '20', '30'),
(2, 'Quanto é 8³?', '3', '512', '576', '488', '450'),
(2, 'Se um número é divisível por 6, também é divisível por qual outro número?', '3', '2', '3', '4', '5'),
(2, 'Qual é o resultado de 234 ÷ 18?', '3', '13', '14', '12', '15'),
(2, 'Quanto é 81 ÷ 7?', '3', '11', '12', '10', '13'),
(2, 'Qual é o valor de 1024 ÷ 32?', '3', '32', '31', '33', '30'),
(2, 'Quanto é 7² + 5²?', '3', '74', '64', '69', '79'),
(2, 'Qual é o valor de 512 ÷ 16?', '3', '32', '31', '33', '35'),
(2, 'Quanto é 72 ÷ 6?', '3', '12', '13', '14', '15'),
(2, 'Qual é o valor de 2500 ÷ 25?', '3', '100', '110', '90', '95'),
(2, 'Quanto é 13³?', '3', '2197', '2050', '2200', '2100'),
(2, 'Qual é o quadrado de 15?', '3', '225', '200', '250', '275'),
(2, 'Quanto é 9³?', '3', '729', '720', '740', '710'),
(2, 'Qual é a soma de 56 + 189?', '3', '245', '240', '250', '230'),
(2, 'Quanto é 145 x 36?', '3', '5220', '5200', '5300', '5250'),
(2, 'Qual é a raiz quadrada de 196?', '3', '14', '12', '15', '13'),
(2, 'Qual é o valor de 15²?', '3', '225', '200', '250', '275'),
(2, 'Quanto é 125 ÷ 5?', '3', '25', '22', '30', '28');

-- Inserção dos feedbacks 
INSERT INTO Feedback (id_quiz, explicacacao)
VALUES
(101, '245 ÷ 17 tem resto 7. Resto da divisão inteira.'),
(102, '314 x 21 = 6594. Multiplicação de dois números maiores.'),
(103, 'A raiz quadrada de 625 é 25. Raiz quadrada simples.'),
(104, '8³ = 512. Potenciação de 8 com expoente 3.'),
(105, 'Se é divisível por 6, também é divisível por 2. Divisão múltipla.'),
(106, '234 ÷ 18 = 13. Divisão direta.'),
(107, '81 ÷ 7 = 11. Divisão com resto.'),
(108, '1024 ÷ 32 = 32. Divisão simples.'),
(109, '7² + 5² = 74. Soma de quadrados de dois números.'),
(110, '512 ÷ 16 = 32. Divisão simples.'),
(111, '72 ÷ 6 = 12. Divisão simples.'),
(112, '2500 ÷ 25 = 100. Divisão simples.'),
(113, '13³ = 2197. Potenciação de 13 com expoente 3.'),
(114, '15² = 225. Potenciação de 15.'),
(115, '9³ = 729. Potenciação de 9.'),
(116, '56 + 189 = 245. Soma simples.'),
(117, '145 x 36 = 5220. Multiplicação direta.'),
(118, 'A raiz quadrada de 196 é 14. Raiz quadrada de 196.'),
(119, '15² = 225. Potenciação de 15.'),
(120, '125 ÷ 5 = 25. Divisão direta.');

-- Insert do assunto
INSERT INTO Assunto (nome_assunto) 
VALUES ('Números primos e compostos');

-- Questões nível 1
INSERT INTO Quiz (id_assunto, pergunta, dificuldade, alternativa1, alternativa2, alternativa3, alternativa4) VALUES
(3, 'Qual dos números abaixo é primo?', '1', '7', '9', '10', '12'),
(3, 'Qual dos números abaixo é um número composto?', '1', '8', '3', '5', '7'),
(3, 'Qual dos números abaixo NÃO é primo?', '1', '4', '11', '17', '23'),
(3, 'Qual número possui apenas dois divisores: 1 e ele mesmo?', '1', '13', '6', '9', '15'),
(3, 'Entre os seguintes números, qual é um número primo?', '1', '19', '21', '25', '27'),
(3, 'Qual número composto está entre 10 e 15?', '1', '12', '11', '13', '17'),
(3, 'Qual é o menor número primo?', '1', '2', '1', '0', '4'),
(3, 'Qual das alternativas mostra APENAS números primos?', '1', '3, 5, 7', '2, 4, 6', '6, 8, 10', '9, 15, 21'),
(3, 'Qual número abaixo é divisível por mais de dois números?', '1', '10', '5', '7', '11'),
(3, 'O número 9 é...', '1', 'composto', 'primo', 'ímpar e primo', 'não pode ser classificado'),
(3, 'Qual dos seguintes números é PRIMO?', '1', '17', '18', '20', '21'),
(3, 'Qual dos seguintes números NÃO é composto?', '1', '5', '6', '9', '10'),
(3, 'O número 15 é composto porque...', '1', 'tem mais de dois divisores', 'é múltiplo de 15', 'é ímpar', 'é menor que 20'),
(3, 'Qual dos seguintes números É PRIMO?', '1', '29', '30', '32', '33'),
(3, 'O número 6 é considerado...', '1', 'composto', 'primo', 'ímpar', 'nulo'),
(3, 'Qual número abaixo é COMPOSTO?', '1', '16', '3', '7', '13'),
(3, 'Entre os números abaixo, qual é PRIMO?', '1', '23', '24', '25', '26'),
(3, 'Quantos divisores tem o número 11?', '1', '2', '3', '4', '5'),
(3, 'O número 1 é...', '1', 'não primo nem composto', 'primo', 'composto', 'par'),
(3, 'Qual é o menor número COMPOSTO?', '1', '4', '2', '3', '5');

-- Feedback nível 1
INSERT INTO Feedback (id_quiz, explicacacao) VALUES
(121, 'O número 7 é primo porque só pode ser dividido por 1 e por ele mesmo.'),
(122, 'O número 8 é composto pois possui mais de dois divisores: 1, 2, 4 e 8.'),
(123, 'O número 4 não é primo pois é divisível por 1, 2 e 4.'),
(124, '13 é primo porque seus únicos divisores são 1 e ele mesmo.'),
(125, '19 é primo pois não é divisível por nenhum número além de 1 e 19.'),
(126, '12 é composto porque tem mais de dois divisores: 1, 2, 3, 4, 6 e 12.'),
(127, 'O menor número primo é 2, pois é divisível apenas por 1 e 2.'),
(128, '3, 5 e 7 são todos primos, pois cada um tem apenas dois divisores.'),
(129, 'O número 10 é composto porque é divisível por 1, 2, 5 e 10.'),
(130, '9 é composto porque possui mais de dois divisores: 1, 3 e 9.'),
(131, '17 é primo porque só é divisível por 1 e 17.'),
(132, '5 não é composto, pois possui apenas dois divisores: 1 e 5.'),
(133, '15 é composto porque pode ser dividido por 1, 3, 5 e 15.'),
(134, '29 é primo pois seus únicos divisores são 1 e 29.'),
(135, '6 é composto porque tem mais de dois divisores: 1, 2, 3 e 6.'),
(136, '16 é composto pois é divisível por 1, 2, 4, 8 e 16.'),
(137, '23 é primo porque não possui divisores além de 1 e 23.'),
(138, '11 tem dois divisores: 1 e 11, por isso é primo.'),
(139, 'O número 1 não é considerado primo nem composto.'),
(140, 'O número 4 é o menor composto, pois tem três divisores: 1, 2 e 4.');

-- Questões nível 2
INSERT INTO Quiz (id_assunto, pergunta, dificuldade, alternativa1, alternativa2, alternativa3, alternativa4) VALUES
(3, 'Qual dos números abaixo é primo e maior que 20?', '2', '23', '24', '25', '26'),
(3, 'Qual é o próximo número primo após o 31?', '2', '37', '33', '35', '39'),
(3, 'Quantos números primos existem entre 1 e 10?', '2', '4', '2', '5', '6'),
(3, 'Qual é a soma dos dois menores números primos?', '2', '5', '3', '4', '6'),
(3, 'Qual dos seguintes números possui exatamente 4 divisores?', '2', '6', '2', '3', '5'),
(3, 'O número 27 é composto porque...', '2', 'é divisível por 3 e 9', 'é ímpar', 'é maior que 25', 'é menor que 30'),
(3, 'Qual das expressões abaixo representa corretamente um número primo?', '2', '7 × 1', '6 × 2', '9 × 3', '8 × 1'),
(3, 'Qual é o maior número primo menor que 20?', '2', '19', '18', '17', '16'),
(3, 'Qual número abaixo é primo e ímpar?', '2', '11', '12', '14', '15'),
(3, 'Qual é a menor soma possível entre dois números primos distintos?', '2', '5', '2', '4', '6'),
(3, 'Qual dos pares abaixo é formado SOMENTE por números compostos?', '2', '4 e 6', '2 e 3', '5 e 7', '11 e 13'),
(3, 'O número 21 NÃO é primo porque...', '2', 'é divisível por 3 e 7', 'é ímpar', 'é maior que 20', 'é múltiplo de 10'),
(3, 'O número 49 é composto porque...', '2', 'é múltiplo de 7', 'é ímpar', 'tem dois dígitos iguais', 'é maior que 40'),
(3, 'Qual é o próximo número primo após 13?', '2', '17', '14', '15', '16'),
(3, 'Qual dos seguintes números NÃO é composto?', '2', '17', '9', '12', '15'),
(3, 'Quantos divisores possui o número 13?', '2', '2', '3', '4', '5'),
(3, 'Se um número só pode ser dividido por 1 e por ele mesmo, ele é...', '2', 'primo', 'composto', 'ímpar', 'par'),
(3, 'O número 22 NÃO é primo porque...', '2', 'é par e divisível por 11', 'é maior que 20', 'é múltiplo de 10', 'tem dois dígitos'),
(3, 'Qual das opções é um número primo entre 30 e 40?', '2', '31', '33', '35', '39'),
(3, 'A soma de dois números primos consecutivos pode ser...', '2', '12 (5 + 7)', '10 (4 + 6)', '9 (3 + 6)', '8 (2 + 6)');

-- Feedback nível 2
INSERT INTO Feedback (id_quiz, explicacacao) VALUES
(141, '23 é primo porque só é divisível por 1 e 23.'),
(142, '37 é o próximo número primo após 31, pois não tem divisores além de 1 e 37.'),
(143, 'Entre 1 e 10, há 4 primos: 2, 3, 5 e 7.'),
(144, 'Os dois menores primos são 2 e 3, cuja soma é 5.'),
(145, 'O número 6 tem quatro divisores: 1, 2, 3 e 6.'),
(146, '27 é composto porque é divisível por 1, 3, 9 e 27.'),
(147, '7 × 1 representa um número primo, pois 7 tem apenas dois divisores.'),
(148, '19 é o maior número primo menor que 20.'),
(149, '11 é primo e ímpar, pois só é divisível por 1 e 11.'),
(150, 'A menor soma entre primos distintos é 2 + 3 = 5.'),
(151, '4 e 6 são compostos, pois têm mais de dois divisores.'),
(152, '21 não é primo porque é divisível por 3 e 7.'),
(153, '49 é composto porque é múltiplo de 7: 7 × 7 = 49.'),
(154, '17 é o próximo número primo após 13.'),
(155, '17 não é composto, pois possui apenas dois divisores.'),
(156, 'O número 13 tem apenas dois divisores: 1 e 13.'),
(157, 'Um número que só se divide por 1 e por ele mesmo é chamado de primo.'),
(158, '22 não é primo porque é par e divisível por 11.'),
(159, '31 é primo e está entre 30 e 40.'),
(160, 'A soma de dois primos consecutivos, como 5 + 7, pode ser 12.');

-- Questões nível 3
INSERT INTO Quiz (id_assunto, pergunta, dificuldade, alternativa1, alternativa2, alternativa3, alternativa4) VALUES
(3, 'Qual número abaixo é primo, ímpar, e NÃO termina com 1?', '3', '17', '21', '31', '11'),
(3, 'Qual das opções representa um número COMPOSTO ÍMPAR menor que 20?', '3', '15', '13', '7', '19'),
(3, 'Qual é o número primo mais próximo de 50?', '3', '47', '49', '51', '53'),
(3, 'Qual número abaixo é composto e possui MAIS DE TRÊS DIVISORES DIFERENTES?', '3', '12', '5', '7', '11'),
(3, 'A soma de dois números primos consecutivos pode resultar em um número...', '3', 'par e composto', 'ímpar e primo', 'par e primo', 'ímpar e composto'),
(3, 'Se um número é par e maior que 2, então ele é...', '3', 'composto', 'primo', 'ímpar', 'inclassificável'),
(3, 'Qual alternativa apresenta DOIS NÚMEROS PRIMOS CONSECUTIVOS?', '3', '11 e 13', '9 e 11', '13 e 15', '15 e 17'),
(3, 'Qual é o menor número composto que é MÚLTIPLO DE 3 E 4?', '3', '12', '6', '9', '15'),
(3, 'Quantos divisores tem o número composto 18?', '3', '6', '4', '3', '5'),
(3, 'Qual número primo abaixo é também PALÍNDROMO?', '3', '131', '121', '1511', '1331'),
(3, 'Qual é o maior número primo menor que 100?', '3', '97', '91', '93', '99'),
(3, 'A diferença entre dois números primos pode ser...', '3', 'par e composta', 'primo', 'zero', 'ímpar e par'),
(3, 'Qual é o menor número que NÃO É PRIMO NEM COMPOSTO?', '3', '1', '0', '2', '3'),
(3, 'Se um número tem exatamente três divisores, ele é...', '3', 'quadrado de um primo', 'número primo', 'composto com três fatores primos', 'ímpar e múltiplo de três'),
(3, 'O número 91 é composto porque...', '3', 'é divisível por 7 e 13', 'é ímpar e maior que 90', 'não é par', 'não é múltiplo de 10'),
(3, 'Qual número é primo e fator de 100?', '3', '5', '10', '20', '25'),
(3, 'Entre os números abaixo, qual é composto, par e múltiplo de 6?', '3', '30', '12', '18', '24'),
(3, 'Qual par de números abaixo tem soma e diferença que são números primos?', '3', '7 e 2', '5 e 3', '11 e 5', '13 e 7'),
(3, 'Qual é o número primo entre 90 e 100?', '3', '97', '91', '93', '95'),
(3, 'Se n é um número primo maior que 2, então n² é sempre...', '3', 'ímpar e composto', 'par e primo', 'ímpar e primo', 'composto e divisível por 2');

-- Feedback nível 3
INSERT INTO Feedback (id_quiz, explicacacao) VALUES
(161, '17 é primo, ímpar e não termina com 1.'),
(162, '15 é composto, ímpar e menor que 20, pois tem mais de dois divisores.'),
(163, '47 é o número primo mais próximo de 50, pois 49, 51 e 53 não são todos primos.'),
(164, '12 tem seis divisores: 1, 2, 3, 4, 6 e 12, sendo composto.'),
(165, 'A soma de dois primos consecutivos como 5 + 7 = 12 resulta em um número par e composto.'),
(166, 'Todo número par maior que 2 é composto, pois é divisível por 2 e outros números.'),
(167, '11 e 13 são primos consecutivos, pois estão lado a lado na sequência dos primos.'),
(168, '12 é o menor número composto múltiplo de 3 e 4 (3 × 4 = 12).'),
(169, '18 tem seis divisores: 1, 2, 3, 6, 9 e 18.'),
(170, '131 é um número primo e também palíndromo (lê-se igual de trás para frente).'),
(171, '97 é o maior número primo menor que 100.'),
(172, 'A diferença entre dois primos como 7 e 3 pode ser 4, que é par e composta.'),
(173, 'O número 1 não é primo nem composto, é uma exceção matemática.'),
(174, 'Se um número tem três divisores, é o quadrado de um número primo (ex: 9 = 3²).'),
(175, '91 é composto porque é divisível por 7 e 13 (7 × 13 = 91).'),
(176, '5 é um número primo e também é fator de 100 (5 × 20 = 100).'),
(177, '30 é par, composto e múltiplo de 6 (6 × 5 = 30).'),
(178, '7 e 2 têm soma 9 e diferença 5, ambos primos.'),
(179, '97 é primo e está entre 90 e 100.'),
(180, 'n² de um primo maior que 2 é sempre ímpar e composto (ex: 3² = 9, 5² = 25).');

-- Insert do assunto
INSERT INTO Assunto (nome_assunto) 
VALUES ('Frações');

-- Questões nível 1
INSERT INTO Quiz (id_assunto, pergunta, dificuldade, alternativa1, alternativa2, alternativa3, alternativa4) VALUES
(4, 'Qual fração representa a metade de um inteiro?', '1', '1/2', '2/2', '3/4', '1/3'),
(4, 'Qual fração é equivalente a 2/4?', '1', '1/2', '3/4', '2/3', '1/4'),
(4, 'Qual fração representa três partes de um total de quatro?', '1', '3/4', '1/4', '1/3', '2/4'),
(4, 'Qual é o resultado de 1/2 + 1/2?', '1', '1', '1/2', '2', '3/4'),
(4, 'Qual é o resultado de 3/4 - 1/4?', '1', '1/2', '2/4', '3/4', '1/4'),
(4, 'Qual das frações abaixo é menor que 1/2?', '1', '1/4', '3/4', '2/3', '4/5'),
(4, 'Qual das frações abaixo é equivalente a 4/8?', '1', '1/2', '3/4', '2/4', '5/8'),
(4, 'Quanto é 1/3 de 9?', '1', '3', '2', '4', '6'),
(4, 'Quanto é 1/4 de 8?', '1', '2', '4', '1', '3'),
(4, 'Qual fração representa um terço?', '1', '1/3', '1/4', '3/4', '2/3'),
(4, 'Qual é o resultado de 1/4 + 1/4?', '1', '1/2', '1/4', '3/4', '2/3'),
(4, 'Qual das frações representa a parte maior?', '1', '3/4', '1/2', '2/5', '1/3'),
(4, 'Qual das frações representa a menor quantidade?', '1', '1/5', '1/4', '1/3', '1/2'),
(4, 'Se tenho uma pizza dividida em 8 partes iguais e como 3, comi que fração?', '1', '3/8', '1/8', '4/8', '5/8'),
(4, 'Qual é a fração equivalente a 5/10?', '1', '1/2', '2/5', '3/4', '5/8'),
(4, 'Qual é o resultado de 2/5 + 1/5?', '1', '3/5', '1/5', '2/10', '4/5'),
(4, 'Quanto é 1/2 de 10?', '1', '5', '2', '3', '4'),
(4, 'Qual fração representa cinco partes de dez?', '1', '5/10', '1/5', '2/10', '3/10'),
(4, 'Qual é o resultado de 1 - 1/4?', '1', '3/4', '1/2', '2/4', '1/3'),
(4, 'Quanto é 2/3 de 6?', '1', '4', '2', '3', '5');

-- Feedback nível 1
INSERT INTO Feedback (id_quiz, explicacacao) VALUES
(181, '1/2 representa a metade de um inteiro, pois divide algo em duas partes iguais.'),
(182, '1/2 é equivalente a 2/4, pois 2 dividido por 4 é igual a 1 dividido por 2.'),
(183, '3/4 representa três partes de um total de quatro.'),
(184, '1/2 + 1/2 resulta em 1, pois somando duas metades temos o inteiro.'),
(185, '3/4 - 1/4 é igual a 2/4, que equivale a 1/2.'),
(186, '1/4 é menor que 1/2, pois representa uma parte menor do todo.'),
(187, '4/8 é equivalente a 1/2, pois 4 dividido por 8 é igual a 1 dividido por 2.'),
(188, '1/3 de 9 é igual a 3, pois 9 dividido por 3 é 3.'),
(189, '1/4 de 8 é igual a 2, pois 8 dividido por 4 é 2.'),
(190, '1/3 representa um terço, ou seja, uma parte de um total dividido em três partes.'),
(191, '1/4 + 1/4 é igual a 2/4, que equivale a 1/2.'),
(192, '3/4 é maior do que todas as outras frações listadas.'),
(193, '1/5 é a menor das frações apresentadas, pois representa uma parte menor.'),
(194, 'Comer 3 de 8 partes representa a fração 3/8.'),
(195, '5/10 é equivalente a 1/2, pois ambos representam metade.'),
(196, '2/5 + 1/5 é igual a 3/5, pois os denominadores são iguais.'),
(197, '1/2 de 10 é igual a 5, pois 10 dividido por 2 é 5.'),
(198, '5/10 representa cinco partes de um total de dez.'),
(199, '1 - 1/4 é igual a 3/4, pois sobra essa fração do inteiro.'),
(200, '2/3 de 6 é igual a 4, pois 6 vezes 2 dividido por 3 é 4.');

-- Questões nível 2
INSERT INTO Quiz (id_assunto, pergunta, dificuldade, alternativa1, alternativa2, alternativa3, alternativa4) VALUES
(4, 'Qual é o resultado de 2/3 + 1/6?', '2', '5/6', '3/6', '1/2', '2/6'),
(4, 'Qual das frações é equivalente a 6/8?', '2', '3/4', '2/3', '5/6', '4/5'),
(4, 'Se Ana comeu 2/5 de um bolo e João comeu 1/5, quanto eles comeram juntos?', '2', '3/5', '1/2', '2/4', '4/5'),
(4, 'Qual número é maior: 2/3 ou 3/5?', '2', '2/3', '3/5', 'São iguais', 'Não é possível comparar'),
(4, 'Qual é a fração que representa 3 partes de 6?', '2', '3/6', '2/6', '1/3', '4/6'),
(4, 'Qual o valor de 3/4 - 1/2?', '2', '1/4', '2/4', '1/2', '3/8'),
(4, 'Pedro leu 5/8 de um livro. Quanto falta para terminar?', '2', '3/8', '2/8', '5/5', '3/5'),
(4, 'Quanto é 2/3 de 9?', '2', '6', '5', '4', '3'),
(4, 'Se 1/4 de uma sala está ocupada, qual parte está livre?', '2', '3/4', '1/2', '2/4', '1/3'),
(4, 'Escolha a alternativa equivalente a 7/14.', '2', '1/2', '3/4', '2/3', '5/10'),
(4, 'Se João comeu 3/10 de uma torta e depois mais 2/10, quanto ele comeu ao todo?', '2', '5/10', '4/10', '3/5', '2/5'),
(4, 'Entre as frações abaixo, qual é a menor?', '2', '2/7', '3/5', '1/2', '5/6'),
(4, 'Qual o resultado de 4/6 - 1/3?', '2', '1/2', '2/3', '1/3', '2/6'),
(4, 'Qual é o resultado de 5/6 + 1/12?', '2', '11/12', '6/12', '1', '7/8'),
(4, 'Lucas bebeu 3/4 de um litro de suco. Quantos mililitros ele bebeu?', '2', '750 ml', '500 ml', '600 ml', '800 ml'),
(4, 'Qual fração representa a quantidade de chocolate restante se 2/5 foi consumido?', '2', '3/5', '2/3', '4/5', '1/5'),
(4, 'Qual a soma de 1/6 + 1/3 + 1/2?', '2', '1', '5/6', '7/8', '3/4'),
(4, 'Qual das frações representa exatamente a metade?', '2', '5/10', '2/3', '4/8', '6/12'),
(4, 'Se Maria comeu 2/8 de uma barra de chocolate e Pedro comeu 4/8, quem comeu mais?', '2', 'Pedro', 'Maria', 'Comeram igual', 'Não é possível saber'),
(4, 'Uma caixa tem 12 bombons. Se João comeu 3/4 da caixa, quantos bombons ele comeu?', '2', '9', '6', '8', '3');

-- Feedback nível 2
INSERT INTO Feedback (id_quiz, explicacacao) VALUES
(201, 'Para somar 2/3 e 1/6, é necessário encontrar o denominador comum. O resultado é 5/6.'),
(202, '6/8 é equivalente a 3/4, pois ambos representam a mesma proporção após simplificação.'),
(203, '2/5 + 1/5 = 3/5, pois os denominadores são iguais e somamos os numeradores.'),
(204, '2/3 é maior que 3/5 porque representa uma parte maior do todo.'),
(205, '3/6 representa 3 partes de um total de 6, que é equivalente a 1/2.'),
(206, '3/4 - 1/2 = 1/4, pois 1/2 equivale a 2/4 e 3/4 - 2/4 = 1/4.'),
(207, 'Se Pedro leu 5/8, falta 3/8 para terminar o livro.'),
(208, '2/3 de 9 é igual a 6, pois 9 vezes 2 dividido por 3 é 6.'),
(209, 'Se 1/4 da sala está ocupada, 3/4 está livre, pois 1 - 1/4 = 3/4.'),
(210, '7/14 é equivalente a 1/2, pois 7 dividido por 7 e 14 dividido por 7 dá 1/2.'),
(211, '3/10 + 2/10 = 5/10, somando numeradores com denominadores iguais.'),
(212, 'Entre as opções, 2/7 é a menor fração, pois representa a menor parte do inteiro.'),
(213, '4/6 - 1/3 = 1/2, pois 1/3 é igual a 2/6 e 4/6 - 2/6 = 2/6 = 1/2.'),
(214, '5/6 + 1/12 = 11/12 após encontrar o denominador comum.'),
(215, '3/4 de 1 litro são 750 ml, pois 1 litro = 1000 ml e 1000 × 3/4 = 750.'),
(216, 'Se 2/5 foi consumido, resta 3/5 do chocolate.'),
(217, '1/6 + 1/3 + 1/2 = 1 após calcular com denominador comum (6).'),
(218, '5/10 representa a metade do inteiro, assim como 1/2.'),
(219, 'Pedro comeu 4/8, Maria 2/8. 4/8 > 2/8, então Pedro comeu mais.'),
(220, '3/4 de 12 bombons é 9, pois 12 × 3 ÷ 4 = 9.');

-- Questões nível 3
INSERT INTO Quiz (id_assunto, pergunta, dificuldade, alternativa1, alternativa2, alternativa3, alternativa4) VALUES
(4, 'João percorreu 3/5 de um trajeto pela manhã e 1/5 à tarde. Que fração ainda falta percorrer?', '3', '1/5', '2/5', '4/5', '0'),
(4, 'Qual é o resultado de 2/3 - 1/4?', '3', '5/12', '3/7', '1/2', '1/6'),
(4, 'Soma-se 1/2 + 1/3 + 1/4. Qual o resultado?', '3', '13/12', '11/12', '1', '5/6'),
(4, 'Em uma caixa com 24 livros, 1/3 são de matemática e 1/4 são de ciências. Quantos livros não são dessas matérias?', '3', '10', '8', '6', '12'),
(4, 'Qual é o valor de 7/8 - 3/16?', '3', '11/16', '1/2', '9/16', '5/8'),
(4, 'Lucas bebeu 2/5 de um litro de suco pela manhã e 1/4 à tarde. Quanto ele bebeu ao todo?', '3', '13/20', '7/9', '3/4', '5/8'),
(4, 'Multiplicando 2/3 por 3/4, obtemos:', '3', '1/2', '3/7', '5/6', '6/9'),
(4, 'Qual é a diferença entre 5/6 e 2/3?', '3', '1/6', '3/6', '2/6', '1/3'),
(4, 'Se um terreno foi dividido em 8 partes iguais e João ficou com 5/8 e Maria com 1/4, quem ficou com a maior parte?', '3', 'João', 'Maria', 'Ficaram iguais', 'Não é possível saber'),
(4, 'Qual é a fração irredutível de 18/24?', '3', '3/4', '2/3', '5/8', '6/8'),
(4, 'Se 3/7 de uma reserva de água foi usada, que parte ainda resta?', '3', '4/7', '2/7', '3/4', '5/7'),
(4, 'Em uma receita, usa-se 2/3 de xícara de açúcar. Se for dobrada, quanto será usado?', '3', '4/3', '1', '5/3', '3/2'),
(4, 'Qual é o resultado de 3/5 + 2/3?', '3', '19/15', '5/8', '1', '17/15'),
(4, 'Multiplicando 3/4 por 1/2, qual o resultado?', '3', '3/8', '2/5', '1/3', '5/8'),
(4, 'Uma barra de chocolate foi dividida em 16 partes. Se Maria comeu 3/8 e João 1/4, quantas partes eles comeram juntos?', '3', '8', '6', '7', '5'),
(4, 'Qual número equivale a 75% em forma de fração irredutível?', '3', '3/4', '2/3', '5/6', '6/8'),
(4, 'Se 2/5 de uma sala está ocupada, e 1/4 foi reservada, quanto ainda está livre?', '3', '7/20', '9/20', '11/20', '5/20'),
(4, 'Qual o valor de 7/10 - 1/3?', '3', '11/30', '9/30', '7/13', '6/10'),
(4, 'Um time ganhou 3/8 dos jogos e empatou 1/4. Qual fração ele perdeu?', '3', '3/8', '2/8', '1/4', '5/8'),
(4, 'Qual a fração que representa 45 minutos de uma hora?', '3', '3/4', '2/3', '1/2', '5/6');

-- Feedback nível 3
INSERT INTO Feedback (id_quiz, explicacacao) VALUES
(221, 'João percorreu 3/5 + 1/5 = 4/5. Ainda falta 1/5 do trajeto.'),
(222, 'Para subtrair 2/3 - 1/4, usamos o MMC (12): 8/12 - 3/12 = 5/12.'),
(223, '1/2 + 1/3 + 1/4 = 6/12 + 4/12 + 3/12 = 13/12.'),
(224, '1/3 de 24 = 8, 1/4 de 24 = 6. Total = 14. Então, 24 - 14 = 10 livros restantes.'),
(225, '7/8 - 3/16 = 14/16 - 3/16 = 11/16.'),
(226, '2/5 + 1/4 = 8/20 + 5/20 = 13/20.'),
(227, '2/3 × 3/4 = 6/12 = 1/2 após simplificação.'),
(228, '5/6 - 2/3 = 5/6 - 4/6 = 1/6.'),
(229, '5/8 é maior que 1/4 (2/8). Logo, João ficou com a maior parte.'),
(230, '18/24 simplifica-se por 6: 18÷6 = 3, 24÷6 = 4 → 3/4.'),
(231, 'Se 3/7 foi usado, resta 1 - 3/7 = 4/7.'),
(232, 'Dobrar 2/3 = 2 × 2/3 = 4/3.'),
(233, '3/5 + 2/3 = 9/15 + 10/15 = 19/15.'),
(234, '3/4 × 1/2 = 3/8.'),
(235, '3/8 de 16 = 6, 1/4 de 16 = 4. Total = 10 partes.'),
(236, '75% = 75/100 = 3/4 após simplificação.'),
(237, '2/5 + 1/4 = 8/20 + 5/20 = 13/20. 1 - 13/20 = 7/20 livre.'),
(238, '7/10 - 1/3 = 21/30 - 10/30 = 11/30.'),
(239, '3/8 + 1/4 = 3/8 + 2/8 = 5/8 jogados, então perdeu 3/8.'),
(240, '45 minutos de 60 = 45/60 = 3/4.');

-- Inserindo o assunto
INSERT INTO Assunto (nome_assunto) 
VALUES ('operações com números racionais');

-- Questões nível 1
INSERT INTO Quiz (id_assunto, pergunta, dificuldade, alternativa1, alternativa2, alternativa3, alternativa4) VALUES
(5, 'Qual é o resultado de 3 + (-2)?', '1', '1', '-5', '0', '2'),
(5, 'Quanto é -4 + 7?', '1', '3', '-3', '11', '1'),
(5, 'Qual é o resultado de -5 - 2?', '1', '-7', '-3', '7', '2'),
(5, 'Resolva: 2,5 + 1,5', '1', '4', '3', '2', '5'),
(5, 'Qual é o resultado de -3 + (-2)?', '1', '-5', '5', '1', '-1'),
(5, 'Resolva: 1/2 + 1/2', '1', '1', '1/4', '3/4', '2'),
(5, 'Quanto é 4 - 1,5?', '1', '2,5', '3', '1,5', '4,5'),
(5, 'Qual o valor de -6 + 6?', '1', '0', '12', '-12', '6'),
(5, 'Qual é o resultado de 1/4 + 1/4?', '1', '1/2', '1', '1/4', '2/3'),
(5, 'Resolva: 0,5 × 2', '1', '1', '0,1', '2', '0,25'),
(5, 'Quanto é -2 × 3?', '1', '-6', '6', '-5', '-3'),
(5, 'Qual é o resultado de 3 × (-1)?', '1', '-3', '3', '1', '0'),
(5, 'Resolva: 2 ÷ 0,5', '1', '4', '1', '0', '2'),
(5, 'Quanto é -9 ÷ 3?', '1', '-3', '3', '-6', '-12'),
(5, 'Qual é o resultado de -12 ÷ (-4)?', '1', '3', '-3', '0', '4'),
(5, 'Resolva: 1/2 × 4', '1', '2', '1', '4', '1/4'),
(5, 'Qual é o valor de 3/4 + 1/4?', '1', '1', '3/4', '1/2', '2'),
(5, 'Quanto é 0,6 + 0,4?', '1', '1', '0,9', '0,7', '0,8'),
(5, 'Qual o resultado de -5 + 0?', '1', '-5', '5', '0', '-10'),
(5, 'Resolva: 10 ÷ 2', '1', '5', '2', '10', '8');

-- Feedback nível 1
INSERT INTO Feedback (id_quiz, explicacacao) VALUES
(241, '3 + (-2) = 1, pois somar um número negativo equivale a subtrair.'),
(242, '-4 + 7 = 3, pois 7 é maior e tem sinal positivo.'),
(243, '-5 - 2 = -7, pois estamos subtraindo mais de um número negativo.'),
(244, '2,5 + 1,5 = 4. Soma simples de números decimais.'),
(245, '-3 + (-2) = -5, pois somar dois negativos mantém o sinal.'),
(246, '1/2 + 1/2 = 2/2 = 1.'),
(247, '4 - 1,5 = 2,5.'),
(248, '-6 + 6 = 0, pois são opostos.'),
(249, '1/4 + 1/4 = 2/4 = 1/2.'),
(250, '0,5 × 2 = 1.'),
(251, '-2 × 3 = -6. Negativo vezes positivo dá negativo.'),
(252, '3 × (-1) = -3.'),
(253, '2 ÷ 0,5 = 4, pois é o mesmo que 2 dividido por meio.'),
(254, '-9 ÷ 3 = -3.'),
(255, '-12 ÷ (-4) = 3. Divisão de dois negativos dá positivo.'),
(256, '1/2 × 4 = 4/2 = 2.'),
(257, '3/4 + 1/4 = 4/4 = 1.'),
(258, '0,6 + 0,4 = 1.'),
(259, '-5 + 0 = -5. Qualquer número somado a 0 continua igual.'),
(260, '10 ÷ 2 = 5.');

-- Questões nível 2
INSERT INTO Quiz (id_assunto, pergunta, dificuldade, alternativa1, alternativa2, alternativa3, alternativa4) VALUES
(5, 'Se Ana tinha R$ 12,50 e gastou R$ 8,75, quanto sobrou?', '2', 'R$ 3,75', 'R$ 4,25', 'R$ 2,25', 'R$ 5,00'),
(5, 'Qual o valor de -3,5 + 1,2?', '2', '-2,3', '-4,7', '2,3', '-1,5'),
(5, 'João percorreu -2,5 km pela manhã e 3,5 km à tarde. Qual a distância total percorrida?', '2', '1 km', '6 km', '-1 km', '0 km'),
(5, 'Resolva: 1/2 + 2/3', '2', '7/6', '5/6', '1', '3/5'),
(5, 'Qual o resultado de -1,2 × 2,5?', '2', '-3', '-3,2', '3', '-2'),
(5, 'Resolva: 5/6 - 1/3', '2', '1/2', '2/3', '1/3', '5/9'),
(5, 'Quanto é -7 ÷ 2?', '2', '-3,5', '-2,5', '3,5', '4'),
(5, 'Pedro deve R$ 15 e paga R$ 6. Qual seu saldo atual?', '2', '-R$ 9', '-R$ 21', 'R$ 9', 'R$ 6'),
(5, 'Resolva: 0,25 × 0,4', '2', '0,10', '0,01', '0,20', '0,15'),
(5, 'Quanto é -2/5 + 3/10?', '2', '-1/10', '1/2', '1/10', '-5/10'),
(5, 'Qual é o resultado de (-4) × (-0,5)?', '2', '2', '-2', '4', '-4'),
(5, 'Resolva: 1,25 - 2,75', '2', '-1,5', '-2,5', '-1,25', '1,5'),
(5, 'Qual o resultado de 3/4 ÷ 1/2?', '2', '1,5', '2', '1/2', '1'),
(5, 'Se um produto custa R$ 18,90 e você paga R$ 50, qual o troco?', '2', 'R$ 31,10', 'R$ 30,00', 'R$ 29,10', 'R$ 32,10'),
(5, 'Resolva: 2,4 ÷ 0,2', '2', '12', '0,12', '6', '8'),
(5, 'Quanto é -3/4 - 1/4?', '2', '-1', '-2', '-1/2', '1/2'),
(5, 'Joana comeu 2/5 de uma pizza e depois mais 1/5. Quanto ela comeu ao todo?', '2', '3/5', '1/2', '4/5', '2/3'),
(5, 'Se -2 × x = 6, qual o valor de x?', '2', '-3', '3', '0', '6'),
(5, 'Qual o valor de 7/8 - 3/8?', '2', '1/2', '5/8', '3/4', '1/4'),
(5, 'Resolva: 1,2 + (-0,7)', '2', '0,5', '1,9', '0,7', '-0,5');

-- Feedback nível 2
INSERT INTO Feedback (id_quiz, explicacacao) VALUES
(261, 'R$ 12,50 - R$ 8,75 = R$ 3,75.'),
(262, '-3,5 + 1,2 = -2,3. Soma entre negativo e positivo.'),
(263, '-2,5 + 3,5 = 1 km. Soma entre sinais diferentes.'),
(264, '1/2 + 2/3 = 3/6 + 4/6 = 7/6.'),
(265, '-1,2 × 2,5 = -3.'),
(266, '5/6 - 1/3 = 5/6 - 2/6 = 3/6 = 1/2.'),
(267, '-7 ÷ 2 = -3,5.'),
(268, 'Se deve R$ 15 e paga R$ 6, continua devendo R$ 9.'),
(269, '0,25 × 0,4 = 0,10.'),
(270, '-2/5 + 3/10 = -4/10 + 3/10 = -1/10.'),
(271, '(-4) × (-0,5) = 2. Produto de dois negativos dá positivo.'),
(272, '1,25 - 2,75 = -1,5.'),
(273, '3/4 ÷ 1/2 = 3/4 × 2 = 6/4 = 1,5.'),
(274, 'R$ 50 - R$ 18,90 = R$ 31,10.'),
(275, '2,4 ÷ 0,2 = 12.'),
(276, '-3/4 - 1/4 = -4/4 = -1.'),
(277, '2/5 + 1/5 = 3/5.'),
(278, '-2 × x = 6 ⇒ x = -3.'),
(279, '7/8 - 3/8 = 4/8 = 1/2.'),
(280, '1,2 + (-0,7) = 0,5.');

-- Questões nível 3
INSERT INTO Quiz (id_assunto, pergunta, dificuldade, alternativa1, alternativa2, alternativa3, alternativa4) VALUES
(5, 'João perdeu R$ 12,30 em um dia e ganhou R$ 7,45 no outro. Qual seu saldo?', '3', '-R$ 4,85', '-R$ 19,75', 'R$ 4,85', 'R$ 19,75'),
(5, 'Qual o resultado de (-3/4) + (2,5)?', '3', '1,75', '2,25', '3,25', '1,25'),
(5, 'Se Pedro caminha -1,5 km pela manhã e 2,7 km à tarde, qual a distância total?', '3', '1,2 km', '-1,2 km', '4,2 km', '0 km'),
(5, 'Resolva: (2/3) + (-5/6)', '3', '-1/6', '1/6', '5/6', '-2/3'),
(5, 'Mariana tem R$ 12,60 e gasta 3/5 em livros. Quanto sobra?', '3', 'R$ 5,04', 'R$ 7,56', 'R$ 6,00', 'R$ 4,00'),
(5, 'Qual o resultado de (-2,5) × (-1,2)?', '3', '3', '-3', '1,2', '2,5'),
(5, 'João tinha uma dívida de R$ 15, pagou R$ 10 e depois gastou mais R$ 5. Qual o saldo?', '3', '-R$ 10', '-R$ 5', 'R$ 0', 'R$ 10'),
(5, 'Resolva: (-3/4) ÷ (1/2)', '3', '-1,5', '-1/2', '-3/2', '1,5'),
(5, 'Se (x ÷ 1/3) = -6, qual o valor de x?', '3', '-2', '2', '-3', '3'),
(5, 'André andou -4,8 km, depois 2,3 km. Qual a variação de deslocamento?', '3', '-2,5 km', '2,5 km', '7,1 km', '-7,1 km'),
(5, 'Qual o resultado de (5/8) - (3/4)?', '3', '-1/8', '1/8', '-5/8', '-1/4'),
(5, 'Se 60% de um valor corresponde a R$ 18, qual é o valor total?', '3', 'R$ 30', 'R$ 25', 'R$ 24', 'R$ 36'),
(5, 'Resolva: (1/2) × (-4) + 2', '3', '0', '-2', '4', '1'),
(5, 'Carlos tinha R$ 20, comprou dois itens de R$ 6,25 cada. Quanto restou?', '3', 'R$ 7,50', 'R$ 12,50', 'R$ 6,25', 'R$ 5,00'),
(5, 'Qual o valor de: (-2,5) + (-1,5) × 2?', '3', '-5,5', '-4,5', '-6', '-3,5'),
(5, 'Se (3/5) × x = 1,2, quanto vale x?', '3', '2', '2,2', '1', '1,5'),
(5, 'Resolva: (7/10) ÷ (1/5)', '3', '3,5', '0,35', '1,4', '7'),
(5, 'Um objeto custa R$ 18,90 e sofre desconto de R$ 7,45. Qual o preço final?', '3', 'R$ 11,45', 'R$ 12,45', 'R$ 10,45', 'R$ 13,45'),
(5, 'Qual o resultado de (-2/3) + (-1/6)?', '3', '-5/6', '-1/2', '-1/3', '-1'),
(5, 'Se -2 × x = 5, qual o valor de x?', '3', '-2,5', '2,5', '5', '-5');

-- Feedback nível 3
INSERT INTO Feedback (id_quiz, explicacacao) VALUES
(281, '-R$ 12,30 + R$ 7,45 = -R$ 4,85.'),
(282, '-3/4 + 2,5 = -0,75 + 2,5 = 1,75.'),
(283, '-1,5 + 2,7 = 1,2 km.'),
(284, '2/3 + (-5/6) = 4/6 - 5/6 = -1/6.'),
(285, '3/5 de R$ 12,60 = R$ 7,56. Então sobra R$ 5,04.'),
(286, '-2,5 × -1,2 = 3.'),
(287, 'Dívida de R$ 15 - R$ 10 = -R$ 5. Gastou mais R$ 5 → saldo = -R$ 10.'),
(288, '(-3/4) ÷ (1/2) = -3/4 × 2 = -6/4 = -1,5.'),
(289, 'x ÷ 1/3 = -6 → x = -6 × 1/3 = -2.'),
(290, '-4,8 + 2,3 = -2,5 km.'),
(291, '5/8 - 6/8 = -1/8.'),
(292, '60% de x = 18 → x = 18 ÷ 0,6 = R$ 30.'),
(293, '(1/2 × -4) + 2 = -2 + 2 = 0.'),
(294, 'Dois itens de R$ 6,25 = R$ 12,50. Sobra: R$ 20 - R$ 12,50 = R$ 7,50.'),
(295, '-2,5 + (-1,5 × 2) = -2,5 - 3 = -5,5.'),
(296, '3/5 × x = 1,2 → x = 1,2 ÷ (3/5) = 1,2 × 5/3 = 2.'),
(297, '7/10 ÷ 1/5 = 7/10 × 5 = 35/10 = 3,5.'),
(298, 'R$ 18,90 - R$ 7,45 = R$ 11,45.'),
(299, '-2/3 + -1/6 = -4/6 - 1/6 = -5/6.'),
(300, '-2 × x = 5 → x = -2,5.');

-- Inserindo o assunto
INSERT INTO Assunto (nome_assunto) VALUES ('Aproximação de números para múltiplos de potências de 10');

-- Questões nível 1
INSERT INTO Quiz (id_assunto, pergunta, dificuldade, alternativa1, alternativa2, alternativa3, alternativa4) VALUES
(6, 'Aproxime 47 para a dezena mais próxima.', '1', '50', '40', '45', '60'),
(6, 'Aproxime 183 para a centena mais próxima.', '1', '200', '100', '180', '150'),
(6, 'Qual a aproximação de 9 para a dezena mais próxima?', '1', '10', '0', '9', '5'),
(6, 'Aproxime 623 para a centena mais próxima.', '1', '600', '700', '620', '650'),
(6, 'Qual a centena mais próxima de 749?', '1', '700', '800', '750', '740'),
(6, 'Aproxime 3.276 para a milhar mais próxima.', '1', '3.000', '4.000', '3.500', '3.200'),
(6, 'Aproxime 865 para a centena mais próxima.', '1', '900', '800', '850', '870'),
(6, 'Aproxime 2.499 para a milhar mais próxima.', '1', '2.000', '2.500', '3.000', '2.400'),
(6, 'Aproxime 57 para a dezena mais próxima.', '1', '60', '50', '55', '70'),
(6, 'Aproxime 15 para a dezena mais próxima.', '1', '20', '10', '15', '12'),
(6, 'Qual a aproximação de 4.821 para a milhar mais próxima?', '1', '5.000', '4.000', '4.800', '4.500'),
(6, 'Aproxime 39 para a dezena mais próxima.', '1', '40', '30', '35', '50'),
(6, 'Aproxime 1.234 para a centena mais próxima.', '1', '1.200', '1.300', '1.100', '1.250'),
(6, 'Aproxime 98 para a dezena mais próxima.', '1', '100', '90', '95', '99'),
(6, 'Qual o múltiplo de 100 mais próximo de 1.890?', '1', '1.900', '1.800', '2.000', '1.850'),
(6, 'Aproxime 5.149 para a milhar mais próxima.', '1', '5.000', '6.000', '5.100', '5.500'),
(6, 'Aproxime 1.789 para a centena mais próxima.', '1', '1.800', '1.700', '1.750', '1.850'),
(6, 'Qual o milhar mais próximo de 6.700?', '1', '7.000', '6.000', '6.500', '6.900'),
(6, 'Aproxime 66 para a dezena mais próxima.', '1', '70', '60', '65', '75'),
(6, 'Qual o múltiplo de 10 mais próximo de 12?', '1', '10', '20', '15', '12');


-- Feedback nível 1
INSERT INTO Feedback (id_quiz, explicacacao) VALUES
(301, 'Para aproximar um número para a dezena mais próxima, observe a unidade (o último dígito). Se for 5 ou mais, arredonde para cima. Caso contrário, arredonde para baixo.'),
(302, 'Para aproximar um número para a centena mais próxima, observe a dezena. Se for 50 ou mais, arredonde para a centena superior. Se for 49 ou menos, arredonde para a centena inferior.'),
(303, 'Para aproximar o número 9 para a dezena mais próxima, considere a unidade. Como é menor que 5, arredondamos para 0.'),
(304, 'Para aproximar 623 para a centena mais próxima, observe as dezenas. Como são 20, o número mais próximo é 600.'),
(305, 'Para encontrar a centena mais próxima de 749, considere as dezenas. Como são 40, a centena mais próxima é 700.'),
(306, 'Para aproximar 3.276 para a milhar mais próxima, observe as centenas. Como são 200, o número mais próximo é 3.000.'),
(307, 'Para arredondar 865 para a centena mais próxima, considere as dezenas. Como são 60, arredonda-se para 900.'),
(308, 'Ao aproximar 2.499 para a milhar mais próxima, considere as centenas. Como são 400, arredonda-se para 2.500.'),
(309, 'Para arredondar 57 para a dezena mais próxima, observe a unidade. Como é 7, arredonda-se para 60.'),
(310, 'Ao arredondar 15 para a dezena mais próxima, considere a unidade. Como é 5, arredonda-se para 20.'),
(311, 'Para aproximar 4.821 para a milhar mais próxima, observe as centenas. Como são 800, arredonda-se para 5.000.'),
(312, 'Para arredondar 39 para a dezena mais próxima, observe a unidade. Como é 9, arredonda-se para 40.'),
(313, 'Ao arredondar 1.234 para a centena mais próxima, observe as dezenas. Como são 30, arredonda-se para 1.200.'),
(314, 'Ao aproximar 98 para a dezena mais próxima, observe a unidade. Como é 8, arredonda-se para 100.'),
(315, 'Para encontrar o múltiplo de 100 mais próximo de 1.890, observe as dezenas. Como são 90, o múltiplo de 100 mais próximo é 1.900.'),
(316, 'Para arredondar 5.149 para a milhar mais próxima, observe as centenas. Como são 100, arredonda-se para 5.000.'),
(317, 'Ao arredondar 1.789 para a centena mais próxima, observe as dezenas. Como são 80, arredonda-se para 1.800.'),
(318, 'Para encontrar o milhar mais próximo de 6.700, observe as centenas. Como são 700, o milhar mais próximo é 7.000.'),
(319, 'Ao arredondar 66 para a dezena mais próxima, observe a unidade. Como é 6, arredonda-se para 70.'),
(320, 'Para encontrar o múltiplo de 10 mais próximo de 12, observe as unidades. Como é 2, arredonda-se para 10.');

-- Questões nível 2
INSERT INTO Quiz (id_assunto, pergunta, dificuldade, alternativa1, alternativa2, alternativa3, alternativa4) VALUES
(6, 'Em uma loja, o preço de um produto é R$ 46,90. Qual é o valor arredondado para a dezena mais próxima?', '2', '50', '40', '45', '60'),
(6, 'Uma fábrica produziu 1.236 peças, mas algumas falharam. Aproximando para a centena mais próxima, qual o número de peças produzidas?', '2', '1.200', '1.300', '1.250', '1.100'),
(6, 'Uma empresa teve uma receita de R$ 2.743,15. Qual é o valor arredondado para o milhar mais próximo?', '2', '3.000', '2.500', '2.000', '2.700'),
(6, 'Você comprou 678 itens por R$ 678,45. Qual é o valor arredondado para a centena mais próxima?', '2', '700', '600', '650', '750'),
(6, 'O carro de João percorreu 3.650 km durante o mês. Qual é a aproximação para o milhar mais próximo?', '2', '4.000', '3.500', '3.600', '3.700'),
(6, 'Um supermercado vendeu 8.734 unidades de um produto no mês. Qual é o valor aproximado para a centena mais próxima?', '2', '8.700', '8.800', '8.600', '8.500'),
(6, 'Em uma maratona, a distância total percorrida foi de 42,195 km. Qual é a aproximação para a dezena mais próxima?', '2', '40', '50', '45', '35'),
(6, 'Um time de futebol teve 9.815 espectadores em um jogo. Aproximando para o milhar mais próximo, quantos espectadores foram?', '2', '10.000', '9.000', '9.500', '8.500'),
(6, 'Uma estrada tem 4.389 metros. Aproximando para a centena mais próxima, qual é o valor?', '2', '4.400', '4.300', '4.500', '4.600'),
(6, 'A empresa vendeu 12.435 unidades de um produto. Qual é o valor aproximado para o milhar mais próximo?', '2', '12.000', '13.000', '12.500', '11.000'),
(6, 'A média de tempo de trabalho semanal de um grupo é de 38,4 horas. Qual é o valor arredondado para a dezena mais próxima?', '2', '40', '30', '35', '45'),
(6, 'O orçamento da prefeitura para a construção de uma escola foi de R$ 1.245.567,89. Qual é o valor arredondado para o milhar?', '2', '1.246.000', '1.200.000', '1.250.000', '1.300.000'),
(6, 'O preço de um livro é R$ 17,30. Qual é o valor arredondado para a dezena mais próxima?', '2', '20', '10', '15', '25'),
(6, 'Uma fábrica produziu 8.671 peças. Qual é o valor aproximado para a centena mais próxima?', '2', '8.700', '8.600', '8.800', '8.500'),
(6, 'Em uma promoção, o preço de um produto foi de R$ 1.499,99. Qual é o valor arredondado para milhar?', '2', '1.500', '1.400', '1.600', '1.450'),
(6, 'Você tem R$ 45,67 e quer comprar um produto que custa R$ 49,90. Aproximando os valores para a dezena mais próxima, qual valor você tem?', '2', '50', '40', '45', '60'),
(6, 'O valor do aluguel mensal de um apartamento foi de R$ 1.238,90. Qual é o valor arredondado para a centena mais próxima?', '2', '1.200', '1.300', '1.100', '1.400'),
(6, 'Em uma pesquisa, a pontuação média de um time foi de 82,4 pontos. Qual a aproximação para a dezena mais próxima?', '2', '80', '90', '85', '70'),
(6, 'A distância entre duas cidades é de 246,78 km. Aproximando para a centena mais próxima, qual é a distância?', '2', '200', '250', '240', '230'),
(6, 'Durante um evento, compareceram 3.248 pessoas. Qual é o valor aproximado para a centena mais próxima?', '2', '3.200', '3.300', '3.250', '3.100');

-- Feedback nível 2
INSERT INTO Feedback (id_quiz, explicacacao) VALUES
(321, 'Para arredondar o preço de R$ 46,90 para a dezena mais próxima, observe as unidades. Como são 6, arredonda-se para 50.'),
(322, 'Para arredondar o número de peças 1.236 para a centena mais próxima, observe as dezenas. Como são 30, arredonda-se para 1.200.'),
(323, 'Para arredondar R$ 2.743,15 para o milhar mais próximo, observe as centenas. Como são 700, arredonda-se para 3.000.'),
(324, 'Ao arredondar R$ 678,45 para a centena mais próxima, observe as dezenas. Como são 70, arredonda-se para 700.'),
(325, 'Para arredondar a distância de 3.650 km para o milhar mais próximo, observe as centenas. Como são 600, arredonda-se para 4.000.'),
(326, 'Ao arredondar as 8.734 unidades para a centena mais próxima, observe as dezenas. Como são 30, arredonda-se para 8.700.'),
(327, 'Para arredondar a distância percorrida na maratona de 42,195 km para a dezena mais próxima, observe as unidades. Como são 5, arredonda-se para 40.'),
(328, 'Para arredondar o número de espectadores 9.815 para o milhar mais próximo, observe as centenas. Como são 800, arredonda-se para 10.000.'),
(329, 'Ao arredondar os 4.389 metros para a centena mais próxima, observe as dezenas. Como são 80, arredonda-se para 4.400.'),
(330, 'Ao arredondar as 12.435 unidades para o milhar mais próximo, observe as centenas. Como são 400, arredonda-se para 12.000.'),
(331, 'Para arredondar a média de 38,4 horas para a dezena mais próxima, observe as unidades. Como são 4, arredonda-se para 40.'),
(332, 'Para arredondar o orçamento de R$ 1.245.567,89 para o milhar mais próximo, observe as centenas. Como são 567, arredonda-se para 1.246.000.'),
(333, 'Ao arredondar o preço de R$ 17,30 para a dezena mais próxima, observe as unidades. Como são 7, arredonda-se para 20.'),
(334, 'Ao arredondar a produção de 8.671 peças para a centena mais próxima, observe as dezenas. Como são 70, arredonda-se para 8.700.'),
(335, 'Ao arredondar o preço de R$ 1.499,99 para o milhar mais próximo, observe as centenas. Como são 400, arredonda-se para 1.500.'),
(336, 'Para arredondar o valor de R$ 45,67 para a dezena mais próxima, observe as unidades. Como são 5, arredonda-se para 50.'),
(337, 'Ao arredondar o aluguel mensal de R$ 1.238,90 para a centena mais próxima, observe as dezenas. Como são 30, arredonda-se para 1.200.'),
(338, 'Para arredondar a pontuação média de 82,4 pontos para a dezena mais próxima, observe as unidades. Como são 4, arredonda-se para 80.'),
(339, 'Ao arredondar a distância de 246,78 km para a centena mais próxima, observe as dezenas. Como são 40, arredonda-se para 250.'),
(340, 'Para arredondar 3.248 para a centena mais próxima, observe as dezenas. Como são 40, arredonda-se para 3.200.');

-- Questões nível 3
INSERT INTO Quiz (id_assunto, pergunta, dificuldade, alternativa1, alternativa2, alternativa3, alternativa4) VALUES
(6, 'Um produto custa R$ 1.378,25. Qual é o valor aproximado para o milhar mais próximo, levando em consideração a margem de erro de R$ 10,00?', '3', '1.400', '1.300', '1.500', '1.350'),
(6, 'Em uma pesquisa, a média de idade dos participantes é de 42,56 anos. Qual é a aproximação para a dezena mais próxima?', '3', '40', '50', '45', '30'),
(6, 'Um trem percorre 9.876 metros em 15 minutos. Qual a distância aproximada para a centena mais próxima, considerando o percurso total de 15 minutos?', '3', '9.900', '9.800', '10.000', '9.850'),
(6, 'A população de uma cidade cresceu de 234.789 para 251.812 habitantes em um ano. Qual a aproximação para o milhar mais próximo do crescimento populacional?', '3', '17.000', '15.000', '20.000', '18.000'),
(6, 'Um investimento inicial de R$ 12.564,45 teve um aumento de 18%. Qual o valor final aproximado, considerando um arredondamento para a centena mais próxima?', '3', '14.800', '15.000', '14.700', '13.800'),
(6, 'Em uma maratona, um atleta percorre 32.415 metros em 4 horas. Qual é a aproximação da distância percorrida para o milhar mais próximo?', '3', '32.000', '33.000', '31.000', '30.000'),
(6, 'Um projeto de construção custou R$ 4.832.736,98. Qual é o valor aproximado para o milhão mais próximo?', '3', '5.000.000', '4.800.000', '4.500.000', '5.200.000'),
(6, 'Uma pesquisa de mercado calculou que, em média, os consumidores gastam R$ 235,75 por mês em compras online. Qual é o valor aproximado para a dezena mais próxima?', '3', '240', '230', '250', '220'),
(6, 'Durante o mês de outubro, a temperatura média em uma cidade foi de 18,75°C. Qual é a aproximação para a dezena mais próxima?', '3', '20', '10', '15', '25'),
(6, 'A empresa X tem 11.653 funcionários e espera um aumento de 12,3%. Qual é a aproximação para o milhar mais próximo do número de novos funcionários?', '3', '1.400', '1.200', '1.300', '1.500'),
(6, 'O número de visitantes de um site foi de 75.543 durante a última semana. Qual é a aproximação para a centena mais próxima?', '3', '75.500', '76.000', '75.000', '74.500'),
(6, 'Uma carga de 2.487 kg foi transportada por 4 caminhões. Qual a média aproximada de carga por caminhão, arredondada para a centena mais próxima?', '3', '600', '500', '700', '650'),
(6, 'O valor da produção de uma fábrica foi de R$ 8.764.895,23. Qual é o valor aproximado para o milhão mais próximo?', '3', '9.000.000', '8.700.000', '8.500.000', '8.800.000'),
(6, 'Em uma escola, 582 alunos participaram de um concurso de matemática. Qual é a aproximação para a centena mais próxima?', '3', '600', '500', '550', '650'),
(6, 'A quantidade de energia gerada por uma usina é de 23.478 kWh. Qual é a aproximação para o milhar mais próximo?', '3', '23.000', '24.000', '22.000', '23.500'),
(6, 'Em uma pesquisa de opinião, 4.567 pessoas foram entrevistadas. Qual é a aproximação para a centena mais próxima?', '3', '4.600', '4.500', '4.700', '4.400'),
(6, 'A estimativa de vendas para o próximo trimestre de uma empresa é de R$ 9.384.276,52. Qual é o valor arredondado para o milhão mais próximo?', '3', '9.000.000', '8.500.000', '9.500.000', '8.000.000'),
(6, 'A produção diária de uma fábrica é de 3.965 unidades. Qual é a aproximação para a centena mais próxima?', '3', '4.000', '3.900', '3.800', '4.100'),
(6, 'Uma estrada tem uma extensão de 35.787 metros. Qual é a aproximação para o milhar mais próximo?', '3', '36.000', '35.000', '34.000', '37.000'),
(6, 'O número de livros vendidos por uma livraria foi de 123.478. Qual é a aproximação para a centena mais próxima?', '3', '123.500', '123.000', '124.000', '125.000');

-- Feedback nível 3
INSERT INTO Feedback (id_quiz, explicacacao) VALUES
(341, 'Ao arredondar R$ 1.378,25 para o milhar mais próximo, observe as centenas. Como são 378, arredonda-se para 1.400.'),
(342, 'Ao arredondar a média de idade de 42,56 para a dezena mais próxima, observe as unidades. Como são 6, arredonda-se para 40.'),
(343, 'Para arredondar o percurso de 9.876 metros para a centena mais próxima, observe as dezenas. Como são 70, arredonda-se para 9.900.'),
(344, 'Para arredondar o crescimento populacional de 17.023 para o milhar mais próximo, observe as centenas. Como são 20, arredonda-se para 17.000.'),
(345, 'Ao arredondar o valor final de um investimento com aumento de 18%, calcule o aumento e arredonde para a centena mais próxima. O valor final será de aproximadamente R$ 14.800.'),
(346, 'Ao arredondar a distância percorrida pelo atleta de 32.415 metros para o milhar mais próximo, observe as centenas. Como são 400, arredonda-se para 32.000.'),
(347, 'Ao arredondar o valor de R$ 4.832.736,98 para o milhão mais próximo, observe as centenas de milhar. Como são 832.000, arredonda-se para 5.000.000.'),
(348, 'Ao arredondar o valor de R$ 235,75 para a dezena mais próxima, observe as unidades. Como são 5, arredonda-se para 240.'),
(349, 'Para arredondar a temperatura de 18,75°C para a dezena mais próxima, observe as unidades. Como são 7, arredonda-se para 20.'),
(350, 'Ao arredondar o número de novos funcionários de 1.432 para o milhar mais próximo, observe as centenas. Como são 300, arredonda-se para 1.400.'),
(351, 'Para arredondar o número de visitantes de 75.543 para a centena mais próxima, observe as dezenas. Como são 40, arredonda-se para 75.500.'),
(352, 'Ao calcular a média de carga por caminhão, divida 2.487 kg por 4 e arredonde o resultado para a centena mais próxima, dando aproximadamente 600 kg por caminhão.'),
(353, 'Ao arredondar a produção de R$ 8.764.895,23 para o milhão mais próximo, observe as centenas de milhar. Como são 764.000, arredonda-se para 9.000.000.'),
(354, 'Ao arredondar o número de alunos de 582 para a centena mais próxima, observe as dezenas. Como são 80, arredonda-se para 600.'),
(355, 'Ao arredondar a quantidade de energia gerada de 23.478 kWh para o milhar mais próximo, observe as centenas. Como são 478, arredonda-se para 23.000.'),
(356, 'Ao arredondar o número de pessoas entrevistadas de 4.567 para a centena mais próxima, observe as dezenas. Como são 60, arredonda-se para 4.600.'),
(357, 'Ao arredondar a estimativa de vendas de R$ 9.384.276,52 para o milhão mais próximo, observe as centenas de milhar. Como são 384.000, arredonda-se para 9.000.000.'),
(358, 'Para arredondar a produção de 3.965 unidades para a centena mais próxima, observe as dezenas. Como são 60, arredonda-se para 4.000.'),
(359, 'Para arredondar a extensão de 35.787 metros para o milhar mais próximo, observe as centenas. Como são 800, arredonda-se para 36.000.'),
(360, 'Ao arredondar o número de livros vendidos de 123.478 para a centena mais próxima, observe as dezenas. Como são 80, arredonda-se para 123.500.');

-- Inserindo o assunto
INSERT INTO Assunto (nome_assunto) 
VALUES ('Cálculo de porcentagem por meio de estratégias diversas');

-- Questões nível 1
INSERT INTO Quiz (id_assunto, pergunta, dificuldade, alternativa1, alternativa2, alternativa3, alternativa4) VALUES
(7, 'Qual é 10% de 50?', '1', '5', '10', '15', '25'),
(7, 'Se você tem R$ 200,00 e ganha 25% de comissão sobre vendas, quanto você recebe?', '1', '50', '25', '75', '100'),
(7, 'Se um produto custa R$ 80,00 e recebe um desconto de 10%, qual será o preço final?', '1', '72', '80', '70', '75'),
(7, 'Em uma classe de 40 alunos, 25% estão ausentes. Quantos alunos estão ausentes?', '1', '10', '5', '12', '8'),
(7, 'Uma loja oferece 15% de desconto em um produto que custa R$ 200,00. Qual será o valor do desconto?', '1', '30', '25', '40', '35'),
(7, 'Qual é 50% de R$ 180,00?', '1', '90', '80', '100', '70'),
(7, 'Se um aluno tirou 80% de acertos em um teste com 50 questões, quantas questões ele acertou?', '1', '40', '45', '50', '35'),
(7, 'Um produto custa R$ 60,00 e é vendido com 20% de lucro. Qual é o preço de venda?', '1', '72', '68', '70', '65'),
(7, 'Em uma pesquisa, 60% dos participantes são mulheres. Se houver 200 participantes, quantas mulheres participaram?', '1', '120', '100', '150', '180'),
(7, 'Se um salário de R$ 1.000,00 recebe um aumento de 10%, qual será o novo valor?', '1', '1.100', '1.200', '1.150', '1.300'),
(7, 'Qual é 25% de R$ 240,00?', '1', '60', '50', '70', '80'),
(7, 'Em uma corrida, 30% dos participantes desistiram. Se havia 500 participantes, quantos desistiram?', '1', '150', '200', '100', '250'),
(7, 'Qual é 15% de R$ 300,00?', '1', '45', '40', '50', '30'),
(7, 'Se um produto custa R$ 150,00 e recebe 5% de imposto, qual será o valor do imposto?', '1', '7,50', '8,00', '10,00', '5,00'),
(7, 'Em um time de futebol, 20% dos jogadores são atacantes. Se o time tem 22 jogadores, quantos são atacantes?', '1', '4', '5', '6', '3'),
(7, 'Se um estudante tem 18 anos e sua idade representa 30% da idade total da turma, qual é a idade total da turma?', '1', '60', '50', '70', '65'),
(7, 'Qual é 40% de R$ 500,00?', '1', '200', '250', '300', '350'),
(7, 'Um vendedor ganha 12% de comissão sobre as vendas. Se ele vendeu R$ 2.500,00, qual será a comissão?', '1', '300', '250', '200', '350'),
(7, 'Em uma pesquisa, 20% dos entrevistados preferem o produto A. Se 250 pessoas foram entrevistadas, quantas preferem o produto A?', '1', '50', '60', '40', '55');

-- Feedback nível 1
INSERT INTO Feedback (id_quiz, feedback) VALUES
(361, 'Para calcular 10% de 50, basta multiplicar 50 por 0,10. O resultado é 5. Continue praticando!'),
(362, 'Para calcular 25% de R$ 200,00, multiplique 200 por 0,25. O resultado é R$ 50,00. Bom trabalho!'),
(363, 'Para calcular o preço final de um produto com desconto, basta subtrair o valor do desconto do preço original. O desconto de 10% sobre R$ 80,00 é R$ 8,00, e o preço final é R$ 72,00.'),
(364, '25% de 40 alunos é igual a 10. Isso significa que 10 alunos estão ausentes. Continue assim!'),
(365, 'O valor do desconto de 15% em R$ 200,00 é R$ 30,00. Portanto, o valor do desconto é R$ 30,00. Bom trabalho!'),
(366, 'Para calcular 50% de R$ 180,00, basta multiplicar 180 por 0,50. O resultado é R$ 90,00. Ótimo!'),
(367, 'Se um aluno acertou 80% de 50 questões, basta multiplicar 50 por 0,80. O aluno acertou 40 questões. Continue praticando!'),
(368, 'Para calcular o preço de venda com lucro, basta multiplicar o custo por 1 mais a porcentagem de lucro. O preço de venda de um produto de R$ 60,00 com 20% de lucro é R$ 72,00.'),
(369, '60% de 200 participantes é igual a 120 participantes. Portanto, 120 mulheres participaram. Bom trabalho!'),
(370, 'Para calcular o aumento de 10% em R$ 1.000,00, basta multiplicar 1.000 por 0,10 e somar ao valor original. O novo valor será R$ 1.100,00.'),
(371, '25% de R$ 240,00 é igual a R$ 60,00. Isso significa que o valor correspondente a 25% é R$ 60,00.'),
(372, 'Se 30% dos 500 participantes desistiram, basta multiplicar 500 por 0,30. O número de desistentes é 150. Bom trabalho!'),
(373, 'Para calcular 15% de R$ 300,00, basta multiplicar 300 por 0,15. O resultado é R$ 45,00. Ótimo trabalho!'),
(374, 'Se um produto custa R$ 150,00 e recebe 5% de imposto, basta multiplicar 150 por 0,05. O valor do imposto será R$ 7,50. Continue praticando!'),
(375, '20% de 22 jogadores é igual a 4 atacantes. Portanto, o número de atacantes no time é 4. Ótimo!'),
(376, 'Se um estudante tem 18 anos e isso representa 30% da idade total da turma, basta dividir 18 por 0,30. A idade total da turma é 60 anos. Bom trabalho!'),
(377, '40% de R$ 500,00 é igual a R$ 200,00. Isso significa que 40% de R$ 500,00 é R$ 200,00. Continue praticando!'),
(378, 'Para calcular 12% de comissão sobre R$ 2.500,00, basta multiplicar 2.500 por 0,12. O valor da comissão será R$ 300,00. Bom trabalho!'),
(379, '20% de 250 entrevistados é igual a 50 pessoas que preferem o produto A. Bom trabalho!'),
(380, 'Se um aluno tirou 80% de acertos em um teste com 50 questões, basta multiplicar 50 por 0,80. O aluno acertou 40 questões. Continue praticando!');

-- Questões nível 2
INSERT INTO Quiz (id_assunto, pergunta, dificuldade, alternativa1, alternativa2, alternativa3, alternativa4) VALUES
(7, 'Um produto custa R$ 600,00 e recebe um desconto de 25%. Qual será o valor do produto com o desconto?', '2', '450', '500', '550', '400'),
(7, 'Em uma empresa, 40% dos funcionários são mulheres. Se a empresa tem 250 funcionários, quantas mulheres trabalham na empresa?', '2', '100', '90', '120', '110'),
(7, 'Se você tem R$ 450,00 e gasta 15% desse valor com compras, quanto você gastou?', '2', '67,50', '60,00', '70,00', '75,00'),
(7, 'Uma loja fez um aumento de 12% no preço de um produto que custava R$ 350,00. Qual é o novo preço do produto?', '2', '392', '375', '370', '400'),
(7, 'Se um aluno obteve 70% de acerto em uma prova com 80 questões, quantas questões ele acertou?', '2', '56', '58', '60', '65'),
(7, 'Em um investimento, você recebe 8% de juros ao ano sobre R$ 5.000,00. Qual será o valor dos juros após 1 ano?', '2', '400', '450', '500', '350'),
(7, 'O valor de um produto foi reduzido de R$ 1.000,00 para R$ 800,00. Qual foi o percentual de desconto?', '2', '20%', '15%', '25%', '18%'),
(7, 'Em uma competição, 35% dos participantes são mulheres. Se 200 pessoas participaram, quantas são mulheres?', '2', '70', '75', '80', '85'),
(7, 'Qual é o valor total, incluindo 25% de imposto, de um produto que custa R$ 400,00?', '2', '500', '480', '460', '550'),
(7, 'Em uma loja, um produto custa R$ 180,00. Se houver um desconto de 15%, qual será o preço final?', '2', '153', '155', '160', '150'),
(7, 'Se um salário é R$ 2.500,00 e o aumento é de 8%, qual será o novo salário?', '2', '2.700', '2.600', '2.750', '2.800'),
(7, 'Se um produto custa R$ 320,00 e recebe um acréscimo de 18%, qual será o preço final?', '2', '377,60', '370,00', '380,00', '360,00'),
(7, 'Em uma pesquisa, 75% dos entrevistados preferem o produto B. Se 400 pessoas foram entrevistadas, quantas preferem o produto B?', '2', '300', '275', '320', '350'),
(7, 'Se um imóvel custa R$ 800.000,00 e recebe um desconto de 10%, qual será o valor com desconto?', '2', '720.000', '730.000', '710.000', '700.000'),
(7, 'Você fez um empréstimo de R$ 5.000,00 e a taxa de juros é de 20%. Qual será o valor total a ser pago após 1 ano?', '2', '6.000', '6.500', '7.000', '6.200'),
(7, 'Uma turma de 40 alunos fez uma prova. Se 45% dos alunos tiraram nota acima de 8, quantos alunos tiveram essa nota?', '2', '18', '16', '20', '15'),
(7, 'Se um item custa R$ 150,00 e é dado um desconto de 18%, qual é o valor com desconto?', '2', '123', '130', '125', '120'),
(7, 'Em uma venda, o vendedor ganha uma comissão de 8% sobre o valor da venda. Se ele vendeu R$ 4.000,00, qual será o valor da comissão?', '2', '320', '300', '350', '280'),
(7, 'Se o preço de uma passagem de ônibus é R$ 5,00 e recebe um aumento de 10%, qual será o novo preço?', '2', '5,50', '6,00', '5,80', '5,20'),
(7, 'Em uma cidade, 20% dos habitantes possuem carro. Se a população é de 1.000.000, quantos habitantes possuem carro?', '2', '200.000', '220.000', '250.000', '230.000');

-- Feedback nível 2
INSERT INTO Feedback (id_quiz, feedback) VALUES
(381, 'Para calcular o preço com desconto de 25%, basta multiplicar 600 por 0,25 e subtrair o resultado do valor original. O preço com o desconto será R$ 450,00.'),
(382, '40% de 250 funcionários é igual a 100 mulheres. Portanto, 100 mulheres trabalham na empresa. Bom trabalho!'),
(383, 'Para calcular o gasto com 15% de R$ 450,00, basta multiplicar 450 por 0,15. O valor gasto é R$ 67,50. Ótimo!'),
(384, 'Para calcular o novo preço de um produto com aumento de 12%, basta multiplicar 350 por 1,12. O novo preço será R$ 392,00. Continue praticando!'),
(385, '70% de 80 questões é igual a 56 questões. Portanto, o aluno acertou 56 questões. Bom trabalho!'),
(386, 'Para calcular os juros de 8% sobre R$ 5.000,00, basta multiplicar 5.000 por 0,08. O valor dos juros será R$ 400,00. Ótimo!'),
(387, 'A redução de R$ 1.000,00 para R$ 800,00 corresponde a um desconto de 20%. Isso significa que o percentual de desconto foi 20%.'),
(388, '35% de 200 participantes é igual a 70 mulheres. Portanto, 70 mulheres participaram da competição. Bom trabalho!'),
(389, 'Para calcular o valor total incluindo 25% de imposto, basta multiplicar o preço original por 1,25. O valor total será R$ 500,00. Continue assim!'),
(390, 'O preço final de um produto com desconto de 15% sobre R$ 180,00 é R$ 153,00. Isso é o preço final após o desconto.'),
(391, 'Para calcular o novo salário com aumento de 8% sobre R$ 2.500,00, basta multiplicar 2.500 por 1,08. O novo salário será R$ 2.700,00. Bom trabalho!'),
(392, 'O preço final de um produto com acréscimo de 18% sobre R$ 320,00 é R$ 377,60. Isso é o preço final após o acréscimo.'),
(393, '75% de 400 entrevistados é igual a 300 pessoas que preferem o produto B. Bom trabalho!'),
(394, 'Se um imóvel custa R$ 800.000,00 e recebe um desconto de 10%, o valor com o desconto será R$ 720.000,00. Ótimo trabalho!'),
(395, 'Se você fez um empréstimo de R$ 5.000,00 e a taxa de juros é de 20%, basta multiplicar 5.000 por 1,20. O valor total a ser pago será R$ 6.000,00.'),
(396, '45% de 40 alunos é igual a 18 alunos que tiraram nota acima de 8. Portanto, 18 alunos tiveram essa nota. Bom trabalho!'),
(397, 'O valor com desconto de 18% sobre R$ 150,00 é R$ 123,00. Isso é o valor final com desconto.'),
(398, 'A comissão de 8% sobre uma venda de R$ 4.000,00 é de R$ 320,00. O valor da comissão será R$ 320,00. Continue assim!'),
(399, 'Para calcular o novo preço da passagem de ônibus com aumento de 10%, basta multiplicar 5,00 por 1,10. O novo preço será R$ 5,50.'),
(400, '20% de 1.000.000 habitantes é igual a 200.000 pessoas que possuem carro. Portanto, 200.000 habitantes possuem carro. Ótimo trabalho!');

-- Questões nível 3
INSERT INTO Quiz (id_assunto, pergunta, dificuldade, alternativa1, alternativa2, alternativa3, alternativa4) VALUES
(7, 'Em uma empresa, o preço de venda de um produto foi aumentado em 25%, mas depois foi aplicado um desconto de 20% sobre o preço já aumentado. Se o preço inicial do produto era R$ 500,00, qual é o preço final?', '3', '500', '480', '525', '490'),
(7, 'Se o preço de um produto aumenta 10% ao ano durante 3 anos consecutivos, qual será o aumento percentual total ao final desse período?', '3', '33,1%', '32%', '30%', '35%'),
(7, 'Um produto custa R$ 300,00. Se ele sofre uma redução de 15% e depois um aumento de 10% sobre o novo preço, qual é o preço final do produto?', '3', '288', '290', '295', '280'),
(7, 'Se uma dívida de R$ 8.000,00 recebe um juros simples de 20% ao ano, qual será o valor da dívida após 3 anos?', '3', '11.200', '12.000', '10.800', '11.500'),
(7, 'Um produto custa R$ 120,00. Ele sofre uma redução de 10% no primeiro mês, uma redução de 5% no segundo mês e um aumento de 8% no terceiro mês. Qual é o preço final?', '3', '110,16', '112,50', '115,00', '118,00'),
(7, 'Se o preço de um produto foi reduzido em 30% e, em seguida, foi aumentado em 30%, qual será o preço final se o preço inicial era R$ 600,00?', '3', '558', '570', '540', '580'),
(7, 'A população de uma cidade de 200.000 habitantes cresceu 10% no primeiro ano, 8% no segundo ano e 5% no terceiro ano. Qual foi o aumento total da população após os três anos?', '3', '23.600', '25.000', '22.500', '24.000'),
(7, 'Em uma empresa, 15% dos empregados foram promovidos e, desses, 50% receberam um aumento de 25%. Se a empresa possui 400 funcionários, quantos funcionários receberam o aumento de 25%?', '3', '30', '25', '35', '40'),
(7, 'O preço de um produto sofreu um aumento de 50% e depois foi reduzido em 40%. Se o preço inicial do produto era R$ 1.000,00, qual é o preço final?', '3', '900', '850', '880', '950'),
(7, 'O preço de uma televisão foi reduzido em 15%, e depois, após dois meses, sofreu um aumento de 25%. Qual será o preço final de um produto que custa inicialmente R$ 1.200,00?', '3', '1.050', '1.100', '1.120', '1.150'),
(7, 'Uma dívida de R$ 10.000,00 sofre uma taxa de juros composta de 5% ao mês durante 6 meses. Qual será o valor final da dívida?', '3', '13.382,26', '12.000', '14.000', '13.000'),
(7, 'Um número de 5 dígitos é 30% maior do que outro número. Qual é o valor do aumento em relação ao primeiro número se o segundo número for 10.000?', '3', '3.000', '3.500', '2.500', '4.000'),
(7, 'Em uma loja, um cliente comprou um produto por R$ 400,00. Durante a promoção, o preço foi reduzido em 15%, e depois um novo desconto de 20% foi aplicado. Qual foi o valor final do produto?', '3', '272', '280', '290', '300'),
(7, 'Se o preço de um produto foi aumentado em 20%, depois de 3 meses foi reduzido em 10%, e no 6º mês foi aumentado em 15%. Se o preço inicial era R$ 500,00, qual é o preço final?', '3', '552', '560', '545', '550'),
(7, 'Em uma promoção, o valor de um produto de R$ 1.000,00 foi reduzido em 25%, e depois sofreu uma redução de 10% sobre o preço com desconto. Qual é o preço final?', '3', '675', '700', '690', '680'),
(7, 'Um fundo de investimento rende 12% ao ano composto. Se uma pessoa investir R$ 10.000,00, qual será o valor do investimento após 5 anos?', '3', '17.624,99', '15.000,00', '16.500,00', '18.000,00'),
(7, 'O salário de um funcionário foi reduzido em 10% no primeiro mês, 5% no segundo mês e depois foi aumentado em 12%. Se o salário inicial era R$ 2.500,00, qual é o salário final?', '3', '2.457,00', '2.500,00', '2.400,00', '2.550,00'),
(7, 'Se o preço de um item foi reduzido em 10%, depois foi aumentado em 20% e, por último, foi reduzido em 15%, qual será o preço final de um produto que custava R$ 1.000,00?', '3', '1.020', '1.050', '1.100', '1.150'),
(7, 'Uma empresa aumentou o preço de um produto em 20%, mas depois o preço foi reduzido em 10%. Se o preço inicial era R$ 500,00, qual é o preço final?', '3', '440', '450', '460', '470'),
(7, 'Se um número foi aumentada em 30% e depois houve uma redução de 25%, qual foi a variação percentual total em relação ao valor inicial?', '3', '2,5%', '5%', '7,5%', '10%');

-- Feedback nível 3
INSERT INTO Feedback (id_quiz, feedback) VALUES
(401, 'O preço final de um produto com aumento de 25% seguido por um desconto de 20% é calculado em duas etapas. O aumento de 25% sobre R$ 500,00 resulta em R$ 625,00. Após o desconto de 20%, o preço final é R$ 500,00.'),
(402, 'Para calcular o aumento percentual total após 3 anos consecutivos de aumento de 10% ao ano, utilizamos a fórmula de juros compostos. O aumento total será de 33,1%.'),
(403, 'Quando o preço de um produto sofre uma redução de 15% e depois um aumento de 10%, é necessário aplicar cada percentual sucessivamente no novo valor. O preço final será R$ 288,00.'),
(404, 'O valor final da dívida após 3 anos com juros simples de 20% ao ano sobre R$ 8.000,00 será R$ 11.200,00. A fórmula utilizada é: Valor Final = Valor Inicial + (Valor Inicial * Taxa de Juros * Tempo).'),
(405, 'Ao aplicar uma redução de 10% no primeiro mês, 5% no segundo e um aumento de 8% no terceiro, o preço final de R$ 120,00 será R$ 110,16.'),
(406, 'O preço final de um produto que sofre uma redução de 30% seguida de um aumento de 30% sobre o preço inicial de R$ 600,00 será R$ 558,00.'),
(407, 'Para calcular o aumento total de uma população que cresce 10% no primeiro ano, 8% no segundo e 5% no terceiro, aplicamos cada percentual sucessivamente. O aumento total será de 23.600 habitantes.'),
(408, '15% de 400 funcionários resulta em 60 funcionários promovidos. Desses, 50% recebem um aumento de 25%, o que dá um total de 30 funcionários.'),
(409, 'Quando um produto sofre um aumento de 50% e depois uma redução de 40%, o preço final de R$ 1.000,00 será R$ 900,00.'),
(410, 'Após uma redução de 15% e um aumento de 25% sobre um produto que custa R$ 1.200,00, o preço final será R$ 1.050,00.'),
(411, 'Para calcular o valor de uma dívida com juros compostos, usamos a fórmula do montante composto. Nesse caso, a dívida de R$ 10.000,00 com 5% ao mês durante 6 meses será de R$ 13.382,26.'),
(412, 'Se um número é 30% maior do que outro número de 10.000, o aumento será de R$ 3.000,00. Isso é o que corresponde ao aumento de 30% sobre 10.000.'),
(413, 'O preço final de um produto comprado por R$ 400,00, com 15% de desconto seguido de 20% de desconto sobre o preço com desconto, será R$ 272,00.'),
(414, 'Quando o preço de um produto é aumentado em 20%, depois reduzido em 10% e, após 6 meses, aumentado em 15%, o preço final de R$ 500,00 será R$ 552,00.'),
(415, 'O preço final de um produto que custa R$ 1.000,00 e sofre uma redução de 25% seguida de uma redução de 10% sobre o valor com desconto será R$ 675,00.'),
(416, 'Um fundo de investimento com 12% de rendimento ao ano composto resultará em um valor final de R$ 17.624,99 após 5 anos, a partir de um investimento inicial de R$ 10.000,00.'),
(417, 'O salário final após uma redução de 10% no primeiro mês, 5% no segundo e um aumento de 12% no terceiro mês sobre um salário inicial de R$ 2.500,00 será R$ 2.457,00.'),
(418, 'Se um item foi reduzido em 10%, aumentado em 20% e depois reduzido em 15%, o preço final de R$ 1.000,00 será R$ 1.020,00.'),
(419, 'Após um aumento de 20% seguido de uma redução de 10% sobre um preço inicial de R$ 500,00, o preço final será R$ 440,00.'),
(420, 'Se um número aumenta 30% e depois sofre uma redução de 25%, a variação percentual total será de 2,5%. Isso é calculado pela fórmula de variação percentual composta.');

SELECT * FROM Quiz;
SELECT * FROM feedback;
SELECT * FROM jogador;
SELECT * FROM sessao;
SELECT * FROM progresso_jogo;