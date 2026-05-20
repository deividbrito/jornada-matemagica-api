-- ============================================================
-- 009_seed_quizzes_arcade.sql  (GERADO POR scripts/export-arcade-seed.js)
-- Não edite à mão. Para regenerar (precisa do MySQL local com dados):
--   node scripts/export-arcade-seed.js
--
-- Popula quiz/alternativa/feedback da campanha "medio" (arcade ENEM)
-- com IDs preservados 1798..2451. Sem conflito com a faixa 1..419
-- de campanha "fundamental" (migration 008).
-- ============================================================

-- ===== limpeza idempotente para reentradas =====
DELETE FROM alternativa WHERE id_quiz BETWEEN 1798 AND 2451;
DELETE FROM feedback WHERE id_quiz BETWEEN 1798 AND 2451;

-- ===== quiz (campanha=medio) =====
INSERT IGNORE INTO quiz (id, id_assunto, pergunta, dificuldade, campanha, files) VALUES
  (1798, 1, 'Dados da Associação Nacional de Empresas de Transportes Urbanos (ANTU) mostram que o número de passageiros transportados mensalmente nas principais regiões metropolitanas do país vem caindo sistematicamente. Eram 476,7 milhões de passageiros em 1995, e esse número caiu para 321,9 milhões em abril de 2001. Nesse período, o tamanho da frota de veículos mudou pouco, tendo no final de 2008 praticamente o mesmo tamanho que tinha em 2001.  
O gráfico a seguir mostra um índice de produtividade utilizado pelas empresas do setor, que é a razão entre o total de passageiros transportados por dia e o tamanho da frota de veículos.

Supondo que as frotas totais de veículos naquelas regiões metropolitanas em abril de 2001 e em outubro de 2008 eram do mesmo tamanho, os dados do gráfico permitem inferir que o total de passageiros transportados no mês de outubro de 2008 foi aproximadamente igual a', '2', 'medio', '["https://enem.dev/2009/questions/136/dcd1ac1c-61ef-4937-bc83-ee7b4a18f667.jpg"]'),
  (1799, 1, 'O mapa ao lado representa um bairro de determinada cidade, no qual as flechas indicam o sentido das mãos do tráfego. Sabe-se que esse bairro foi planejado e que cada quadra representada na figura é um terreno quadrado, de lado igual a 200 metros.

Desconsiderando-se a largura das ruas, qual seria o tempo, em minutos, que um ônibus, em velocidade constante e igual a 40 km/h, partindo do ponto X, demoraria para chegar até o ponto Y?', '2', 'medio', '["https://enem.dev/2009/questions/137/d56b6567-20da-46f3-92e0-42b14796b37b.jpg"]'),
  (1800, 1, 'A população mundial está ficando mais velha, os índices de natalidade diminuíram e a expectativa de vida aumentou. No gráfico seguinte, são apresentados dados obtidos por pesquisa realizada pela Organização das Nações Unidas (ONU), a respeito da quantidade de pessoas com 60 anos ou mais em todo o mundo. Os números da coluna da direita representam as faixas percentuais. Por exemplo, em 1950 havia 95 milhões de pessoas com 60 anos ou mais nos países desenvolvidos, número entre 10% e 15% da população total nos países desenvolvidos.

Suponha que o modelo exponencial y = 363e0,03x, em que x = 0 corresponde ao ano 2000, x = 1 corresponde ao ano 2001, e assim sucessivamente, e que y é a população em milhões de habitantes no ano x, seja usado para estimar essa população com 60 anos ou mais de idade nos países em desenvolvimento entre 2010 e 2050.

Desse modo, considerando e0,3 = 1,35, estima-se que a população com 60 anos ou mais estará, em 2030, entre', '2', 'medio', '["https://enem.dev/2009/questions/138/2f19ef3b-7481-42c2-9c55-03664846dacc.jpg"]'),
  (1801, 1, 'A população mundial está ficando mais velha, os índices de natalidade diminuíram e a expectativa de vida aumentou. No gráfico seguinte, são apresentados dados obtidos por pesquisa realizada pela Organização das Nações Unidas (ONU), a respeito da quantidade de pessoas com 60 anos ou mais em todo o mundo. Os números da coluna da direita representam as faixas percentuais. Por exemplo, em 1950 havia 95 milhões de pessoas com 60 anos ou mais nos países desenvolvidos, número entre 10% e 15% da população total nos países desenvolvidos.

Em 2050, a probabilidade de se escolher, aleatoriamente, uma pessoa com 60 anos ou mais de idade, na população dos países desenvolvidos, será um número mais próximo de', '2', 'medio', '["https://enem.dev/2009/questions/139/ce6a3e69-a428-4ce0-9247-80452dcdca20.jpg"]'),
  (1802, 1, 'Uma resolução do Conselho Nacional de Política Energética (CNPE) estabeleceu a obrigatoriedade de adição de biodiesel ao óleo diesel comercializado nos postos. A exigência é que, a partir de 1.º de julho de 2009, 4% do volume da mistura final seja formada por biodiesel. Até junho de 2009, esse percentual era de 3%. Essa medida estimula a demanda de biodiesel, bem como possibilita a redução da importação de dísel de petróleo.

Disponível em: http://www1.folha.uol.com.br.  
Acesso em: 12 jul. 2009 (adaptado).

Estimativas indicam que, com a adição de 4% de biodiesel ao dísel, serão consumidos 925 milhões de litros de biodiesel no segundo semestre de 2009. Considerando-se essa estimativa, para o mesmo volume da mistura final dísel/biodiesel consumida no segundo semestre de 2009, qual seria o consumo de biodiesel com a adição de 3%?', '2', 'medio', NULL),
  (1803, 1, 'A suspeita de que haveria uma relação causal entre tabagismo e câncer de pulmão foi levantada pela primeira vez a partir de observações clínicas. Para testar essa possível associação, foram conduzidos inúmeros estudos epidemiológicos. Dentre esses, houve o estudo do número de casos de câncer em relação ao número de cigarros consumidos por dia, cujos resultados são mostrados no gráfico a seguir.

De acordo com as informações do gráfico,', '2', 'medio', '["https://enem.dev/2009/questions/142/c56fbd08-b377-40bd-831c-b571ed7638fe.jpg"]'),
  (1804, 1, 'O gráfico a seguir mostra a evolução, de abril de 2008 a maio de 2009, da população economicamente ativa para seis Regiões Metropolitanas pesquisadas.

Disponível em: www.ibge.gov.br.

Considerando que a taxa de crescimento da população economicamente ativa, entre 05/09 e 06/09, seja de 4%, então o número de pessoas economicamente ativas em 06/09 será igual a', '2', 'medio', '["https://enem.dev/2009/questions/143/d9c2ead9-7b0d-4ba9-bf7d-53d4e3024558.jpg"]'),
  (1805, 1, 'A música e a matemática se encontram na representação dos tempos das notas musicais, conforme a figura seguinte.

Um compasso é uma unidade musical composta por determinada quantidade de notas musicais em que a soma das durações coincide com a fração indicada como fórmula do compasso. Por exemplo, se a fórmula de compasso for 1/2 , poderia ter um compasso ou com duas semínimas ou uma mínima ou quatro colcheias, sendo possível a combinação de diferentes figuras.

Um trecho musical de oito compassos, cuja fórmula é 3/4 , poderia ser preenchido com', '2', 'medio', '["https://enem.dev/2009/questions/144/e592d2d8-7aca-4cb8-8a1c-3d01b64706a6.jpg"]'),
  (1806, 1, 'O controle de qualidade de uma empresa fabricante de telefones celulares aponta que a probabilidade de um aparelho de determinado modelo apresentar defeito de fabricação é de 0,2%. Se uma loja acaba de vender 4 aparelhos desse modelo para um cliente, qual é a probabilidade de esse cliente sair da loja com exatamente dois aparelhos defeituosos?', '2', 'medio', NULL),
  (1807, 1, 'Uma pousada oferece pacotes promocionais para atrair casais a se hospedarem por até oito dias. A hospedagem seria em apartamento de luxo e, nos três primeiros dias, a diária custaria R$ 150,00, preço da diária fora da promoção. Nos três dias seguintes, seria aplicada uma redução no valor da diária, cuja taxa média de variação, a cada dia, seria de R$ 20,00. Nos dois dias restantes, seria mantido o preço do sexto dia. Nessas condições, um modelo para a promoção idealizada é apresentado no gráfico a seguir, no qual o valor da diária é função do tempo medido em número de dias.

De acordo com os dados e com o modelo, comparando o preço que um casal pagaria pela hospedagem por sete dias fora da promoção, um casal que adquirir o pacote promocional por oito dias fará uma economia de', '2', 'medio', '["https://enem.dev/2009/questions/146/6e823a1c-778f-4d1a-89e6-06619fba287a.jpg"]'),
  (1808, 1, 'As figuras a seguir exibem um trecho de um quebra-cabeças que está sendo montado. Observe que as peças são quadradas e há 8 peças no tabuleiro da figura A e 8 peças no tabuleiro da figura B. As peças são retiradas do tabuleiro da figura B e colocadas no tabuleiro da figura A na posição correta, isto é, de modo a completar os desenhos.

É possível preencher corretamente o espaço indicado pela seta no tabuleiro da figura A colocando a peça', '2', 'medio', '["https://enem.dev/2009/questions/147/2540b2c3-868a-4e6d-bf25-edf78475b995.jpg","https://enem.dev/2009/questions/147/ce96a139-05bf-4b25-a3fc-eab46adf80f1.jpg"]'),
  (1809, 1, 'A tabela mostra alguns dados da emissão de dióxido de carbono de uma fábrica, em função do número de toneladas produzidas.

Os dados na tabela indicam que a taxa média de variação entre a emissão de dióxido de carbono (em ppm) e a produção (em toneladas) é', '2', 'medio', '["https://enem.dev/2009/questions/148/052af6e6-63f3-43e2-be36-96d0f5a48ab4.jpg"]'),
  (1811, 1, 'Brasil e França têm relações comerciais há mais de 200 anos. Enquanto a França é a 5ª nação mais rica do planeta, o Brasil é a 10ª, e ambas se destacam na economia mundial. No entanto, devido a uma série de restrições, o comércio entre esses dois países ainda não é adequadamente explorado, como mostra a tabela seguinte, referente ao período 2003-2007.

Os dados da tabela mostram que, no período considerado, os valores médios dos investimentos da França no Brasil foram maiores que os investimentos do Brasil na França em um valor', '2', 'medio', '["https://enem.dev/2009/questions/150/345210ee-8d51-4c8d-b6ca-05541e682160.jpg"]'),
  (1812, 1, 'Um grupo de 50 pessoas fez um orçamento inicial para organizar uma festa, que seria dividido entre elas em cotas iguais. Verificou-se ao final que, para arcar com todas as despesas, faltavam R$ 510,00, e que 5 novas pessoas haviam ingressado no grupo. No acerto foi decidido que a despesa total seria dividida em partes iguais pelas 55 pessoas. Quem não havia ainda contribuído pagaria a sua parte, e cada uma das 50 pessoas do grupo inicial deveria contribuir com mais R$ 7,00.

De acordo com essas informações, qual foi o valor da cota calculada no acerto final para cada uma das 55 pessoas?', '2', 'medio', NULL),
  (1813, 1, '**Técnicos concluem mapeamento do aquífero Guarani**

O aquífero Guarani localiza-se no subterrâneo dos territórios da Argentina, Brasil, Paraguai e Uruguai, com extensão total de 1.200.000 quilômetros quadrados, dos quais 840.000 quilômetros quadrados estão no Brasil. O aquífero armazena cerca de 30 mil quilômetros cúbicos de água e é considerado um dos maiores do mundo.  
Na maioria das vezes em que são feitas referências à água, são usadas as unidades metro cúbico e litro, e não as unidades já descritas. A Companhia de Saneamento Básico do Estado de São Paulo (SABESP) divulgou, por exemplo, um novo reservatório cuja capacidade de armazenagem é de 20 milhões de litros.

Disponível em: http://noticias.terra.com.br. Acesso em: 10 jul. 2009 (adaptado).

Comparando as capacidades do aquífero Guarani e desse novo reservatório da SABESP, a capacidade do aquífero Guarani é', '2', 'medio', NULL),
  (1814, 1, 'Suponha que, na escultura do artista Emanoel Araújo, mostrada na figura a seguir, todos os prismas numerados em algarismos romanos são retos, com bases triangulares, e que as faces laterais do poliedro II são perpendiculares à sua própria face superior, que, por sua vez, é um triângulo congruente ao triângulo base dos prismas. Além disso, considere que os prismas I e III são perpendiculares ao prisma IV e ao poliedro II.

Imagine um plano paralelo à face α do prisma I, mas que passe pelo ponto P pertencente à aresta do poliedro II, indicado na figura. A interseção desse plano imaginário com a escultura contém', '2', 'medio', '["https://enem.dev/2009/questions/153/0aaaf8f3-e87d-435c-901f-40781e411de9.jpg"]'),
  (1815, 1, 'A rampa de um hospital tem na sua parte mais elevada uma altura de 2,2 metros. Um paciente ao caminhar sobre a rampa percebe que se deslocou 3,2 metros e alcançou uma altura de 0,8 metro.

A distância em metros que o paciente ainda deve caminhar para atingir o ponto mais alto da rampa é', '2', 'medio', NULL),
  (1816, 1, 'Um posto de combustível vende 10.000 litros de álcool por dia a R$ 1,50 cada litro. Seu proprietário percebeu que, para cada centavo de desconto que  concedia por litro, eram vendidos 100 litros a mais por dia. Por exemplo, no dia em que o preço do álcool foi R$ 1,48, foram vendidos 10.200 litros.

Considerando x o valor, em centavos, do desconto dado no preço de cada litro, e V o valor, em R$, arrecadado por dia com a venda do álcool, então a expressão que relaciona V e x é', '2', 'medio', NULL),
  (1817, 1, 'Para cada indivíduo, a sua inscrição no Cadastro de Pessoas Físicas (CPF) é composto por um número de 9 algarismos e outro número de 2 algarismos, na forma _d1_ e _d2_, em que os dígitos _d1_ e _d2_ são denominados dígitos verificadores. Os dígitos verificadores são calculados, a partir da esquerda, da seguinte maneira: os 9 primeiros algarismos são multiplicados pela sequência 10, 9, 8, 7, 6, 5, 4, 3, 2 (o primeiro por 10, o segundo por 9, e assim sucessivamente); em seguida, calcula-se o resto _r_ da divisão da soma dos resultados das multiplicações por 11, e se esse resto _r_ for 0 ou 1, _d1_ é zero, caso contrário _d1_ = (11 – r). O dígito _d2_ é calculado pela mesma regra, na qual os números a serem multiplicados pela sequência dada são contados a partir do segundo algarismo, sendo _d1_ o último algarismo, isto é, _d2_ é zero se o resto _s_ da divisão por 11 das somas das multiplicações for 0 ou 1, caso contrário, _d2_ = (11 – _s_).

Suponha que João tenha perdido seus documentos, inclusive o cartão de CPF e, ao dar queixa da perda na delegacia, não conseguisse lembrar quais eram os dígitos verificadores, recordando-se apenas que os nove primeiros algarismos eram 123.456.789. Neste caso, os dígitos verificadores d1 e d2 esquecidos são, respectivamente,', '2', 'medio', NULL),
  (1818, 1, 'A figura a seguir mostra as medidas reais de uma aeronave que será fabricada para utilização por companhias de transporte aéreo. Um engenheiro precisa fazer o desenho desse avião em escala de 1:150.

Para o engenheiro fazer esse desenho em uma folha de papel, deixando uma margem de 1 cm em relação às bordas da folha, quais as dimensões mínimas, em centímetros, que essa folha deverá ter?', '2', 'medio', '["https://enem.dev/2009/questions/158/ee2af503-e5d1-45f8-b7f1-372e3cec5e11.jpg"]'),
  (1819, 1, 'Um experimento consiste em colocar certa quantidade de bolas de vidro idênticas em um copo com água até certo nível e medir o nível da água, conforme ilustrado na figura a seguir. Como resultado do experimento, concluiu-se que o nível da água é função do número de bolas de vidro que são colocadas dentro do copo.

O quadro a seguir mostra alguns resultados do experimento realizado.

Qual a expressão algébrica que permite calcular o nível da água (y) em função do número de bolas (x)?', '2', 'medio', '["https://enem.dev/2009/questions/159/c49b9a82-ca97-42ec-89a8-0d08a9c8abd3.jpg","https://enem.dev/2009/questions/159/09fc439a-a96c-466c-a8a7-0928313480ae.jpg"]'),
  (1820, 1, 'Uma cooperativa de colheita propôs a um fazendeiro um contrato de trabalho nos seguintes termos: a cooperativa forneceria 12 trabalhadores e 4 máquinas, em um regime de trabalho de 6 horas diárias, capazes de colher 20 hectares de milho por dia, ao custo de R$ 10,00 por trabalhador por dia de trabalho, e R$ 1.000,00 pelo aluguel diário de cada máquina. O fazendeiro argumentou que fecharia contrato se a cooperativa colhesse 180 hectares de milho em 6 dias, com gasto inferior a R$ 25.000,00.

Para atender às exigências do fazendeiro e supondo que o ritmo dos trabalhadores e das máquinas seja constante, a cooperativa deveria', '2', 'medio', NULL),
  (1821, 1, 'Suponha que a etapa final de uma gincana escolar consista em um desafio de conhecimentos. Cada equipe escolheria 10 alunos para realizar uma prova objetiva, e a pontuação da equipe seria dada pela mediana das notas obtidas pelos alunos. As provas valiam, no máximo, 10 pontos cada. Ao final, a vencedora foi a equipe Ômega, com 7,8 pontos, seguida pela equipe Delta, com 7,6 pontos. Um dos alunos da equipe Gama, a qual ficou na terceira e última colocação, não pôde comparecer, tendo recebido nota zero na prova. As notas obtidas pelos 10 alunos da equipe Gama foram 10; 6,5; 8; 10; 7; 6,5; 7; 8; 6; 0.

Se o aluno da equipe Gama que faltou tivesse comparecido, essa equipe', '2', 'medio', NULL),
  (1822, 1, 'Uma escola lançou uma campanha para seus alunos arrecadarem, durante 30 dias, alimentos não perecíveis para doar a uma comunidade carente da região. Vinte alunos aceitaram a tarefa e nos primeiros 10 dias trabalharam 3 horas diárias, arrecadando 12 kg de alimentos por dia. Animados com os resultados, 30 novos alunos somaram-se ao grupo, e passaram a trabalhar 4 horas por dia nos dias seguintes até o término da campanha.

Admitindo-se que o ritmo de coleta tenha se mantido constante, a quantidade de alimentos arrecadados ao final do prazo estipulado seria de', '2', 'medio', NULL),
  (1823, 1, 'Segundo as regras da Fórmula 1, o peso mínimo do carro, de tanque vazio, com o piloto, é de 605 kg, e a gasolina deve ter densidade entre 725 e 780 gramas por litro. Entre os circuitos nos quais ocorrem competições dessa categoria, o mais longo é _Spa-Francorchamps_, na Bélgica, cujo traçado tem 7 km de extensão. O consumo médio de um carro da Fórmula 1 é de 75 litros para cada 100 km.

Suponha que um piloto de uma equipe específica, que utiliza um tipo de gasolina com densidade de 750 g/L, esteja no circuito de Spa-Francorchamps, parado no box para reabastecimento. Caso ele pretenda dar mais 16 voltas, ao ser liberado para retornar à pista, seu carro deverá pesar, no mínimo,', '2', 'medio', NULL),
  (1824, 1, 'Ao morrer, o pai de João, Pedro e José deixou como herança um terreno retangular de 3 km x 2 km que contém uma área de extração de ouro delimitada por um quarto de círculo de raio 1 km a partir do canto inferior esquerdo da propriedade. Dado o maior valor da área de extração de ouro, os irmãos acordaram em repartir a propriedade de modo que cada um ficasse com a terça parte da área de extração, conforme mostra a figura.

Em relação à partilha proposta, constata-se que a porcentagem da área do terreno que coube a João corresponde, aproximadamente, a
(considere  √3/3 = 0,58)', '2', 'medio', '["https://enem.dev/2009/questions/164/fbf84d66-498d-4521-8b27-9a164c60237d.jpg"]'),
  (1825, 1, 'Doze times se inscreveram em um torneio de futebol amador. O jogo de abertura do torneio foi escolhido da seguinte forma: primeiro foram sorteados 4 times para compor o Grupo A. Em seguida, entre os times do Grupo A, foram sorteados 2 times para realizar o jogo de abertura do torneio, sendo que o primeiro deles jogaria em seu próprio campo, e o segundo seria o time visitante.

A quantidade total de escolhas possíveis para o Grupo A e a quantidade total de escolhas dos times do jogo de abertura podem ser calculadas através de', '2', 'medio', NULL),
  (1826, 1, 'O quadro apresenta informações da área aproximada de cada bioma brasileiro.

É comum em conversas informais, ou mesmo em noticiários, o uso de múltiplos da área de um campo de futebol (com as medidas de 120 m x 90 m) para auxiliar a visualização de áreas consideradas extensas

Nesse caso, qual é o número de campos de futebol correspondente à área aproximada do bioma Pantanal?', '2', 'medio', '["https://enem.dev/2009/questions/167/2e45ce65-e1cb-4d1c-975d-1a4c2feade5f.jpg"]'),
  (1827, 1, 'Na tabela, são apresentados dados da cotação mensal do ovo extra branco vendido no atacado, em Brasília, em reais, por caixa de 30 dúzias de ovos, em alguns meses dos anos 2007 e 2008.

De acordo com esses dados, o valor da mediana das cotações mensais do ovo extra branco nesse período era igual a', '2', 'medio', '["https://enem.dev/2009/questions/168/f683544b-94d1-456c-bdfb-f2e964881776.jpg"]'),
  (1828, 1, 'A vazão do rio Tietê, em São Paulo, constitui preocupação constante nos períodos chuvosos. Em alguns trechos, são construídas canaletas para controlar o fluxo de água. Uma dessas canaletas, cujo corte vertical determina a forma de um trapézio isósceles, tem as medidas especificadas na figura I. Neste caso, a vazão da água é de 1.050 m³/s. O cálculo da vazão, Q em m³/s, envolve o produto da área A do setor transversal (por onde passa a água), em m², pela velocidade da água no local, v, em m/s, ou seja, Q = Av.  
Planeja-se uma reforma na canaleta, com as dimensões especificadas na figura II, para evitar a ocorrência de enchentes.

Na suposição de que a velocidade da água não se alterará, qual a vazão esperada para depois da reforma na canaleta?', '2', 'medio', '["https://enem.dev/2009/questions/169/ff2b8876-8f76-444b-b4d9-15556da637ec.jpg"]'),
  (1829, 1, 'A resolução das câmeras digitais modernas é dada em _megapixels_, unidade de medida que representa um milhão de pontos. As informações sobre cada um desses pontos são armazenadas, em geral, em 3 _bytes_. Porém, para evitar que as imagens ocupem muito espaço, elas são submetidas a algoritmos de compressão, que reduzem em até 95% a quantidade de _bytes_ necessários  
para armazená-las. Considere 1 KB = 1.000 bytes, 1 MB = 1.000 KB, 1 GB = 1.000 MB.

Utilizando uma câmera de 2.0 megapixels cujo algoritmo de compressão é de 95%, João fotografou 150 imagens para seu trabalho escolar. Se ele deseja armazená-las de modo que o espaço restante no dispositivo seja o menor espaço possível, ele deve utilizar', '2', 'medio', NULL),
  (1830, 1, 'A população brasileira sabe, pelo menos intuitivamente, que a probabilidade de acertar as seis dezenas da mega sena não é zero, mas é quase. Mesmo assim, milhões de pessoas são atraídas por essa loteria, especialmente quando o prêmio se acumula em valores altos. Até junho de 2009, cada aposta de seis dezenas, pertencentes ao conjunto {01, 02, 03, …, 59, 60}, custava R$ 1,50.

Disponível em: www.caixa.gov.br. Acesso em: 7 jul. 2009.

Considere que uma pessoa decida apostar exatamente R$ 126,00 e que esteja mais interessada em acertar apenas cinco das seis dezenas da mega sena, justamente pela dificuldade desta última.

Nesse caso, é melhor que essa pessoa faça 84 apostas de seis dezenas diferentes, que não tenham cinco números em comum, do que uma única aposta com nove dezenas, porque a probabilidade de acertar a quina no segundo caso em relação ao primeiro é, aproximadamente,', '2', 'medio', NULL),
  (1831, 1, 'Nos últimos anos, o volume de petróleo exportado pelo Brasil tem mostrado expressiva tendência de crescimento, ultrapassando as importações em 2008. Entretanto, apesar de as importações terem se mantido praticamente no mesmo patamar desde 2001, os recursos gerados com as exportações ainda são inferiores àqueles despendidos com as importações, uma vez que o preço médio por metro cúbico do petróleo importado é superior ao do petróleo nacional. Nos primeiros cinco meses de 2009, foram gastos 2,84 bilhões de dólares com importações e gerada uma receita de 2,24 bilhões de dólares com as exportações. O preço médio por metro cúbico em maio de 2009 foi de 340 dólares para o petróleo importado e de 230 dólares para o petróleo exportado. O quadro a seguir mostra os dados consolidados de 2001 a 2008 e dos primeiros cinco meses de 2009.

Considere que as importações e exportações de petróleo de junho a dezembro de 2009 sejam iguais a 7/5 das  
importações e exportações, respectivamente, ocorridas de janeiro a maio de 2009.

Nesse caso, supondo que os preços para importação e exportação não sofram alterações, qual seria o valor mais aproximado da diferença entre os recursos despendidos com as importações e os recursos gerados com as exportações em 2009?', '2', 'medio', '["https://enem.dev/2009/questions/172/5f549378-e9d4-4d17-9950-19a0f32f95b7.jpg"]'),
  (1832, 1, 'Uma fábrica produz velas de parafina em forma de pirâmide quadrangular regular com 19 cm de altura e 6 cm de aresta da base. Essas velas são formadas por 4 blocos de mesma altura — 3 troncos de pirâmide de bases paralelas e 1 pirâmide na parte superior —, espaçados de 1 cm entre eles, sendo que a base superior de cada bloco é igual à base inferior do bloco sobreposto, com uma haste de ferro passando pelo centro de cada bloco, unindo-os, conforme a figura.

Se o dono da fábrica resolver diversificar o modelo, retirando a pirâmide da parte superior, que tem 1,5 cm de aresta na base, mas mantendo o mesmo molde, quanto ele passará a gastar com parafina para fabricar uma vela?', '2', 'medio', '["https://enem.dev/2009/questions/173/e9b7219c-4c2a-459d-a1ce-d4e7a3ec2c25.jpg"]'),
  (1833, 1, 'Considere um ponto P em uma circunferência de raio r no plano cartesiano. Seja Q a projeção ortogonal de P sobre o eixo x, como mostra a figura, e suponha que o ponto P percorra, no sentido anti-horário, uma distância d ≤ r sobre a circunferência.

Então, o ponto Q percorrerá, no eixo x, uma distância dada por', '2', 'medio', '["https://enem.dev/2009/questions/174/29dd5a77-8236-4be7-bdf2-fe2a3bfc482c.jpg"]'),
  (1834, 1, 'O Indicador do CadÚnico (ICadÚnico), que compõe o cálculo do Índice de Gestão Descentralizada do Programa Bolsa Família (IGD), é obtido por meio da **média aritmética** entre a taxa de cobertura qualificada de cadastros (TC) e a taxa de atualização de cadastros (TA), em que, _TC= NV/NF, TA= NA/NV, NV_ é o número de cadastros domiciliares válidos no perfil do CadÚnico, _NF_ é o número de famílias estimadas como público alvo do CadÚnico e _NA_ é o número de cadastros domiciliares atualizados no perfil do CadÚnico.

**Portaria n° 148 de 27 de abril de 2006** (adaptado).

Suponha que o IcadÚnico de um município específico é 0,6. Porém, dobrando NF o IcadÚnico cairá para 0,5. Se NA + NV = 3.600, então NF é igual a', '2', 'medio', NULL),
  (1835, 1, 'Joana frequenta uma academia de ginástica onde faz exercícios de musculação. O programa de Joana requer que ela faça 3 séries de exercícios em 6 aparelhos diferentes, gastando 30 segundos em cada série. No aquecimento, ela caminha durante 10 minutos na esteira e descansa durante 60 segundos para começar o primeiro exercício no primeiro aparelho. Entre uma série e outra, assim como ao mudar de aparelho, Joana descansa por 60 segundos.

Suponha que, em determinado dia, Joana tenha iniciado seus exercícios às 10h30min e finalizado às 11h7min. Nesse dia e nesse tempo, Joana', '2', 'medio', NULL),
  (1836, 1, 'Um artesão construiu peças de artesanato interceptando uma pirâmide de base quadrada com um plano. Após fazer um estudo das diferentes peças que poderia obter, ele concluiu que uma delas poderia ter uma das faces pentagonal.

Qual dos argumentos a seguir justifica a conclusão do artesão?', '2', 'medio', NULL),
  (1837, 1, 'João deve 12 parcelas de R$ 150,00 referentes ao cheque especial de seu banco e cinco parcelas de R$ 80,00 referentes ao cartão de crédito. O gerente do banco lhe ofereceu duas parcelas de desconto no cheque especial, caso João quitasse esta dívida imediatamente ou, na mesma condição, isto é, quitação imediata, com 25% de desconto na dívida do cartão. João também poderia renegociar suas dívidas em 18 parcelas mensais de R$ 125,00. Sabendo desses termos, José, amigo de João, ofereceu-lhe emprestar o dinheiro que julgasse necessário pelo tempo de 18 meses, com juros de 25% sobre o total emprestado.

A opção que dá a João o menor gasto seria', '2', 'medio', NULL),
  (1838, 1, 'A cisterna é um recipiente utilizado para armazenar água da chuva. Os principais critérios a serem observados para captação e armazenagem de água da chuva são: a demanda diária de água na propriedade; o índice médio de precipitação (chuva), por região, em cada período do ano; o tempo necessário para armazenagem; e a área de telhado necessária ou disponível para captação. Para fazer o cálculo do volume de uma cisterna, deve-se acrescentar um adicional relativo ao coeficiente de evaporação. Na dificuldade em se estabelecer um coeficiente confiável, a Empresa Brasileira de Pesquisa Agropecuária (EMBRAPA) sugere que sejam adicionados 10% ao volume calculado de água.

Desse modo, o volume, em m³, de uma cisterna é calculado por Vc = Vd × Ndia, em que Vd = volume de demanda da água diária (m³), Ndia = número de dias de armazenagem, e este resultado deve ser acrescido de 10%.

Para melhorar a qualidade da água, recomenda-se que a captação seja feita somente nos telhados das edificações.  
Considerando que a precipitação de chuva de 1 mm sobre uma área de 1 m²  
produz 1 litro de água, pode-se calcular a área de um telhado a fim de atender a  
necessidade de armazenagem da seguinte maneira: área do telhado (em m²) = volume da cisterna (em litros)/precipitação.

Disponível em: www.cnpsa.embrapa.br.  
Acesso em: 8 jun. 2009 (adaptado).

Para atender a uma demanda diária de 2.000 litros de água, com período de armazenagem de 15 dias e precipitação média de 110 mm, o telhado, retangular, deverá ter as dimensões mínimas de', '2', 'medio', NULL),
  (1839, 1, 'Um médico está estudando um novo medicamento que combate um tipo de câncer em estágios avançados. Porém, devido ao forte efeito dos seus componentes, a cada dose administrada há uma chance de 10% de que o paciente sofra algum dos efeitos colaterais observados no estudo, tais como dores de cabeça, vômitos ou mesmo agravamento dos sintomas da doença. O médico oferece tratamentos compostos por 3, 4, 6, 8 ou 10 doses do medicamento, de acordo com o risco que o paciente pretende assumir.

Se um paciente considera aceitável um risco de até 35% de chances de que ocorra algum dos efeitos colaterais durante o tratamento, qual é o maior número admissível de doses para esse paciente?', '2', 'medio', NULL),
  (1841, 1, 'No monte de Cerro Armazones, no deserto de Atacama, no Chile, ficará o maior telescópio da superfície terrestre, o Telescópio Europeu Extremamente Grande (E-ELT). O E-ELT terá um espelho primário de 42 m de diâmetro, “o maior olho do mundo voltado para o céu”.

Disponível em: http://www.estadao.com.br. Acesso em: 27 abr. 2010 (adaptado).

Ao ler esse texto em uma sala de aula, uma professora fez uma suposição de que o diâmetro do olho humano mede aproximadamente 2,1 cm.

Qual a razão entre o diâmetro aproximado do olho humano, suposto pela professora, e o diâmetro do espelho primário do telescópio citado?', '2', 'medio', NULL),
  (1843, 1, 'Uma fábrica produz barras de chocolates no formato de paralelepípedos e de cubos, com o mesmo volume. As arestas da barra de chocolate no formato de paralelepípedo medem 3 cm de largura, 18 cm de comprimento e 4 cm de espessura.

Analisando as características das figuras geométricas descritas, a medida das arestas dos chocolates que têm o formato de cubo é igual a', '2', 'medio', NULL),
  (1844, 1, 'Se o Brasil tivesse obtido mais 4 medalhas de ouro, 4 de prata e 10 de bronze, sem alteração no número de medalhas dos demais países mostrados no quadro, qual teria sido a classificação brasileira no quadro de medalhas das Olimpíadas de 2004?', '2', 'medio', '["https://enem.dev/2010/questions/140/1976055e-3295-4f44-9ecf-0cd97ea3e387.png"]'),
  (1845, 1, 'Supondo-se que, no Sudeste, 14 900 estudantes foram entrevistados nessa pesquisa, quantos deles possuíam telefone móvel celular?', '2', 'medio', '["https://enem.dev/2010/questions/141/97f889c7-0bdb-4cc7-9148-5a7d0623d977.png"]'),
  (1847, 1, 'Considerando-se que até 2009 o desmatamento cresceu 10,5% em relação aos dados de 2004, o desmatamento médio por estado em 2009 está entre', '2', 'medio', '["https://enem.dev/2010/questions/143/2d869c09-18da-48f9-95c3-deca759a0c3d.png"]'),
  (1848, 1, 'As figuras mostram que as proporcionalidades existentes entre resistência (R) e comprimento (ℓ), resistência (R) e área da secção transversal (A), e entre comprimento (ℓ) e área da secção transversal (A) são, respectivamente,', '2', 'medio', '["https://enem.dev/2010/questions/144/e6f27641-d27b-4c0b-b5f0-d8d74429aecb.png"]'),
  (1849, 1, 'Supondo que o total de pessoas pesquisadas na região metropolitana de Porto Alegre equivale a 250 000, o número de desempregados em março de 2010, nessa região, foi de', '2', 'medio', '["https://enem.dev/2010/questions/145/d6f3efc6-d654-4765-a9b7-ea0938be15ab.png"]'),
  (1850, 1, 'O produto das três dimensões indicadas na peça resultaria na medida da grandeza', '2', 'medio', '["https://enem.dev/2010/questions/146/217b7bc8-833f-4177-870c-d2adbf301246.png"]'),
  (1851, 1, 'Paula deseja se deslocar da cidade A para a cidade B usando exatamente duas das vias indicadas, percorrendo um trajeto com a menor probabilidade de engarrafamento possível. O melhor trajeto para Paula é', '2', 'medio', '["https://enem.dev/2010/questions/147/2db13f00-18fd-42d7-92a1-bb79ade13411.png"]'),
  (1852, 1, 'Com base no gráfico, o gasto militar no ínicio da guerra no Iraque foi de', '2', 'medio', '["https://enem.dev/2010/questions/148/210f09db-531d-4eb1-ac47-95d5ef68d963.png"]'),
  (1853, 1, 'Que expressão fornece a quantidade de quadrados de cada figura?', '2', 'medio', '["https://enem.dev/2010/questions/149/fce5e898-1709-4341-8000-c3333ad9289b.png"]'),
  (1854, 1, 'A loja Telas & Molduras cobra 20 reais por metro quadrado de tela, 15 reais por metro linear de moldura, mais uma taxa fixa de entrega de 10 reais. Uma artista plástica precisa encomendar telas e molduras a essa loja, suficientes para 8 quadros retangulares (25 cm × 50 cm). Em seguida, fez uma segunda encomenda, mas agora para 8 quadros retangulares (50 cm × 100 cm).

O valor da segunda encomenda será', '2', 'medio', NULL),
  (1855, 1, 'Com o objetivo de não desperdiçar café, a diarista deseja colocar a quantidade mínima de água na leiteira para encher os vinte copinhos pela metade.

Para que isso ocorra, Dona Maria deverá', '2', 'medio', '["https://enem.dev/2010/questions/151/87ef13a2-eec3-4dfb-9324-6f25f45690e7.png"]'),
  (1856, 1, 'Um cientista monitora o movimento desse satélite para controlar o seu afastamento do centro da Terra. Para isso, ele precisa calcular a soma dos valores de r, no apogeu e no perigeu, representada por S.

O cientista deveria concluir que, periodicamente, S atinge o valor de', '2', 'medio', '["https://enem.dev/2010/questions/152/3b16b42f-5856-499b-a7f7-6512f1c1c219.png"]'),
  (1857, 1, 'Qual dos tanques deverá ser escolhido pelo dono do posto? (Considere p π ≅ 3)', '2', 'medio', '["https://enem.dev/2010/questions/153/7db49675-d757-4e05-8e06-1458c1c566f9.png"]'),
  (1858, 1, 'Uma empresa possui um sistema de controle de qualidade que classifica o seu desempenho financeiro anual, tendo como base o do ano anterior. Os conceitos são: insuficiente, quando o crescimento é menor que 1%; regular, quando o crescimento é maior ou igual a 1% e menor que 5%; bom, quando o crescimento é maior ou igual a 5% e menor que 10%; ótimo, quando é maior ou igual a 10% e menor que 20%; e excelente, quando é maior ou igual a 20%. Essa empresa apresentou lucro de R$132000,00 em 2008 e de R$145000,00 em 2009.

De acordo com esse sistema de controle de qualidade, o desempenho financeiro dessa empresa no ano de 2009 deve ser considerado', '2', 'medio', NULL),
  (1859, 1, 'Uma escola recebeu do governo uma verba de R$ 1000,00 para enviar dois tipos de folhetos pelo correio. O diretor da escola pesquisou que tipos de selos deveriam ser utilizados. Concluiu que, para o primeiro tipo de folheto, bastava um selo de R$ 0,65 enquanto para folhetos do segundo tipo seriam necessários três selos, um de R$ 0,65, um de R$ 0,60 e um de R$ 0,20. O diretor solicitou que se comprassem selos de modo que fossem postados exatamente 500 folhetos do segundo tipo e uma quantidade restante de selos que permitisse o envio do máximo possível de folhetos do primeiro tipo.

Quantos selos de R$ 0,65 foram comprados?', '2', 'medio', NULL),
  (1860, 1, 'Um pequeno helicóptero usado para reconhecimento sobrevoa a região a partir do ponto X = (20; 60). O helicóptero segue o percurso:

0,8°L→0,5°N→0,2°O→0,1°S→0,4°N→0,3°L

Ao final, desce verticalmente até pousar no solo.

De acordo com as orientações, o helicóptero pousou em um local cuja altitude é', '2', 'medio', '["https://enem.dev/2010/questions/156/52ff9fbe-ace4-4e81-b2b0-5fa55642f382.jpg"]'),
  (1861, 1, 'Para construir uma manilha de esgoto, um cilindro com 2 m de diâmetro e 4 m de altura (de espessura desprezível), foi envolvido homogeneamente por uma camada de concreto, contendo 20 cm de espessura.

Supondo que cada metro cúbico de concreto custe R$ 10,00 e tomando 3,1 como valor aproximado de π, então o preço dessa manilha é igual a', '2', 'medio', NULL),
  (1862, 1, 'Um técnico em manejo florestal recebeu a missão de cubar, abater e transportar cinco toras de madeira, de  
duas espécies diferentes, sendo

• 3 toras da espécie I, com 3 m de rodo, 12 m de comprimento e densidade 0,77 toneladas/m³;  
• 2 toras da espécie II, com 4 m de rodo, 10 m de comprimento e densidade 0,78 toneladas/m³.

Após realizar seus cálculos, o técnico solicitou que enviassem caminhões para transportar uma carga de, aproximadamente,', '2', 'medio', '["https://enem.dev/2010/questions/158/20a4e763-d72c-4908-8b20-59443e8b7e9f.jpg"]'),
  (1863, 1, 'Se uma menina, com 64 kg de massa, apresenta IMC igual a 25 kg/m2, então ela possui RIP igual a', '2', 'medio', '["https://enem.dev/2010/questions/159/d9f06afe-c730-4e5a-ab08-dfb562d30d85.jpg"]'),
  (1864, 1, 'Um balão atmosférico, lançado em Bauru (343 quilômetros a Noroeste de São Paulo), na noite do último domingo, caiu nesta segunda-feira em Cuiabá Paulista, na região de Presidente Prudente, assustando agricultores da região. O artefato faz parte do programa Projeto Hibiscus, desenvolvido por Brasil, França, Argentina, Inglaterra e Itália, para a medição do comportamento da camada de ozônio, e sua descida se deu após o cumprimento do tempo previsto de medição.

Disponível em: http://www.correiodobrasil.com.br. Acesso em: 02 maio 2010.

Na data do acontecido, duas pessoas avistaram o balão. Uma estava a 1,8 km da posição vertical do balão e o avistou sob um ângulo de 60º; a outra estava a 5,5 km da posição vertical do balão, alinhada com a primeira, e no mesmo sentido, conforme se vê na figura, e o avistou sob um ângulo de 30º.

Qual a altura aproximada em que se encontrava o balão?', '2', 'medio', '["https://enem.dev/2010/questions/160/1f3ac874-dc7d-48a1-bfbd-6426ce6e0f8e.jpg"]'),
  (1865, 1, 'Em canteiros de obras de construção civil é comum perceber trabalhadores realizando medidas de comprimento e de ângulos e fazendo demarcações por onde a obra deve começar ou se erguer. Em um desses canteiros foram feitas algumas marcas no chão plano. Foi possível perceber que, das seis estacas colocadas, três eram vértices de um triângulo retângulo e as outras três eram os pontos médios dos lados desse triângulo, foram indicadas por letras.

A região demarcada pelas estacas A, B, M e N deveria ser calçada com concreto.

Nessas condições, a área a ser calçada corresponde', '2', 'medio', '["https://enem.dev/2010/questions/161/93aaf9bb-8489-4ca4-b226-0029de752d3c.jpg"]'),
  (1866, 1, 'O jornal de certa cidade publicou em uma página inteira a seguinte divulgação de seu caderno de classificados

Para que a propaganda seja fidedigna à porcentagem da área que aparece na divulgação, a medida do lado do retângulo que representa os 4%, deve ser de aproximadamente', '2', 'medio', '["https://enem.dev/2010/questions/162/3a48f3aa-f9b3-457a-9ffc-a48f280a2e19.jpg"]'),
  (1867, 1, 'A ideia de usar rolos circulares para deslocar objetos pesados provavelmente surgiu com os antigos egípcios ao construírem as pirâmides.

Representando por R o raio da base dos rolos cilíndricos, em metros, a expressão do deslocamento horizontal y do bloco de pedra em função de R, após o rolo ter dado uma volta completa sem deslizar, é', '2', 'medio', '["https://enem.dev/2010/questions/163/ad5073a3-52ed-4a3a-b2f4-5c88f216e795.jpg"]'),
  (1868, 1, 'Uma metalúrgica recebeu uma encomenda para fabricar, em grande quantidade, uma peça com o formato de um prisma reto com base triangular, cujas dimensões da base são 6 cm, 8 cm e 10 cm e cuja altura é 10 cm. Tal peça deve ser vazada de tal maneira que a perfuração na forma de um cilindro circular reto seja tangente às suas faces laterais, conforme mostra a figura.

O raio da perfuração da peça é igual a', '2', 'medio', '["https://enem.dev/2010/questions/164/d7f10275-2a88-4791-b723-59fdae4f26d0.jpg"]'),
  (1869, 1, 'Nos processos industriais, como na indústria de cerâmica, é necessário o uso de fornos capazes de produzir elevadas temperaturas e, em muitas situações, o tempo de elevação dessa temperatura deve ser controlado, para garantir a qualidade do produto final e a economia no processo. Em uma indústria de cerâmica, o forno é programado para elevar a temperatura ao longo do tempo de acordo com a função

em que T é o valor da temperatura atingida pelo forno, em graus Celsius, e t é o tempo, em minutos, decorrido desde o instante em que o forno é ligado.  
Uma peça deve ser colocada nesse forno quando a temperatura for 48°C e retirada quando a temperatura for  
200°C.

O tempo de permanência dessa peça no forno é, em minutos, igual a', '2', 'medio', '["https://enem.dev/2010/questions/165/fc2955c9-9732-4344-8658-ce88f7aba999.jpg"]'),
  (1870, 1, 'O gráfico mostra o número de favelas no município do Rio de Janeiro entre 1980 e 2004, considerando que a variação nesse número entre os anos considerados é linear.

Se o padrão na variação do período 2004/2010 se mantiver nos próximos 6 anos, e sabendo que o número de favelas em 2010 é 968, então o número de favelas em 2016 será', '2', 'medio', '["https://enem.dev/2010/questions/166/37362de0-ff1e-4e1d-b6f7-4c3c35252fcd.jpg"]'),
  (1871, 1, 'O gráfico apresenta a quantidade de gols marcados pelos artilheiros das Copas do Mundo desde a Copa de 1930 até a de 2006.

A partir dos dados apresentados, qual a mediana das quantidades de gols marcados pelos artilheiros das Copas do Mundo?', '2', 'medio', '["https://enem.dev/2010/questions/167/62dd2345-60b2-49ba-af99-ee935344a42d.jpg"]'),
  (1872, 1, 'Em um casamento, os donos da festa serviam champanhe aos seus convidados em taças com formato de um hemisfério (Figura 1), porém um acidente na cozinha culminou na quebra de grande parte desses recipientes. Para substituir as taças quebradas, utilizou-se um outro tipo com formato de cone (Figura 2). No entanto, os noivos solicitaram que o volume de champanhe nos dois tipos de taças fosse igual.

Considere:

")

Sabendo que a taça com o formato de hemisfério é servida completamente cheia, a altura do volume de champanhe que deve ser colocado na outra taça, em centímetros, é de', '2', 'medio', '["https://enem.dev/2010/questions/168/ee7ccd75-517b-4b02-9a73-11e2772684d1.jpg","https://enem.dev/2010/questions/168/60c7f391-a434-4c90-8ae8-21a21edec1f1.png"]'),
  (1873, 1, 'O Salto Triplo é uma modalidade do atletismo em que o atleta dá um salto em um só pé, uma passada e um salto, nessa ordem. Sendo que o salto com impulsão em um só pé será feito de modo que o atleta caia primeiro sobre o mesmo pé que deu a implusão; na passada ele cairá com o outro pé, do qual o salto é realizado.

Disponível em: www.cbat.org.br (adaptado).

Um atleta da modalidade Salto Triplo, depois de estudar seus movimentos, percebeu que, do segundo para o primeiro salto, o alcance diminuía em 1,2 m, e, do terceiro para o segundo salto, o alcance diminuía 1,5 m.
Querendo atingir a meta de 17,4 m nessa prova e considerando os seus estudos, a distância alcançada no primeiro salto teria de estar entre', '2', 'medio', NULL),
  (1874, 1, 'Marco e Paulo foram classificados em um concurso. Para classificação no concurso o candidato deveria obter média aritmética na pontuação igual ou superior a 14. Em caso de empate na média, o desempate seria em favor da pontuação mais regular. No quadro a seguir são apresentados os pontos obtidos nas provas de Matemática, Português e Conhecimentos Gerais, a média, a mediana e o desvio padrão dos dois candidatos.  
Dados dos candidatos no concurso

O candidato com pontuação mais regular, portanto mais bem classificado no concurso, é', '2', 'medio', '["https://enem.dev/2010/questions/170/b91052ca-dc24-45b9-b953-9aa426b42f1a.jpg"]'),
  (1875, 1, 'Um grupo de pacientes com Hepatite C foi submetido a um tratamento tradicional em que 40% desses pacientes foram completamente curados. Os pacientes que não obtiveram cura foram distribuídos em dois grupos de mesma quantidade e submetidos a dois tratamentos inovadores. No primeiro tratamento inovador, 35% dos pacientes foram curados e, no segundo, 45%.

Em relação aos pacientes submetidos inicialmente, os tratamentos inovadores proporcionaram cura de', '2', 'medio', NULL),
  (1876, 1, 'Em 2006, a produção mundial de etanol foi de 40 bilhões de litros e a de biodiesel, de 6,5 bilhões. Neste mesmo ano, a produção brasileira de etanol correspondeu a 43% da produção mundial, ao passo que a produção dos Estados Unidos da América, usando milho, foi de 45%.

Disponível em: planetasustentavel.abril.com.br.Acesso em: 02 maio 2009.

Considerando que, em 2009, a produção mundial de etanol seja a mesma de 2006 e que os Estados Unidos produzirão somente a metade de sua produção de 2006, para que o total produzido pelo Brasil e pelos Estados Unidos continue correspondendo a 88% da produção mundial, o Brasil deve aumentar sua produção em, aproximadamente,', '2', 'medio', NULL),
  (1877, 1, 'João mora na cidade A e precisa visitar cinco clientes, localizados em cidades diferentes da sua. Cada trajeto possível pode ser representado por uma sequência de 7 letras. Por exemplo, o trajeto ABCDEFA, informa que ele sairá da cidade A, visitando as cidades B, C, D, E e F nesta ordem, voltando para a cidade A. Além disso, o número indicado entre as letras informa o custo do deslocamento entre as cidades. A figura mostra o custo de deslocamento entre cada uma das cidades.

Como João quer economizar, ele precisa determinar qual o trajeto de menor custo para visitar os cinco clientes. somente parte das sequências, pois os trajetos ABCDEFA e AFEDCBA têm o mesmo custo. Ele gasta 1min30s para examinar uma sequência e descartar sua simétrica, conforme apresentado.

O tempo mínimo necessário para João verificar todas as sequências possíveis no problema é de', '2', 'medio', '["https://enem.dev/2010/questions/173/32cafe03-6732-45ee-85e9-d97f56364ee2.jpg"]'),
  (1878, 1, 'O diretor de um colégio leu numa revista que os pés das mulheres estavam aumentando. Há alguns anos, a média do tamanho dos calçados das mulheres era de 35,5 e, hoje, é de 37,0. Embora não fosse uma informação científica, ele ficou curioso e fez uma pesquisa com as funcionárias do seu colégio, obtendo o quadro a seguir:

Escolhendo uma funcionária ao acaso e sabendo que ela tem calçado maior que 36,0 a probabilidade de ela calçar 38,0 é', '2', 'medio', '["https://enem.dev/2010/questions/174/9b2b5d30-dece-4e7e-912d-8465855c6111.jpg"]'),
  (1879, 1, 'O quadro seguinte mostra o desempenho de um time de futebol no último campeonato. A coluna da esquerda mostra o número de gols marcados e a coluna da direita informa em quantos jogos o time marcou aquele número de gols.

Se X, Y e Z são, respectivamente, a média, a mediana e a moda desta distribuição, então', '2', 'medio', '["https://enem.dev/2010/questions/175/47a384a9-8a0b-4669-ac56-963874dfc9e9.jpg"]'),
  (1880, 1, 'A disparidade de volume entre os planetas é tão grande que seria possível colocá-los uns dentro dos outros. O planeta Mercúrio é o menor de todos. Marte é o segundo menor: dentro dele cabem três Mercúrios. Terra é o único com vida: dentro dela cabem sete Martes. Netuno é o quarto maior: dentro dele cabem 58 Terras. Júpiter é o maior dos planetas: dentro dele cabem 23 Netunos.

**Revista Veja.** Ano 41, no 25, 25 jun. 2008 (adaptado).

Seguindo o raciocínio proposto, quantas Terras cabem dentro de Júpiter?', '2', 'medio', NULL),
  (1881, 1, 'Um dos grandes problemas da poluição dos mananciais (rios, córregos e outros) ocorre pelo hábito de jogar óleo utilizado em frituras nos encanamentos que estão interligados com o sistema de esgoto. Se isso ocorrer, cada 10 litros de óleo poderão contaminar 10 milhões (107) de litros de água potável.

Manual de etiqueta. Parte integrante das revistas Veja (ed. 2055), Cláudia (ed. 555), _National Geographic_ (ed. 93) e _Nova Escola_ (ed. 208) (adaptado).

Suponha que todas as famílias de uma cidade descartem os óleos de frituras através dos encanamentos e consomem 1 000 litros de óleo em frituras por semana.

Qual seria, em litros, a quantidade de água potável contaminada por semana nessa cidade?', '2', 'medio', NULL),
  (1882, 1, 'Um porta-lápis de madeira foi construído no formato cúbico, seguindo o modelo ilustrado a seguir. O cubo de dentro é vazio. A aresta do cubo maior mede 12 cm e a do cubo menor, que é interno, mede 8 cm.

O volume de madeira utilizado na confecção desse objeto foi de', '2', 'medio', '["https://enem.dev/2010/questions/178/f167ae80-7a92-4a85-8c25-bd0738dba84d.jpg"]'),
  (1883, 1, 'Ronaldo é um garoto que adora brincar com números. Numa dessas brincadeiras, empilhou caixas numeradas de acordo com a sequência conforme mostrada no esquema a seguir.

Ele percebeu que a soma dos números em cada linha tinha uma propriedade e que, por meio dessa propriedade, era possível prever a soma de qualquer linha posterior às já construídas.

A partir dessa propriedade, qual será a soma da 9a linha da sequência de caixas empilhadas por Ronaldo?', '2', 'medio', '["https://enem.dev/2010/questions/179/0fc82f4a-dc92-411f-8f14-995159be0c16.jpg"]'),
  (1884, 1, 'Para conseguir chegar a um número recorde de produção de ovos de Páscoa, as empresas brasileiras começam a se planejar para esse período com um ano de ovos de Páscoa produzidos no Brasil no período de 2005 a 2009.

De acordo com o gráfico, o biênio que apresentou maior produção acumulada foi', '2', 'medio', '["https://enem.dev/2010/questions/180/b3a08efa-6d65-4f17-955f-8c8962f34861.jpg"]'),
  (1885, 1, 'Para conseguir chegar a um número recorde de produção de ovos de Páscoa, as empresas brasileiras começam a se planejar para esse período com um ano de ovos de Páscoa produzidos no Brasil no período de 2005 a 2009.

De acordo com o gráfico, o biênio que apresentou maior produção acumulada foi', '2', 'medio', '["https://enem.dev/2010/questions/180/b3a08efa-6d65-4f17-955f-8c8962f34861.jpg"]'),
  (1886, 1, 'Para colocar o pistão no motor que está sendo consertado, o dono da oficina terá de adquirir aquele que tenha o diâmetro mais próximo do que precisa.

Nessa condição, o dono da oficina deverá comprar o pistão de diâmetro', '2', 'medio', NULL),
  (1887, 1, 'Onde M0 é o momento sísmico (usualmente estimado a partir dos registros de movimento da superfície, através dos sismogramas), cuja unidade é o dina⋅cm. O terremoto de Kobe, acontecido no dia 17 de janeiro de 1995, foi um dos terremotos que causaram maior impacto no Japão e na comunidade científica internacional. Teve magnitude MW = 7,3.

**U.S. GEOLOGICAL SURVEY**. Historic Earthquakes.  
Disponível em: http://earthquake.usgs.gov. Acesso em: 1 maio 2010 (adaptado).

Mostrando que é possível determinar a medida por meio de conhecimentos matemáticos, qual foi o momento sísmico M0', '2', 'medio', '["https://enem.dev/2011/questions/137/71b536bf-1542-490f-96b7-6da5a37e0c08.png"]'),
  (1888, 1, 'Ao optar pelas medidas a e b em metros, obtêm-se, respectivamente,', '2', 'medio', '["https://enem.dev/2011/questions/138/5a4afd15-b676-441f-8758-76185e535a3e.png"]'),
  (1889, 1, 'A medida é expressa em kWh. O número obtido na leitura é composto por 4 algarismos. Cada posição do número é formada pelo último algarismo ultrapassado pelo ponteiro.

O número obtido pela leitura em kWh, na imagem, é', '2', 'medio', '["https://enem.dev/2011/questions/139/4b2c1448-7e79-415c-bd68-55a615705b89.png"]'),
  (1890, 1, 'Para optar pelo terreno de maior área, que atenda às restrições impostas pela prefeitura, os moradores deverão escolher o terreno.', '2', 'medio', '["https://enem.dev/2011/questions/140/63404fc2-7491-4ee5-9975-d0c6857dd37a.png"]'),
  (1891, 1, '– Enquanto você fala ao telefone, faça agachamentos: 100 calorias gastas em 20 minutos.  
– Meia hora de supermercado: 100 calorias.  
– Cuidar do jardim por 30 minutos: 200 calorias.  
– Passear com o cachorro: 200 calorias em 30 minutos.  
– Tirar o pó dos móveis: 150 calorias em 30 minutos.  
– Lavar roupas por 30 minutos: 200 calorias.

Disponível em: http://cyberdiet.terra.com.br. Acesso em: 27 abr. 2010 (adaptado).

Uma pessoa deseja executar essas atividades, porém, ajustando o tempo para que, em cada uma, gaste igualmente 200 calorias.

A partir dos ajustes, quanto tempo a mais será necessário para realizar todas as atividades?', '2', 'medio', NULL),
  (1892, 1, 'Em relação à temperatura, os valores da média, mediana e moda são, respectivamente, iguais a', '2', 'medio', '["https://enem.dev/2011/questions/142/29f02ac4-b2ab-4397-b8f4-de763ed2079f.png"]'),
  (1893, 1, 'Para uma atividade realizada no laboratório de Matemática, um aluno precisa construir uma maquete da quadra de esportes da escola que tem 28 m de comprimento por 12 m de largura. A maquete deverá ser construída na escala de 1 : 250.

Que medidas de comprimento e largura, em cm, o aluno utilizará na construção da maquete?', '2', 'medio', NULL),
  (1894, 1, 'Os pontos A, B, C, D e O do cubo e da pirâmide são os mesmos. O ponto O é central na face superior do cubo. Os quatro cortes saem de O em direção às arestas _AD_, _BC_, _AB_ e _CD_, nessa ordem. Após os cortes, são descartados quatro sólidos.

Os formatos dos sólidos descartados são', '2', 'medio', '["https://enem.dev/2011/questions/144/d0e4d3d7-dfa0-48c0-81a7-03193a5dfea2.png"]'),
  (1895, 1, 'O consumo atingiu o maior nível da história no ano passado: os brasileiros beberam o equivalente a 331 bilhões de xícaras.

Veja. Ed. 2158, 31 mar. 2010.

Considere que a xícara citada na notícia seja equivalente a, aproximadamente, 120 mL de café. Suponha que em 2010 os brasileiros bebam ainda mais café, aumentando o consumo em 1/5 do que foi consumido no ano anterior.

De acordo com essas informações, qual a previsão mais aproximada para consumo de café em 2010?', '2', 'medio', NULL),
  (1896, 1, 'Sabe-se que a distância real, em linha reta, de uma cidade A, localizada no estado de São Paulo, a uma cidade B, localizada no estado de Alagoas, é igual a 2 000 km. Um estudante, ao analisar um mapa, verificou com sua régua que a distância entre essas duas cidades, A e B, era 8 cm.

Os dados nos indicam que o mapa observado pelo estudante está na escala de', '2', 'medio', NULL),
  (1897, 1, 'Em 2010, um caos aéreo afetou o continente europeu, devido à quantidade de fumaça expelida por um vulcão na Islândia, o que levou ao cancelamento de inúmeros voos.

Cinco dias após o início desse caos, todo o espaço aéreo europeu acima de 6 000 metros estava liberado, com exceção do espaço aéreo da Finlândia. Lá, apenas voos internacionais acima de 31 mil pés estavam liberados.

Disponível em: http://www1.folha.uol.com.br. Acesso em: 21 abr. 2010 (adaptado).

Considere que 1 metro equivale a aproximadamente 3,3 pés.

Qual a diferença, em pés, entre as altitudes liberadas na Finlândia e no restante do continente europeu cinco dias após o início do caos?', '2', 'medio', NULL),
  (1898, 1, 'A reta de equação y = x + 4 representa o planejamento do percurso da linha do metrô subterrâneo que atravessará o bairro e outras regiões da cidade. No ponto P = (-5, 5), localiza-se um hospital público. A comunidade solicitou ao comitê de planejamento que fosse prevista uma estação do metrô de modo que sua distância ao hospital, medida em linha reta, não fosse maior que 5 km.
Atendendo ao pedido da comunidade, o comitê argumentou corretamente que isso seria automaticamente satisfeito, pois já estava prevista a construção de uma estação no ponto.', '2', 'medio', '["https://enem.dev/2011/questions/150/881d187f-8906-4aa8-a941-220a57000731.png"]'),
  (1899, 1, 'Em relação às edições de 2005 a 2009 da OBMEP, qual o percentual médio de medalhistas de ouro da região Nordeste?', '2', 'medio', '["https://enem.dev/2011/questions/154/10f8a6b9-37c7-4d75-99dd-24b07602b503.png"]'),
  (1900, 1, 'Suponha que o navegante tenha medido o ângulo α = 30°  e, ao chegar ao ponto B, verificou que o barco havia percorrido a distância AB = 2 000 m.

Com base nesses dados e mantendo a mesma trajetória, a menor distância do barco até o ponto fixo P será', '2', 'medio', '["https://enem.dev/2011/questions/155/815b3733-1da7-4631-adc8-21e12190790b.png"]'),
  (1901, 1, 'O saldo de contratações no mercado formal no setor varejista da região metropolitana de São Paulo registrou alta. Comparando as contratações deste setor no mês de fevereiro com as de janeiro deste ano, houve incremento de 4 300 vagas no setor, totalizando 880 605 trabalhadores com carteira assinada.

Disponível em: http://www.folha.uol.com.br. Acesso em: 26 abr. 2010 (adaptado).

Considerando-se que y e x representam, respectivamente, as quantidades de trabalhadores no setor varejista e os meses, janeiro sendo o primeiro, fevereiro, o segundo, e assim por diante, a expressão algébrica que relaciona essas quantidades nesses meses é', '2', 'medio', NULL),
  (1902, 1, 'Considere dois consumidores: um que é de baixa renda e gastou 100 kWh e outro do tipo residencial que gastou 185 kWh.

A diferença entre o gasto desses consumidores com 1kWh, depois da redução da tarifa de energia, mais aproximada, é de', '2', 'medio', '["https://enem.dev/2011/questions/158/1780f953-427b-4344-9cc8-3fc8908f62b0.png"]'),
  (1903, 1, 'O prefeito de uma cidade deseja construir uma rodovia para dar acesso a outro município. Para isso, foi aberta uma licitação na qual concorreram duas empresas. A primeira cobrou R$ 100 000,00 por km construído (n), acrescidos de um valor fixo de R$ 350 000,00, enquanto a segunda cobrou R$ 120 000,00 por km construído (n) acrescido de um valor fixo de R$ 150  000,00. As duas empresas apresentam o mesmo padrão de qualidade dos serviços prestados, mas apenas uma delas poderá ser contratada.

Do ponto de vista econômico, qual equação possibilitaria encontrar a extensão da rodovia que tornaria indiferente para a prefeitura escolher qualquer uma das propostas apresentadas?', '2', 'medio', NULL),
  (1904, 1, 'Uma pessoa aplicou certa quantia em ações. No primeiro mês, ela perdeu 30% do total do investimento e, no segundo mês, recuperou 20% do que havia perdido. Depois desses dois meses, resolveu tirar o montante de R$ 3 800,00 gerado pela aplicação.

A quantia inicial que essa pessoa aplicou em ações corresponde ao valor de', '2', 'medio', NULL),
  (1905, 1, 'Cerca de 20 milhões de brasileiros vivem na região coberta pela caatinga, em quase 800 mil km² de área. Quando não chove, o homem do sertão e dua família precisam caminhar quilômetros em busca da água dos açudes. A irregularidade climática é um dos fatores que mais interferem na vida do sertanejo.

Disponível em: http://www.wwf.org.br. Acesso em: 23 abr. 2010.

Segundo este levantamento, a densidade demográfica da região coberta pela caatinga, em habitantes por km², é de', '2', 'medio', NULL),
  (1906, 1, 'O número mensal de passagens de uma determinada empresa aérea aumentou no ano passado nas seguintes condições: em janeiro foram vendidas 33 000 passagens; em fevereiro, 34 500; em março, 36 000. Esse padrão de crescimento se mantém para os meses subsequentes.

Quantas passagens foram vendidas por essa empresa em julho do ano passado?', '2', 'medio', NULL),
  (1907, 1, 'Escolhendo, aleatoriamente, uma das outras regiões para morar, a probabilidade de ele escolher uma região que seja adequada às recomendações médicas é', '2', 'medio', '["https://enem.dev/2011/questions/163/1712d7cd-309a-4383-970a-51e8310d5882.png"]'),
  (1908, 1, 'Muitas medidas podem ser tomadas em nossas casas visando à utilização racional de energia elétrica. Isso deve ser uma atitude diária de cidadania. Uma delas pode ser a redução do tempo no banho. Um chuveiro com potência de 4 800 W consome 4,8 kW por hora.

Uma pessoa que toma dois banhos diariamente, de 10 minutos cada, consumirá, em sete dias, quantos kW?', '2', 'medio', NULL),
  (1909, 1, 'Se os atletas partissem do mesmo ponto, dando uma volta completa, em qual das raias o corredor estaria sendo beneficiado?', '2', 'medio', '["https://enem.dev/2011/questions/165/9f872841-f893-4cc4-bd7c-3356d7d73f0e.png"]'),
  (1910, 1, 'Nos últimos cinco anos, 32 mil mulheres de 20 a 24 anos foram internadas nos hospitais do SUS por causa de AVC. Entre os homens da mesma faixa etária, houve 28 mil internações pelo mesmo motivo.

**Época**.26 abr. 2010 (adaptado).

Supondo que, nos próximos cinco anos, haja um acréscimo de 8 mil internações de mulheres e que o acréscimo de internações de homens por AVC ocorra na mesma proporção.

De acordo com as informações dadas, o número de homens que seriam internados por AVC, nos próximos cinco anos, corresponderia a', '2', 'medio', NULL),
  (1911, 1, 'É possível usar água ou comida para atrair as aves e observá-las. Muitas pessoas costumam usar água com açúcar, por exemplo, para atrair beija-flores. Mas é importante saber que, na hora de fazer a mistura, você deve sempre usar uma parte de açúcar para cinco  partes de água. Além disso, em dias quentes, precisa trocar a água de duas a três vezes, pois com o calor ela pode fermentar e, se for ingerida pela ave, pode deixá-la doente. O excesso de açúcar, ao cristalizar, também pode manter o bico da ave fechado, impedindo-a de se alimentar. Isso pode até matá-la.

**Ciência Hoje das Crianças**. FNDE; Instituto Ciência Hoje, ano 19, n.166, mar.1996

Pretende-se encher completamente um copo com a mistura para atrais beija-flores.

O copo tem formato cilíndrico, e suas medidas são 10 cm de altura e 4 cm de diâmetro. A quantidade de água que deve ser utilizada na mistura é cerca de (utilize π = 3)', '2', 'medio', NULL),
  (1912, 1, 'Em um jogo disputado em uma mesa de sinuca, há 16 bolas: 1 branca e 15 coloridas, as quais, de acordo com a coloração, valem de 1 a 15 pontos (um valor para cada bola colorida).

O jogador acerta o taco na bola branca de forma que esta acerte as outras, com o objetivo de acertar duas das quinze bolas em quaisquer caçapas. Os valores dessas duas bolas são somados e devem resultar em um valor escolhido pelo jogador antes do início da jogada.

Arthur, Bernardo e Caio escolhem os números 12, 17 e 22 como sendo resultados de suas respectivas somas.

Com essa escolha, quem tem a maior probabilidade de ganhar o jogo é', '2', 'medio', NULL),
  (1913, 1, 'No quadro é apresentada a Escala de Índice de Massa Corporal com as respectivas categorias relacionadas aos pesos.

A partir dos dados biométricos de Duílio e Sandra e da Escala de IMC, o valor IMC e a categoria em que cada uma das pessoas se posiciona na Escala são', '2', 'medio', '["https://enem.dev/2011/questions/169/138c3e55-cb8f-43d0-8303-23e8a9f9686f.png","https://enem.dev/2011/questions/169/4546f26f-0929-46e6-9960-fe66371e66a7.png"]'),
  (1914, 1, 'Escolhendo-se aleatoriamente uma pessoa atendida nesse posto de vacinação, a probabilidade de ela ser portadora de doença crônica é', '2', 'medio', '["https://enem.dev/2011/questions/170/038f43e1-f843-49af-bdcd-da787662784d.png"]'),
  (1915, 1, 'Iniciando a revisão pelo ponto K e terminando em F, sem passar mais de uma vez por cada ponto, o caminho será passando pelos pontos', '2', 'medio', '["https://enem.dev/2011/questions/172/4e50e4d6-244a-45ad-8eae-0d21b0a2090e.png"]'),
  (1916, 1, 'Esse gráfico foi usado em uma palestra na qual o orador ressaltou uma queda da participação do agronegócio no PIB brasileiro e a posterior recuperação dessa participação, em termos percentuais.

Segundo o gráfico, o período de queda ocorreu entre os anos de', '2', 'medio', '["https://enem.dev/2011/questions/173/2001a836-e42e-40a0-9858-00d6ac482132.png"]'),
  (1917, 1, 'O setor de recursos humanos de uma empresa vai realizar uma entrevista com 120 candidatos a uma vaga de contador. Por sorteio, eles pretendem atribuir a cada candidato um número, colocar a lista de números em ordem numérica crescente e usá-la para convocar  
os interessados. Acontece que, por um defeito do computador, foram gerados números com 5 algarismos distintos e, em nenhum deles, apareceram dígitos pares.

Em razão disso, a ordem de chamada do candidato que tiver recebido o número 75 913 é', '2', 'medio', NULL),
  (1918, 1, 'Analisando os dados do gráfico, quantos internautas responderam “NÃO” à enquete?', '2', 'medio', '["https://enem.dev/2011/questions/175/f947e93f-407e-43ed-be49-e43e523aee48.png"]'),
  (1919, 1, 'Se tomarmos uma estrela que tenha temperatura 5 vezes maior que a temperatura do Sol, qual será a ordem de grandeza de sua luminosidade?', '2', 'medio', '["https://enem.dev/2011/questions/176/af44af53-d3de-470e-8beb-fc679278e63f.png"]'),
  (1920, 1, 'Para escolher o investimento com a maior rentabilidade anual, essa pessoa deverá', '2', 'medio', '["https://enem.dev/2011/questions/177/3c240114-2bf9-4fc0-a3a7-2c480b27b238.png"]'),
  (1921, 1, 'Considerando-se S como a resistência, a representação algébrica que exprime essa relação é', '2', 'medio', '["https://enem.dev/2011/questions/178/eaed6fd4-dacb-43e7-87ab-33f40ac3efba.png"]'),
  (1923, 1, 'Uma indústria fabrica um único tipo de produto e sempre vende tudo o que produz. O custo total para fabricar uma quantidade _q_ de produtos é dado por uma função, simbolizada por CT, enquanto o faturamento que a empresa obtém com a venda da quantidade _q_ também é uma função, simbolizada por FT. O lucro total (LT) obtido pela venda da quantidade q de produtos é dado pela expressão LT(q) = FT(q) – CT(q).

Considerando-se as funções FT(q) = 5q e CT(q) = 2q + 12 como faturamento e custo, qual a quantidade mínima de produtos que a indústria terá de fabricar para não ter prejuízo?', '2', 'medio', NULL),
  (1924, 1, 'Uma indústria fabrica um único tipo de produto e sempre vende tudo o que produz. O custo total para fabricar uma quantidade _q_ de produtos é dado por uma função, simbolizada por CT, enquanto o faturamento que a empresa obtém com a venda da quantidade _q_ também é uma função, simbolizada por FT. O lucro total (LT) obtido pela venda da quantidade q de produtos é dado pela expressão LT(q) = FT(q) – CT(q).

Considerando-se as funções FT(q) = 5q e CT(q) = 2q + 12 como faturamento e custo, qual a quantidade mínima de produtos que a indústria terá de fabricar para não ter prejuízo?', '2', 'medio', NULL),
  (1925, 1, 'O esporte de alta competição da atualidade produziu uma questão ainda sem resposta: Qual é o limite do corpo humano? O maratonista original, o grego da lenda, morreu de fadiga por ter corrido 42 quilômetros. O americano Dean Karnazes, cruzando sozinho as planícies da Califórnia, conseguiu correr dez vezes mais em 75 horas.  
Um professor de Educação Física, ao discutir com a turma o texto sobre a capacidade do maratonista americano, desenhou na lousa uma pista reta de 60 centímetros, que representaria o percurso referido.

_Disponível em: http://veja.abril.com.br. Acesso em: 25 jun. 2011 (adaptado)._

Se o percurso de Dean Karnazes fosse também em uma pista reta, qual seria a escala entre a pista feita pelo professor e a percorrida pelo atleta?', '2', 'medio', NULL),
  (1926, 1, 'Dobrando-se o raio de duas das circunferências centradas em vértices opostos do losango e ainda mantendo-se a configuração das tangências, obtém-se uma situação conforme ilustrada pela Figura 2.

O perímetro do losango da Figura 2, quando comparado ao perímetro do losango da Figura 1, teve um aumento de', '2', 'medio', '["https://enem.dev/2012/questions/137/5720ed4d-1330-4139-8e45-4161901d1ed3.png","https://enem.dev/2012/questions/137/232bcbe6-caaa-44af-a96a-317187b14850.png"]'),
  (1927, 1, 'Sabendo-se que um deles levou 50 laranjas a mais no segundo trajeto, qual a quantidade de laranjas que José, Carlos e Paulo, nessa ordem, transportaram na segunda parte do trajeto?', '2', 'medio', NULL),
  (1928, 1, 'O gráfico a seguir apresenta o resultado da enquete.

O administrador do _blog_ irá sortear um livro entre os visitantes que opinaram na postagem “Contos de Halloween”.

Sabendo que nenhum visitante votou mais de uma vez, a probabilidade de uma pessoa escolhida ao acaso entre as que opinaram ter assinalado que o conto “Contos de Halloween” é “Chato” é mais aproximada por', '2', 'medio', '["https://enem.dev/2012/questions/139/d676f9b1-2c82-461a-9863-f38aacafed80.png"]'),
  (1929, 1, 'Nestas condições, a área perdida do forro, após a primeira lavagem, será expressa por', '2', 'medio', '["https://enem.dev/2012/questions/141/e150aff4-41c0-4f6b-9a19-232d978fc497.png"]'),
  (1930, 1, 'A capacidade mínima, em BTU/h, de um aparelho de ar-condicionado, para ambientes sem exposição ao sol, pode ser determinada da seguinte forma:

• 600 BTU/h por m2 , considerando-se até duas pessoas no ambiente;

• para cada pessoa adicional nesse ambiente, acrescentar 600 BTU/h;

• acrescentar mais 600 BTU/h para cada equipamento eletroeletrônico em funcionamento no ambiente.

Será instalado um aparelho de ar-condicionado em uma sala, sem exposição ao sol, de dimensões 4 m x 5 m, em que permaneçam quatro pessoas e possua um aparelho de televisão em funcionamento.

A capacidade mínima, em BTU/h, desse aparelho de arcondicionado deve ser', '2', 'medio', NULL),
  (1932, 1, 'O diretor de uma escola convidou os 280 alunos de terceiro ano a participarem de uma brincadeira. Suponha que existem 5 objetos e 6 personagens numa casa de 9 cômodos; um dos personagens esconde um dos objetos em um dos cômodos da casa. O objetivo da brincadeira é adivinhar qual objeto foi escondido por qual personagem e em qual cômodo da casa o objeto foi escondido.

Todos os alunos decidiram participar. A cada vez um aluno é sorteado e dá a sua resposta. As respostas devem ser sempre distintas das anteriores, e um mesmo aluno não pode ser sorteado mais de uma vez. Se a resposta do aluno estiver correta, ele é declarado vencedor e a brincadeira é encerrada.

O diretor sabe que algum aluno acertará a resposta porque há', '2', 'medio', NULL),
  (1933, 1, 'Qual é a árvore que apresenta a maior altura real?', '2', 'medio', '["https://enem.dev/2012/questions/145/6e2e626f-d7f8-4615-bd32-13151f6cc0be.png"]'),
  (1934, 1, 'Uma jogada consiste em:

1º) o jogador apresenta um palpite sobre a cor da bola que será retirada por ele da urna 2;

2º) ele retira, aleatoriamente, uma bola da urna 1 e a coloca na urna 2, misturando-a com as que lá estão;

3º) em seguida ele retira, também aleatoriamente, uma bola da urna 2;

4º) se a cor da última bola retirada for a mesma do palpite inicial, ele ganha o jogo.

Qual cor deve ser escolhida pelo jogador para que ele tenha a maior probabilidade de ganhar?', '2', 'medio', '["https://enem.dev/2012/questions/146/f3712744-381c-4ed8-8f20-86b3e9a52be9.png"]'),
  (1935, 1, 'Considerando as informações indicadas na figura, o consumo total de água registrado nesse hidrômetro, em litros, é igual a', '2', 'medio', '["https://enem.dev/2012/questions/147/04304914-c660-44ee-a7a0-ee9be4ae9d9c.png"]'),
  (1936, 1, 'De acordo com o gráfico, os meses em que ocorreram, respectivamente, a maior e a menor venda absolutas em 2011 foram', '2', 'medio', '["https://enem.dev/2012/questions/148/26ce4617-a934-4ff1-83a3-96a7dad3e773.png"]'),
  (1937, 1, 'Quais serão os sólidos geométricos que Maria obterá a partir dessas planificações?', '2', 'medio', '["https://enem.dev/2012/questions/149/1c6c7b68-7082-4bde-97d1-7095071d775c.png"]'),
  (1938, 1, 'Jogar baralho é uma atividade que estimula o raciocínio. Um jogo tradicional é a Paciência, que utiliza 52 cartas. Inicialmente são formadas sete colunas com as cartas. A primeira coluna tem uma carta, a segunda tem duas cartas, a terceira tem três cartas, a quarta tem quatro cartas, e assim sucessivamente até a sétima coluna, a qual tem sete cartas, e o que sobra forma o monte, que são as cartas não utilizadas nas colunas.

A quantidade de cartas que forma o monte é', '2', 'medio', NULL),
  (1939, 1, 'Com base no gráfico e nas informações do texto, é possível inferir que houve maior aquecimento global em', '2', 'medio', '["https://enem.dev/2012/questions/151/d4cbd8c7-f9da-48aa-9108-72f611ce5370.png"]'),
  (1942, 1, 'Uma proposta substitutiva, relativa às alturas de tomadas e interruptores, respectivamente, que atenderá àquele potencial comprador é', '2', 'medio', '["https://enem.dev/2012/questions/154/81fbfbc5-0f6b-40ed-a17e-9afc89d413fa.png"]'),
  (1943, 1, 'De acordo com esta pesquisa, quantas horas de seu tempo gasta um jovem entre 12 e 18 anos, na semana inteira (de segunda-feira a domingo), nas atividades escolares?', '2', 'medio', '["https://enem.dev/2012/questions/155/2e31c69a-4a2e-40f7-be2d-de13087cb5c0.png"]'),
  (1945, 1, 'Um maquinista de trem ganha R$ 100,00 por viagem e só pode viajar a cada 4 dias. Ele ganha somente se fizer a viagem e sabe que estará de férias de 1º a 10 de junho, quando não poderá viajar. Sua primeira viagem ocorreu no dia primeiro de janeiro. Considere que o ano tem 365 dias.

Se o maquinista quiser ganhar o máximo possível, quantas viagens precisará fazer?', '2', 'medio', NULL),
  (1946, 1, 'O que aconteceria com o nível da água se colocássemos no tanque um objeto cujo volume fosse de 2 400 cm³?', '2', 'medio', '["https://enem.dev/2012/questions/158/1f4ff459-e739-491b-abba-8350d8dd458b.png"]'),
  (1947, 1, 'Avaliando-se todas as informações, serão necessários', '2', 'medio', '["https://enem.dev/2012/questions/159/4889b43a-36e3-4b29-91b2-ab87fda455d7.png"]'),
  (1948, 1, 'Nesta figura, os pontos A, B, C e D são pontos médios dos lados do quadrado e os segmentos AP e QC medem 1/4 da medida do lado do quadrado. Para confeccionar um vitral, são usados dois tipos de materiais: um para a parte sombreada da figura, que custa R$ 30,00 o m², e outro para a parte mais clara (regiões ABPDA e BCDQB), que custa R$ 50,00 o m².

De acordo com esses dados, qual é o custo dos materiais usados na fabricação de um vitral?', '2', 'medio', '["https://enem.dev/2012/questions/160/c6742e65-6a0c-4579-b559-5327fa9d1a4c.png"]'),
  (1949, 1, 'João decidiu contratar os serviços de uma empresa por telefone através do SAC (Serviço de Atendimento ao Consumidor). O atendente ditou para João o número de protocolo de atendimento da ligação e pediu que ele anotasse. Entretanto, João não entendeu um dos algarismos ditados pelo atendente e anotou o número 1 3 \\_ 9 8 2 0 7, sendo que o espaço vazio é o do algarismo que João não entendeu.

De acordo com essas informações, a posição ocupada pelo algarismo que falta no número de protocolo é a de', '2', 'medio', NULL),
  (1950, 1, 'O gerente de atendimento deseja identificar os dias da semana em que o nível de eficiência pode ser considerado muito bom, ou seja, os dias em que o número de reclamações resolvidas excede o número de reclamações recebidas.

_Disponível em: http://blog.bibliotecaunix.org. Acesso em: 21 jan. 2012 (adaptado)._

O gerente de atendimento pôde concluir, baseado no conceito de eficiência utilizado na empresa e nas informações do gráfico, que o nível de eficiência foi muito bom na', '2', 'medio', '["https://enem.dev/2012/questions/163/75b75570-0067-4c97-98b4-9742aaccb113.png"]'),
  (1952, 1, 'em que QO é quantidade de oferta, QD é a quantidade de demanda e P é o preço do produto.

A partir dessas equações, de oferta e de demanda, os economistas encontram o preço de equilíbrio de mercado, ou seja, quando QO e QD se igualam.

Para a situação descrita, qual o valor do preço de equilíbrio?', '2', 'medio', '["https://enem.dev/2012/questions/166/acff0d62-4e1d-4eb6-b58a-a91804ba997c.png"]'),
  (1953, 1, 'Nos shopping centers costumam existir parques com vários brinquedos e jogos. Os usuários colocam créditos em um cartão, que são descontados por cada período de tempo de uso dos jogos. Dependendo da pontuação da criança no jogo, ela recebe um certo número de tíquetes para trocar por produtos nas lojas dos parques. Suponha que o período de uso de um brinquedo em certo shopping custa R$ 3,00 e que uma bicicleta custa 9 200 tíquetes.

Para uma criança que recebe 20 tíquetes por período de tempo que joga, o valor, em reais, gasto com créditos para obter a quantidade de tíquetes para trocar pela bicicleta é', '2', 'medio', NULL),
  (1954, 1, 'Dentre outros objetos de pesquisa, a Alometria estuda a relação entre medidas de diferentes partes do corpo humano. Por exemplo, segundo a Alometria, a área A da superfície corporal de uma pessoa relaciona-se com a sua massa m pela fórmula A = _k_⋅m2/3, em que _k_ é uma constante positiva.

Se no período que vai da infância até a maioridade de um indivíduo sua massa é multiplicada por 8, por quanto será multiplicada a área da superfície corporal?', '2', 'medio', NULL),
  (1957, 1, 'Em 20 de fevereiro de 2011 ocorreu a grande erupção do vulcão Bulusan nas Filipinas. A sua localização geográfica no globo terrestre é dada pelo GPS (sigla em inglês para Sistema de Posicionamento Global) com longitude de 124° 3’ 0” a leste do Meridiano de Greenwich.

Dado: 1° equivale a 60’ e 1’ equivale a 60”.

PAVARIN, G. Galileu, fev. 2012 (adaptado).

A representação angular da localização do vulcão com relação a sua longitude na forma decimal é', '2', 'medio', NULL),
  (1958, 1, 'Com base nessas informações, a menor distância que o asteroide YU 55 passou da superfície da Terra é igual a', '2', 'medio', '["https://enem.dev/2012/questions/172/a1bd4967-d16c-4d09-b0c0-cd11524f5d94.png"]'),
  (1959, 1, 'Há, em virtude da demanda crescente de economia de água, equipamentos e utensílios como, por exemplo, as bacias sanitárias ecológicas, que utilizam 6 litros de água por descarga em vez dos 15 litros utilizados por bacias sanitárias não ecológicas, conforme dados da Associação Brasileira de Normas Técnicas (ABNT).

Qual será a economia diária de água obtida por meio da substituição de uma bacia sanitária não ecológica, que gasta cerca de 60 litros por dia com a descarga, por uma bacia sanitária ecológica?', '2', 'medio', NULL),
  (1960, 1, 'Um investidor deseja comprar duas das empresas listadas na tabela. Para tal, ele calcula a média da receita bruta anual dos últimos três anos (de 2009 até 2011) e escolhe as duas empresas de maior média anual.

As empresas que este investidor escolhe comprar são', '2', 'medio', '["https://enem.dev/2012/questions/174/c9dc1c65-f17e-44ce-85fc-f4a36584a37f.png"]'),
  (1961, 1, 'Um paciente fez um exame de glicose nesse laboratório e comprovou que estava com hiperglicemia. Sua taxa de glicose era de 300 mg/dL. Seu médico prescreveu um tratamento em duas etapas. Na primeira etapa ele conseguiu reduzir sua taxa em 30% e na segunda etapa em 10%.

Ao calcular sua taxa de glicose após as duas reduções, o paciente verificou que estava na categoria de', '2', 'medio', '["https://enem.dev/2012/questions/175/8362025d-b302-483a-93b8-d628c12c46ae.png"]'),
  (1962, 1, 'Um produtor de café irrigado em Minas Gerais recebeu um relatório de consultoria estatística, constando, entre outras informações, o desvio padrão das produções de uma safra dos talhões de sua propriedade. Os talhões têm a mesma área de 30 000 m² e o valor obtido para o desvio padrão foi de 90 kg/talhão. O produtor deve apresentar as informações sobre a produção e a variância dessas produções em sacas de 60 kg por hectare (10 000 m²).

A variância das produções dos talhões expressa em (sacas/hectare)² é', '2', 'medio', NULL),
  (1963, 1, 'O _designer_ português Miguel Neiva criou um sistema de símbolos que permite que pessoas daltônicas identifiquem cores. O sistema consiste na utilização de símbolos que identificam as cores primárias (azul, amarelo e vermelho). Além disso, a justaposição de dois desses símbolos permite identificar cores secundárias (como o verde, que é o amarelo combinado com o azul). O preto e o branco são identificados por pequenos quadrados: o que simboliza o preto é cheio, enquanto o que simboliza o branco é vazio. Os símbolos que representam preto e branco também podem estar associados aos símbolos que identificam cores, significando se estas são claras ou escuras.

_Folha de São Paulo. Disponível em: www1.folha.uol.com.br. Acesso em: 18 fev. 2012 (adaptado)._

De acordo com o texto, quantas cores podem ser representadas pelo sistema proposto?', '2', 'medio', NULL),
  (1964, 1, 'José, Paulo e Antônio estão jogando dados não viciados, nos quais, em cada uma das seis faces, há um número de 1 a 6. Cada um deles jogará dois dados simultaneamente. José acredita que, após jogar seus dados, os números das faces voltadas para cima lhe darão uma soma igual a 7. Já Paulo acredita que sua soma será igual a 4 e Antônio acredita que sua soma será igual a 8.

Com essa escolha, quem tem a maior probabilidade de acertar sua respectiva soma é', '2', 'medio', NULL),
  (1965, 1, 'Com base no gráfico, o valor da parte inteira da mediana dos empregos formais surgidos no período é', '2', 'medio', '["https://enem.dev/2012/questions/179/19738eb9-509c-4c48-8ea2-cd4ec4a9116c.png"]'),
  (1966, 1, 'A cerâmica possui a propriedade da contração, que consiste na evaporação da água existente em um conjunto ou bloco cerâmico submetido a uma determinada temperatura elevada: em seu lugar aparecendo “espaços vazios” que tendem a se aproximar. No lugar antes ocupado pela água vão ficando lacunas e, consequentemente, o conjunto tende a retrair-se. Considere que no processo de cozimento a cerâmica de argila sofra uma contração, em dimensões lineares, de 20%.

_Disponível em: www.arq.ufsc.br. Acesso em: 30 mar. 2012 (adaptado)._

Levando em consideração o processo de cozimento e a contração sofrida, o volume V de uma travessa de argila, de forma cúbica de aresta a, diminui para um valor que é', '2', 'medio', NULL),
  (1967, 1, 'A cerâmica possui a propriedade da contração, que consiste na evaporação da água existente em um conjunto ou bloco cerâmico submetido a uma determinada temperatura elevada: em seu lugar aparecendo “espaços vazios” que tendem a se aproximar. No lugar antes ocupado pela água vão ficando lacunas e, consequentemente, o conjunto tende a retrair-se. Considere que no processo de cozimento a cerâmica de argila sofra uma contração, em dimensões lineares, de 20%.

_Disponível em: www.arq.ufsc.br. Acesso em: 30 mar. 2012 (adaptado)._

Levando em consideração o processo de cozimento e a contração sofrida, o volume V de uma travessa de argila, de forma cúbica de aresta a, diminui para um valor que é', '2', 'medio', NULL),
  (1968, 1, 'Utilizando 0,26 como valor aproximado para a tangente de 15° e duas casas decimais nas operações, descobre-se que a área da base desse prédio ocupa na avenida um espaço', '2', 'medio', '["https://enem.dev/2013/questions/136/2b7178ab-7991-4b9d-9232-a6f9dadd475c.png"]'),
  (1969, 1, 'Utilizando um novo critério, essa banca avaliadora resolveu descartar a maior e a menor notas atribuídas ao professor. A nova média, em relação à média anterior, é', '2', 'medio', '["https://enem.dev/2013/questions/137/53209063-0069-498a-9bb1-2a6e28fcbaec.png"]'),
  (1971, 1, 'Qual foi o valor mais aproximado do total de água desperdiçada nesse período, em litros?', '2', 'medio', NULL),
  (1972, 1, 'Os tipos de arroz, feijão, soja e milho que devem ser escolhidos pelo comerciante são, respectivamente,', '2', 'medio', '["https://enem.dev/2013/questions/140/085223cd-1821-447a-a43f-41a21e311320.png"]'),
  (1973, 1, 'Utilize 1,7 como aproximação para √3
O valor de R, em centímetros, é igual a', '2', 'medio', '["https://enem.dev/2013/questions/141/3cf638d1-7d15-4696-b092-de676c4e6701.png"]'),
  (1974, 1, 'Após a análise dos dados, o produtor avaliou que a vaca mais eficiente é a', '2', 'medio', '["https://enem.dev/2013/questions/142/504c21b5-da46-4660-bd8d-bc6e547bf243.png"]'),
  (1975, 1, 'Quantos quilômetros esse aluno percorreu na fase de implantação do programa?', '2', 'medio', '["https://enem.dev/2013/questions/143/99ee084f-6759-467b-b6fc-c898787ae9c4.png"]'),
  (1976, 1, 'Analisando os dados percentuais do gráfico, qual a diferença entre o maior e o menor centro em crescimento no polo das indústrias?', '2', 'medio', '["https://enem.dev/2013/questions/144/f2d1f08e-1240-4175-ab48-38b49a301a01.png"]'),
  (1977, 1, 'A razão que representa a quantidade de cadeiras reservadas do setor 3 em relação ao total de cadeiras desse mesmo setor é', '2', 'medio', '["https://enem.dev/2013/questions/145/e171ead9-f89c-4f21-9cf2-198bc5f20f4f.png"]'),
  (1978, 1, 'A loja sorteará um brinde entre os compradores do produto A e outro brinde entre os compradores do produto B.
Qual a probabilidade de que os dois sorteados tenham feito suas compras em fevereiro de 2012?', '2', 'medio', '["https://enem.dev/2013/questions/146/573a432a-fdf5-4f17-8e42-d8337154d0aa.png"]'),
  (1979, 1, 'A quantidade mínima de rolos que deve ser comprada para cercar esse terreno é', '2', 'medio', '["https://enem.dev/2013/questions/147/3167f5c3-7c37-42fc-9abf-e5b01abc1bea.png"]'),
  (1980, 1, 'Um dos grandes problemas enfrentados nas rodovias brasileiras é o excesso de carga transportada pelos caminhões. Dimensionado para o tráfego dentro dos limites legais de carga, o piso das estradas se deteriora com o peso excessivo dos caminhões. Além disso, o excesso de carga interfere na capacidade de frenagem  
e no funcionamento da suspensão do veículo, causas frequentes de acidentes.

Ciente dessa responsabilidade e com base na experiência adquirida com pesagens, um caminhoneiro sabe que seu caminhão pode carregar, no máximo, 1 500 telhas ou 1 200 tijolos.

Considerando esse caminhão carregado com 900 telhas, quantos tijolos, no máximo, podem ser acrescentados à carga de modo a não ultrapassar a carga máxima do caminhão?', '2', 'medio', NULL),
  (1981, 1, 'A quantidade total de arroz, em toneladas, que deverá ser produzida no período de 2012 a 2021 será de', '2', 'medio', '["https://enem.dev/2013/questions/149/8fe1bcbf-df0c-4081-b00d-efa0564e5fd6.png"]'),
  (1982, 1, 'Numa escola com 1 200 alunos foi realizada uma pesquisa sobre o conhecimento desses em duas línguas estrangeiras, inglês e espanhol.

Nessa pesquisa constatou-se que 600 alunos falam inglês, 500 falam espanhol e 300 não falam qualquer um desses idiomas.

Escolhendo-se um aluno dessa escola ao acaso e sabendo-se que ele não fala inglês, qual a probabilidade de que esse aluno fale espanhol?', '2', 'medio', NULL),
  (1986, 1, 'Uma fábrica de fórmicas produz placas quadradas de lados de medida igual a _y_  centímetros. Essas placas são vendidas em caixas com _N_ unidades e, na caixa, é  
especificada a área máxima _S_ que pode ser coberta pelas _N_ placas.

Devido a uma demanda do mercado por placas maiores, a fábrica triplicou a medida dos lados de suas placas e conseguiu reuni-las em uma nova caixa, de tal forma que a área coberta _S_ não fosse alterada.

A quantidade X, de placas do novo modelo, em cada nova caixa será igual a:', '2', 'medio', NULL),
  (1987, 1, 'Considere 3 como valor aproximado para π

Para satisfazer as condições dadas, o raio máximo da ilha de lazer r, em metros, estará mais próximo de', '2', 'medio', '["https://enem.dev/2013/questions/157/05b2dd08-a2a1-45ea-a618-540da89c4bd3.png"]'),
  (1988, 1, 'O contribuinte que vende mais de R$ 20 mil de ações em Bolsa de Valores em um mês deverá pagar Imposto de Renda. O pagamento para a Receita Federal consistirá em 15% do lucro obtido com a venda das ações.

Disponível em: www1.folha.uol.com.br. Acesso em: 26 abr. 2010 (adaptado).

Um contribuinte que vende por R$ 34 mil um lote de ações que custou R$ 26 mil terá de pagar de Imposto de Renda à Receita Federal o valor de:', '2', 'medio', NULL),
  (1989, 1, 'Para se construir um contrapiso, é comum, na constituição do concreto, se utilizar cimento, areia e brita, na seguinte proporção: 1 parte de cimento, 4 partes de  
areia e 2 partes de brita. Para construir o contrapiso de uma garagem, uma construtora encomendou um caminhão betoneira com 14 m³ de concreto.

Qual é o volume de cimento, em m³, na carga de concreto trazido pela betoneira?', '2', 'medio', NULL),
  (1990, 1, 'O empresário decidiu comprar a empresa', '2', 'medio', '["https://enem.dev/2013/questions/160/c7425191-f428-4a64-bb30-70e95b899200.png"]'),
  (1991, 1, 'Disponível em: www.correios.com.br. Acesso em: 2 ago. 2012 (adaptado).

O valor total gasto, em reais, para postar essas cartas é de', '2', 'medio', '["https://enem.dev/2013/questions/161/71e7f83b-c1a9-4a5f-af6f-5060240c73b6.png"]'),
  (1992, 1, 'O valor mediano da diária, em reais, para o quarto padrão de casal nessa cidade, é', '2', 'medio', '["https://enem.dev/2013/questions/162/7abe2076-bc00-4223-af44-4a621459fc52.png"]'),
  (1993, 1, 'Para aumentar as vendas no início do ano, uma loja de departamentos remarcou os preços de seus produtos 20% abaixo do preço original. Quando chegam ao caixa, os clientes que possuem o cartão fidelidade da loja têm direito a um desconto adicional de 10% sobre o valor total de suas compras.

Um cliente deseja comprar um produto que custava R$ 50,00 antes da remarcação de preços. Ele não possui o cartão fidelidade da loja.

Caso esse cliente possuísse o cartão fidelidade da loja, a economia adicional que obteria ao efetuar a compra, em reais, seria de', '2', 'medio', NULL),
  (1995, 1, 'Com base nas informações fornecidas, quantas joias diferentes, nesse formato, o artesão poderá obter?', '2', 'medio', '["https://enem.dev/2013/questions/165/2d41f715-77e6-4676-a0d0-89a5eca34887.png"]'),
  (1996, 1, 'Considere 0,3 como aproximação para log10 2.

Qual o tempo necessário, em anos, para que uma quantidade de massa do césio-137 se reduza a 10% da quantidade inicial?', '2', 'medio', NULL),
  (1997, 1, 'Disponível em: www.arq.ufsc.br. Acesso em: 3 mar. 2012.

Suponha que uma peça, quando moldada em argila, possuía uma base retangular cujos lados mediam 30 cm e 15 cm. Após o cozimento, esses lados foram reduzidos em 20%.

Em relação à área original, a área da base dessa peça, após o cozimento, ficou reduzida em', '2', 'medio', NULL),
  (1998, 1, 'O desempenho conjunto dessas máquinas, em setembro, pode ser classificado como', '2', 'medio', '["https://enem.dev/2013/questions/168/a837d05f-4fe2-4d97-8542-fbcea6679fe9.png"]'),
  (1999, 1, 'Cinco apostadores, cada um com R$ 500,00 para apostar, fizeram as seguintes opções:

Arthur: 250 cartelas com 6 números escolhidos;

Bruno: 41 cartelas com 7 números escolhidos e 4 cartelas com 6 números escolhidos;

Caio: 12 cartelas com 8 números escolhidos e 10 cartelas com 6 números escolhidos;

Douglas: 4 cartelas com 9 números escolhidos;

Eduardo: 2 cartelas com 10 números escolhidos.

Os dois apostadores com maiores probabilidades de serem premiados são', '2', 'medio', '["https://enem.dev/2013/questions/169/4edf5f0f-1c12-4b0b-a004-77d4d4835645.png"]'),
  (2000, 1, 'Nos Estados Unidos a unidade de medida de volume mais utilizada em latas de refrigerante é a onça fluida (fl oz), que equivale a aproximadamente 2,95 centilitros (cL).

Sabe-se que o centilitro é a centésima parte do litro e que a lata de refrigerante usualmente comercializada no Brasil tem capacidade de 355 mL.

Assim, a medida do volume da lata de refrigerante de 355 mL, em onça fluida (fl oz), é mais próxima de', '2', 'medio', NULL),
  (2001, 1, 'Qual é a expressão que representa a relação entre X e Y', '2', 'medio', NULL),
  (2002, 1, 'A temperatura T de um forno (em graus centígrados) é reduzida por um sistema a partir do instante de seu desligamento (t = 0) e varia de acordo com a expressão com t em minutos. Por motivos de segurança, a trava do forno só é liberada para  
abertura quando o forno atinge a temperatura de 39 ºC.

Qual o tempo mínimo de espera, em minutos, após se desligar o forno, para que a porta possa ser aberta?', '2', 'medio', '["https://enem.dev/2013/questions/172/d05feb96-582b-4f24-8173-87c59a15ee16.png"]'),
  (2003, 1, 'O ciclo de atividade magnética do Sol tem um período de 11 anos. O início do primeiro ciclo registrado se deu no começo de 1755 e se estendeu até o final de 1765. Desde então, todos os ciclos de atividade magnética do Sol têm sido registrados.

Disponível em: http://g1.globo.com. Acesso em: 27 fev. 2013.

No ano de 2101, o Sol estará no ciclo de atividade magnética de número', '2', 'medio', NULL),
  (2004, 1, 'Há interesse em estimar o número de vezes que foi ampliada a área correspondente a esse estado no mapa do Brasil.

Esse número é', '2', 'medio', '["https://enem.dev/2013/questions/174/058b1a19-673e-41e2-864f-585fb4405de3.png"]'),
  (2005, 1, 'A torre deve estar situada em um local equidistante das três antenas.

O local adequado para a construção dessa torre corresponde ao ponto de coordenadas', '2', 'medio', '["https://enem.dev/2013/questions/175/eb855bec-d0a6-4b05-b8d8-fcff4deae0a7.png"]'),
  (2006, 1, 'Nela identifica-se a representação de duas figuras geométricas tridimensionais.

Essas figuras são', '2', 'medio', '["https://enem.dev/2013/questions/176/38cb8424-5409-40d1-bed1-ccff111fb5ea.png"]'),
  (2007, 1, 'Dos países com notas abaixo da média nesse exame, aquele que apresenta maior quantidade de horas de estudo é', '2', 'medio', '["https://enem.dev/2013/questions/177/1c2ff438-889a-4dcc-8cd6-cf02757f4b17.png"]'),
  (2008, 1, 'Considere que AC = 7/5 BD e que l é a medida de um dos lados da base da bandeja.
Qual deve ser o menor valor da razão lBD para que uma bandeja tenha capacidade de portar exatamente quatro copos de uma só vez?', '2', 'medio', '["https://enem.dev/2013/questions/178/402e3690-ae8e-4967-a6fb-169619428b3a.png"]'),
  (2009, 1, 'Qual deve ser o valor do comprimento da haste EF?', '2', 'medio', '["https://enem.dev/2013/questions/179/b89b41c4-9cdd-4858-8d4d-69e4efbcf1cc.png"]'),
  (2010, 1, 'Suponha que a taxa de desemprego oculto do mês de dezembro de 2012 tenha sido a metade da mesma taxa em junho de 2012 e que a taxa de desemprego total em dezembro de 2012 seja igual a essa taxa em dezembro de 2011.

Disponível em: dieese.org.br. Acesso em: 1 ago. 2012 (fragmento).

Nesse caso, a taxa de desemprego aberto de dezembro de 2012 teria sido, em termos percentuais, de', '2', 'medio', '["https://enem.dev/2014/questions/136/48b68b51-310d-4654-b637-5fece87a050f.png"]'),
  (2011, 1, 'Suponha que a variação percentual relativa na taxa de fecundidade no período de 2000 a 2010 se repita no período de 2010 a 2020.

Nesse caso, em 2020 a taxa de fecundidade no Brasil estará mais próxima de', '2', 'medio', '["https://enem.dev/2014/questions/137/40cf73c4-388a-4323-84f9-62bdaccf835b.png"]'),
  (2012, 1, 'Os resultados obtidos permitiram que estados, municípios e o governo federal estabelecessem as regiões prioritárias do país para a intensificação das campanhas de doação de sangue.

A campanha deveria ser intensificada nas regiões em que o percentual de doadores por habitantes fosse menor ou igual ao do país.

Disponível em: http://bvsms.saude.gov.br. Acesso em: 2 ago. 2013 (adaptado).

As regiões brasileiras onde foram intensificadas campanhas na época são', '2', 'medio', '["https://enem.dev/2014/questions/138/3fe2669a-4174-4db9-a85e-cee6c877f765.png"]'),
  (2013, 1, 'A razão entre a largura da nova porta e a largura da porta anterior é', '2', 'medio', NULL),
  (2014, 1, 'Se cada brasileiro adotar o consumo de água indicado no quadro, mantendo o mesmo consumo nas demais atividades, então economizará diariamente, em média, em litros de água,', '2', 'medio', '["https://enem.dev/2014/questions/140/4c998d12-4067-468b-8789-037afc8b6503.png"]'),
  (2015, 1, 'Segundo o edital de seleção, o candidato aprovado será aquele para o qual a mediana das notas obtidas por ele nas quatro disciplinas for a maior. O candidato aprovado será', '2', 'medio', '["https://enem.dev/2014/questions/141/ed992f8e-53a4-461c-8d93-6d5c402836e3.png"]'),
  (2016, 1, 'Considere um silo de 2 m de altura, 6 m de largura de topo e 20 m de comprimento. Para cada metro de altura do silo, a largura do topo tem 0,5 m a mais do que a largura do fundo. Após a silagem, 1 tonelada de forragem ocupa 2 m3 desse tipo de silo.

EMBRAPA. **Gado de corte**. Disponível em: www.cnpgc.embrapa.br. Acesso em: 1 ago. 2012 (adaptado).

Após a silagem, a quantidade máxima de forragem que cabe no silo, em toneladas, é', '2', 'medio', '["https://enem.dev/2014/questions/142/3a321f8b-9e36-433f-9664-4f989a797ed8.png"]'),
  (2020, 1, 'O número de divisores de N, diferentes de N, é', '2', 'medio', NULL),
  (2021, 1, 'A quantidade máxima de triângulos não congruentes dois a dois que podem ser construídos é', '2', 'medio', '["https://enem.dev/2014/questions/147/7d03f38b-d6bf-4e4a-821c-ff2c6d13f8e0.png"]'),
  (2023, 1, 'Qual é o tempo mínimo para que todos passem pelas catracas?', '2', 'medio', NULL),
  (2024, 1, 'O maior valor possível para x, em centímetros, para que a caixa permaneça dentro dos padrões permitidos pela Anac é:', '2', 'medio', '["https://enem.dev/2014/questions/150/d2daa25c-0942-4c50-b2a5-6ec82f5bcd4e.png"]'),
  (2025, 1, 'Será produzida uma nova lata, com os mesmos formato e volume, de tal modo que as dimensões de sua base sejam 25% maiores que as da lata atual.

Para obter a altura da nova lata, a altura da lata atual deve ser reduzida em', '2', 'medio', '["https://enem.dev/2014/questions/151/f01eefec-e89d-4de0-881e-3bf1249199ff.png"]'),
  (2026, 1, 'Se o volume de esgoto gerado permanecer o mesmo e a meta dessa campanha se concretizar, o percentual de esgoto tratado passará a ser', '2', 'medio', NULL),
  (2027, 1, 'Qual deve ser o aumento na receita da empresa para que o lucro mensal em 2014 seja o mesmo de 2013?', '2', 'medio', '["https://enem.dev/2014/questions/153/3938c0bb-0e7b-4093-a8cc-36fc3213211a.png"]'),
  (2028, 1, 'Qual desses jogadores apresentou maior desempenho?', '2', 'medio', NULL),
  (2029, 1, 'A menor nota que o candidato II deverá obter na prova final de química para vencer a competição é', '2', 'medio', '["https://enem.dev/2014/questions/155/d051c23d-cdd3-4ec4-9957-a9aa1a9bd0c4.png"]'),
  (2030, 1, 'O volume real do armário, em centímetros cúbicos, será', '2', 'medio', NULL),
  (2031, 1, 'Para quantificar os sapatos pela cor, os donos representaram a cor branca pelo número 0 e a cor preta pelo número 1. Sabe-se que a média da distribuição desses zeros e uns é igual a 0,45.

Os donos da loja decidiram que a numeração dos sapatos com maior número de reclamações e a cor com maior número de reclamações não serão mais vendidas.

A loja encaminhou um ofício ao fornecedor dos sapatos, explicando que não serão mais encomendados os sapatos de cor', '2', 'medio', '["https://enem.dev/2014/questions/157/0036f173-2e12-4c90-9b1b-9eb2fb4de45b.png"]'),
  (2032, 1, 'BENSEÑOR, I. M.; LOTUFO, P. A. **Epidemologia**: abordagem prática.

São Paulo: Sarvier, 2011 (adaptado).

Conforme o quadro do teste proposto, a sensibilidade dele é de', '2', 'medio', '["https://enem.dev/2014/questions/158/f3fb8087-ffc9-4624-9550-cb84254ac99f.png"]'),
  (2033, 1, 'O número máximo de mudas que essa pessoa poderá plantar no espaço disponível é', '2', 'medio', NULL),
  (2035, 1, 'Levando-se em consideração os experimentos feitos, o reagente que atende às expectativas do pesquisador é o', '2', 'medio', '["https://enem.dev/2014/questions/161/46f3d644-43b0-4dfc-9d1e-e688725abdaa.png"]'),
  (2036, 1, '_Valor do kWh (com tributos)_ x _consumo (em kWh) + Cosip_

O valor da Cosip é fixo em cada faixa de consumo.  O quadro mostra o valor cobrado para algumas faixas.

Suponha que, em uma residência, todo mês o consumo seja de 150 kWh, e o valor do kWh (com tributos) seja de R$ 0,50. O morador dessa residência pretende diminuir seu consumo mensal de energia elétrica com o objetivo de reduzir o custo total da conta em pelo menos 10%.

Qual deve ser o consumo máximo, em kWh, dessa residência para produzir a redução pretendida pelo morador?', '2', 'medio', '["https://enem.dev/2014/questions/162/9f6d3bb3-95ac-44b3-88c3-7b0fe6d9d2f6.png"]'),
  (2038, 1, 'A probabilidade de o teste terminar na quinta pergunta é', '2', 'medio', NULL),
  (2040, 1, 'Essa pessoa pretende gastar exatamente R$ 30,00 por mês com telefone.

Dos planos telefônicos apresentados, qual é o mais vantajoso, em tempo de chamada, para o gasto previsto para essa pessoa?', '2', 'medio', '["https://enem.dev/2014/questions/166/9eb6c121-ac40-452b-b439-1b2261d6e950.png"]'),
  (2041, 1, 'Use 3 como valor aproximado para π.

A redução do volume da pílula, em milímetros cúbicos, após a reprogramação da máquina, será igual a', '2', 'medio', NULL),
  (2042, 1, 'O Brasil é um país com uma vantagem econômica clara no terreno dos recursos naturais, dispondo de uma das maiores áreas com vocação agrícola do mundo. Especialistas calculam que, dos 853 milhões de hectares do país, as cidades, as reservas indígenas e as áreas de preservação, incluindo florestas e mananciais, cubram por volta de 470 milhões de hectares. Aproximadamente 280 milhões se destinam à agropecuária, 200 milhões para pastagens e 80 milhões para a agricultura, somadas as lavouras anuais e as perenes, como o café e a fruticultura.

FORTES, G. Recuperação de pastagens é alternativa para ampliar cultivos. **Folha de S. Paulo**, 30 out. 2011.

De acordo com os dados apresentados, o percentual correspondente à área utilizada para agricultura em relação à área do território brasileiro é mais próximo de', '2', 'medio', NULL),
  (2043, 1, 'Deseja-se reproduzi-la numa folha de papel retangular com 42 cm de comprimento e 30 cm de altura, deixando livres 3 cm em cada margem, conforme a Figura 2.

A reprodução da gravura deve ocupar o máximo possível da região disponível, mantendo-se as proporções da Figura 1

PRADO, A. C. **Superinteressante**, ed. 301, fev. 2012 (adaptado).

A escala da gravura reproduzida na folha de papel é', '2', 'medio', '["https://enem.dev/2014/questions/169/b44d9617-dc63-4685-b986-350085211e6d.png","https://enem.dev/2014/questions/169/763670f1-6c10-4db7-bc89-5871441c12b6.png"]'),
  (2044, 1, 'Em seguida, retira-se o cilindro de madeira do meio do papel enrolado, finalizando a confecção do diploma. Considere que a espessura da folha de papel original seja desprezível.

Qual é a medida, em centímetros, do lado da folha de papel usado na confecção do diploma?', '2', 'medio', '["https://enem.dev/2014/questions/170/3ce1ab6e-11a1-45d0-a43f-cf84e9fc4e79.png"]'),
  (2045, 1, 'No caso de carga máxima, as cargas recebidas pelos três pontos de sustentação serão, respectivamente,', '2', 'medio', NULL),
  (2046, 1, 'Disponível em: www.culturaperuana.com.br. Acesse em: 13 dez. 2012.

O número da representação do quipus da Figura 2, em base decimal, é', '2', 'medio', '["https://enem.dev/2014/questions/172/d8842865-9aae-47ac-87d3-7eb78f57f384.png"]'),
  (2047, 1, 'Qual é o valor, em metros quadrados, da área coberta pelo terreno da piscina?', '2', 'medio', NULL),
  (2048, 1, 'O secretário de saúde comprará recipientes de um mesmo tipo, de modo a instalar 20 deles em cada escola, abastecidos com álcool em gel na sua capacidade máxima, de forma a utilizar todo o gel dos galões de uma só vez.

Que tipo de recipiente o secretário de saúde deve comprar?', '2', 'medio', NULL),
  (2049, 1, 'De acordo com as informações, o intervalo das porcentagens que representam a variação total possível de P é', '2', 'medio', NULL),
  (2050, 1, 'Em que dia dessa semana a quantidade total de bactérias nesse ambiente de cultura foi máxima?', '2', 'medio', '["https://enem.dev/2014/questions/176/26bc065f-aefd-4edc-9fec-d2a1027ddf48.png"]'),
  (2051, 1, 'Quantos minutos essa torneira levará para encher completamente o restante do depósito?', '2', 'medio', '["https://enem.dev/2014/questions/177/0a4df606-c0a5-4bac-b988-67ea996fa475.png"]'),
  (2052, 1, 'Qual deve ser a ação desse proprietário para que ele atinja o seu objetivo?', '2', 'medio', NULL),
  (2053, 1, 'A quantia que essa pessoa levava semanalmente para fazer a compra era', '2', 'medio', NULL),
  (2054, 1, 'Para que o executivo chegue à cidade A no horário correto e admitindo que não haja atrasos, ele deve pegar um voo saindo da cidade B, em horário local de B, no máximo à(s)', '2', 'medio', NULL),
  (2055, 1, 'Para que o executivo chegue à cidade A no horário correto e admitindo que não haja atrasos, ele deve pegar um voo saindo da cidade B, em horário local de B, no máximo à(s)', '2', 'medio', NULL),
  (2056, 1, 'Quantas operações o investidor fez naquele dia?', '2', 'medio', '["https://enem.dev/2015/questions/136/84935bca-6121-4afe-b517-3d0bce9ed500.png"]'),
  (2057, 1, 'Considere 1,7 como aproximação para √3.

O tampo a ser escolhido será aquele cujo raio, em centímetros, é igual a', '2', 'medio', NULL),
  (2058, 1, 'O valor pago na locadora Q é menor ou igual àquele pago na locadora P para distâncias, em quilômetros, presentes em qual(is) intervalo(s)?', '2', 'medio', '["https://enem.dev/2015/questions/138/386a223a-c3a3-4465-9197-ec9ac1d2fc9d.png"]'),
  (2059, 1, 'Segundo as regras do jogo, quantas cartas da mão desse jogador podem formar um par com a carta da mesa?', '2', 'medio', '["https://enem.dev/2015/questions/139/84f82cb3-3bd8-4fa1-8795-652c0c91fa30.png"]'),
  (2060, 1, 'Uma empresa vai lançar uma promoção utilizando apenas uma categoria nas classes A e B (A/B) e uma categoria nas classes C e D (C/D).

De acordo com o resultado da pesquisa, para atingir o maior número de consumidores das classes A/B e C/D, a empresa deve realizar a promoção, respectivamente, via', '2', 'medio', '["https://enem.dev/2015/questions/140/b83a0d54-9959-4218-96b9-3b44ec7d745e.png"]'),
  (2061, 1, 'O volume máximo, em cm³, da mistura sabor morango que deverá ser colocado na embalagem é', '2', 'medio', NULL),
  (2062, 1, 'Qual é a probabilidade de a senha sorteada ser um número de 1 a 20?', '2', 'medio', NULL),
  (2063, 1, 'A mediana dos tempos apresentados no quadro é', '2', 'medio', '["https://enem.dev/2015/questions/143/782cd653-e43f-4da4-9a86-bce130429805.png"]'),
  (2064, 1, 'Visando atender as orientações do Comitê Central da Federação Internacional de Basquete (Fiba) em 2010, que unificou as marcações das diversas ligas, foi prevista uma modificação nos garrafões das quadras, que passariam a ser retângulos, como mostra o Esquema II.

Após executdas as modificações previstas, houve uma alteração na área ocupada por cada garrafão, que corresponde a um(a)', '2', 'medio', '["https://enem.dev/2015/questions/144/4b656609-56fc-45a4-8e34-a4c7e0bb8513.png","https://enem.dev/2015/questions/144/c4aff79b-17b7-4a0e-86ce-a00808954ddc.png"]'),
  (2065, 1, 'Qual deve ser o aumento, em metros, no raio da cisterna para atingir o volume desejado?', '2', 'medio', NULL),
  (2066, 1, 'Quantas configurações distintas das notas a serem atribuídas pelo jurado B no quesito Bateria tornariam campeã a Escola II?', '2', 'medio', '["https://enem.dev/2015/questions/147/09fe1110-3444-4a3d-b60c-d86c6f3d705a.png"]'),
  (2067, 1, 'De acordo com as normas desse porto, os contêineres deverão ser empilhados de forma a não sobrarem espaços nem ultrapassarem a área delimitada

Após o empilhamento total da carga e atendendo à norma do porto, a altura mínima a ser atingida por essa pilha de contêineres é', '2', 'medio', '["https://enem.dev/2015/questions/148/971eb9cd-abf9-48be-994d-d1e0f2bdcc60.png"]'),
  (2068, 1, 'Com base nas informações, qual é a quantidade de cores que serão utilizadas na pintura das faces do troféu?', '2', 'medio', NULL),
  (2069, 1, 'q = 400 – 100_p_,

na qual _q_ representa a quantidade de pães especiais vendidos diariamente e _p_, o seu preço em reais.

A fim de aumentar o fluxo de clientes, o gerente da padaria decidiu fazer uma promoção. Para tanto, modificará o preço do pão especial de modo que a quantidade a ser vendida diariamente seja a maior possível, sem diminuir a média de arrecadação diária na venda desse produto.

O preço p, em reais, do pão especial nessa promoção deverá estar no intervalo', '2', 'medio', NULL),
  (2070, 1, 'Para diminuir os custos, a proposta escolhida deveria ser também aquela que vacinasse a menor quantidade possível de pessoas.

Disponível em: www.virushpv.com.br. Acesso em: 30 ago. 2014 (adaptado).

A proposta implementada foi a de número', '2', 'medio', NULL),
  (2071, 1, 'Se a estimativa for alcançada, qual é a expressão que determina o número de unidades produzidas P em função de t, para t ≥ 1?', '2', 'medio', NULL),
  (2072, 1, 'Entre esses polígonos, o único que satisfaz as condições necessárias para representar a ingestão correta de diferentes tipos de alimentos é o', '2', 'medio', '["https://enem.dev/2015/questions/153/867b7f6a-c261-459f-b335-19447fabfce0.png"]'),
  (2074, 1, 'O ponto _O_ indica a posição da nova antena, e sua região de cobertura será um círculo cuja circunferência tangenciará externamente as circunferências das áreas de cobertura menores.

Com a instalação da nova antena, a medida da área de cobertura, em quilômetros quadrados, foi ampliada em', '2', 'medio', '["https://enem.dev/2015/questions/155/b5b18afc-ec22-42af-9b29-474d822405e7.png"]'),
  (2075, 1, 'Efetuando o pagamento dessa forma, o valor, em reais, a ser pago ao banco na décima prestação é de', '2', 'medio', NULL),
  (2076, 1, 'As exportações de soja do Brasil totalizaram 4,129 milhões de toneladas no mês de julho de 2012, e registraram um aumento em relação ao mês de julho de 2011, embora tenha havido uma baixa em relação ao mês de maio de 2012.

Disponível em: www.noticiasagricolas.com.br. Acesso em: 2 ago. 2012.

A quantidade, em quilogramas, de soja exportada pelo Brasil no mês de julho de 2012 foi de', '2', 'medio', NULL),
  (2077, 1, 'Uma enfermeira deve administrar um medicamento X a uma criança inconsciente, cuja dosagem de adulto é de 60 mg. A enfermeira não consegue descobrir onde está registrada a idade da criança no prontuário, mas identifica que, algumas horas antes, foi administrada a ela uma dose de 14 mg de um medicamento Y, cuja dosagem de adulto é 42 mg. Sabe-se que a dose da medicação Y administrada à criança estava correta.

Então, a enfermeira deverá ministrar uma dosagem do medicamento X, em miligramas, igual a', '2', 'medio', '["https://enem.dev/2015/questions/158/502bd419-a7b2-413c-92e6-01c5fee8ad38.png"]'),
  (2078, 1, 'Segundo dados apurados no Censo 2010, para uma população de 101,8 milhões de brasileiros com 10 anos ou mais de idade e que teve algum tipo de rendimento em 2010, a renda média mensal apurada foi de R$ 1 202,00. A soma dos rendimentos mensais dos 10% mais pobres correspondeu a apenas 1,1% do total de rendimentos dessa população considerada, enquanto que a soma dos rendimentos mensais dos 10% mais ricos correspondeu a 44,5% desse total.

Disponível em: www.estadao.com.br. Acesso em: 16 nov. 2011(adaptado).

Qual foi a diferença, em reais, entre a renda média mensal de um brasileiro que estava na faixa dos 10% mais ricos e de um brasileiro que estava na faixa dos 10% mais pobres?', '2', 'medio', NULL),
  (2079, 1, 'A largura e o comprimento reais da pegada, em centímetros, são, respectivamente, iguais a', '2', 'medio', '["https://enem.dev/2015/questions/160/1efe6cb5-d767-4175-b0c3-39e98266f7cd.png"]'),
  (2080, 1, 'Essa indústria recebeu a encomenda de uma malha de proteção solar para ser aplicada em um vidro retangular de 5 m de largura por 9 m de comprimento.

A medida de d, em milímetros, para que a taxa de cobertura da malha seja de 75% é', '2', 'medio', '["https://enem.dev/2015/questions/161/f840c071-3522-4f1a-986f-6456acba44c9.png"]'),
  (2081, 1, 'Atendendo o pedido do arquiteto, o carpinteiro deverá produzir', '2', 'medio', NULL),
  (2082, 1, 'Para controle das aplicações, definiu-se a unidade de insulina como 0,01 mL. Antes de cada aplicação, é necessário descartar 2 unidades de insulina, de forma a retirar possíveis bolhas de ar.

A um paciente foram prescritas duas aplicações diárias: 10 unidades de insulina pela manhã e 10 à noite.

Qual o número máximo de aplicações por refil que o paciente poderá utilizar com a dosagem prescrita?', '2', 'medio', '["https://enem.dev/2015/questions/163/eb67eda1-2354-45e8-a0a6-d6834a7bcf73.png"]'),
  (2084, 1, 'O parque aquático já conta com uma piscina em formato retangular com dimensões 50 m x 24 m.

O proprietário quer que a área ocupada pela nova piscina seja menor que a ocupada pela piscina já existente.

Considere 3,0 como aproximação para π.

O maior valor possível para R, em metros, deverá ser', '2', 'medio', '["https://enem.dev/2015/questions/165/0cf3eb67-f1f6-4a40-89fc-106ba00c5769.png"]'),
  (2085, 1, 'Qual o tipo de garrafa escolhida pela paciente?', '2', 'medio', NULL),
  (2087, 1, 'A probabilidade de o entrevistador ser entendido e ter sua pergunta oralmente respondida em inglês é', '2', 'medio', NULL),
  (2088, 1, 'De acordo com os gráficos, a quantidade de embalagens PET recicladas destinadas à produção de tecidos e malhas, em kton, é mais aproximada de', '2', 'medio', '["https://enem.dev/2015/questions/169/fed74b1c-7354-40bc-8c64-834a528c49d7.png"]'),
  (2089, 1, 'A ordem de classificação final desse concurso é', '2', 'medio', '["https://enem.dev/2015/questions/170/8e79e15b-e750-434f-9cba-7ae74d55e746.png"]'),
  (2090, 1, 'Utilize 3,0 como aproximação para π.

O índice pluviométrico da região, durante o período do temporal, em milímetros, é de', '2', 'medio', NULL),
  (2091, 1, 'Os estudos indicam que o novo ponto _T_ deverá ser instalado, nesse percurso, entre as paradas já existentes _P_ e _Q_, de modo que as distâncias percorridas pelo ônibus entre os pontos _P_ e _T_ e entre os pontos _T_ e _Q_ sejam iguais.

De acordo com os dados, as coordenadas do novo ponto de parada são', '2', 'medio', '["https://enem.dev/2015/questions/172/d163cf5f-97a0-47e9-a6ab-c11c84e0e5c9.png"]'),
  (2092, 1, 'Se as lentes forem adquiridas nessa loja, a espessura escolhida será, em milímetros, de', '2', 'medio', NULL),
  (2093, 1, 'Quando o estudante obtém o maior número possível de bactérias, a temperatura no interior da estufa está classificada como', '2', 'medio', '["https://enem.dev/2015/questions/174/9ac3cd8a-2315-450e-96c0-25cb9cd65cdd.png"]'),
  (2094, 1, 'Considere que o volume aproximado dessa bola é dado por _V_ = 4_ab_².

O volume dessa bola, em função apenas de b, é dado por', '2', 'medio', '["https://enem.dev/2015/questions/175/6b6ae3c5-95b1-4a21-94b8-59bf5c0c470d.png"]'),
  (2096, 1, 'Para que os objetivos da família sejam atingidos, a capacidade mínima, em litros, do reservatório a ser construído deve ser', '2', 'medio', NULL),
  (2097, 1, 'onde _x_ representa o mês do ano, sendo _x_ = 1 associado ao mês de janeiro, _x_ = 2 ao mês de fevereiro, e assim sucessivamente, até _x_ = 12 associado ao mês de dezembro.

Na safra, o mês de produção máxima desse produto é', '2', 'medio', '["https://enem.dev/2015/questions/180/0718a550-0f5e-4d3b-bdf2-13c39ca515af.png"]'),
  (2098, 1, 'onde _x_ representa o mês do ano, sendo _x_ = 1 associado ao mês de janeiro, _x_ = 2 ao mês de fevereiro, e assim sucessivamente, até _x_ = 12 associado ao mês de dezembro.

Na safra, o mês de produção máxima desse produto é', '2', 'medio', '["https://enem.dev/2015/questions/180/0718a550-0f5e-4d3b-bdf2-13c39ca515af.png"]'),
  (2099, 1, 'Utilize 3 como aproximação para π.
O número mínimo de viagens que o caminhão precisará fazer para transportar todo o volume de grãos armazenados no silo é', '2', 'medio', '["https://enem.dev/2016/questions/136/27018caf-dac3-4dce-9379-fb0c5bd5416d.png"]'),
  (2100, 1, 'A altura, a largura e a profundidade do desenho impresso para a apresentação serão, respectivamente,', '2', 'medio', NULL),
  (2101, 1, 'Não habituado com a unidade pé, e querendo satisfazer sua curiosidade, esse turista consultou um manual de unidades de medidas e constatou que 1 pé equivale a 12 polegadas, e que 1 polegada equivale a 2,54 cm. Após alguns cálculos de conversão, o turista ficou surpreendido com o resultado obtido em metros.
Qual a medida que mais se aproxima do diâmetro da Roda do Milênio, em metro?', '2', 'medio', '["https://enem.dev/2016/questions/138/484f68f6-18c6-4987-b92e-58c44f18b07b.png"]'),
  (2102, 1, 'Qual é a vazão, em litro por hora, da bomba que foi ligada no início da segunda hora?', '2', 'medio', '["https://enem.dev/2016/questions/139/c748d750-cec7-42af-8fb1-4690aee8d9a8.png"]'),
  (2103, 1, 'Após as três “pesagens”, os organizadores do torneio informaram aos atletas quais deles se enfrentariam na primeira luta.
A primeira luta foi entre os atletas', '2', 'medio', '["https://enem.dev/2016/questions/140/ae197a69-68db-46c4-9321-f4fd03e424dc.png"]'),
  (2104, 1, 'O proprietário de um veículo precisa trocar os pneus de seu carro e, ao chegar a uma loja, é informado por um vendedor que há somente pneus com os seguintes códigos: 175/65R15, 175/75R15, 175/80R15, 185/60R15 e 205/55R15. Analisando, juntamente com o vendedor, as opções de pneus disponíveis, concluem que o pneu mais adequado para seu veículo é o que tem a menor altura.
Desta forma, o proprietário do veículo deverá comprar o pneu com a marcação', '2', 'medio', '["https://enem.dev/2016/questions/141/5157ff2e-1b33-4a36-91dd-d088df930d2c.png"]'),
  (2105, 1, 'A família pretende que esse imóvel tenha a mesma distância de percurso até o local de trabalho da mãe, localizado na rua 6 com a rua E, o consultório do pai, na rua 2 com a rua E, e a escola das crianças, na rua 4 com a rua A.
Com base nesses dados, o imóvel que atende as pretensões da família deverá ser localizado no encontro das ruas', '2', 'medio', '["https://enem.dev/2016/questions/142/27a20fd0-d2a2-46da-972f-c621f3cbdce8.png"]'),
  (2106, 1, 'Para satisfazer o filho mais novo, esse senhor precisa encontrar um terreno retangular cujas medidas, em metro, do comprimento e da largura sejam iguais, respectivamente, a', '2', 'medio', '["https://enem.dev/2016/questions/143/ed2f51dd-ec06-4496-8180-b5b75383fd27.png"]'),
  (2107, 1, 'Avaliando os resultados, o conselho diretor da empresa decidiu comprar, nos dois meses subsequentes, a mesma quantidade de matéria-prima comprada no mês em que o lucro mais se aproximou da média dos lucros mensais dessa empresa nesse período de sete meses.

Nos próximos dois meses, essa empresa deverá comprar a mesma quantidade de matéria-prima comprada no mês', '2', 'medio', '["https://enem.dev/2016/questions/144/3c5cca0b-8c29-4ca2-9a1f-eba9121870b2.png"]'),
  (2108, 1, '_Art. 93. A empresa com 100 (cem) ou mais empregados está obrigada a preencher de 2% (dois por cento) a 5% (cinco por cento) dos seus cargos com beneficiários reabilitados ou pessoas com deficiência, habilitadas, na seguinte proporção:_  
_I. até 200 empregados……………….. 2%;_  
_II. de 201 a 500 empregados…………… 3%;_  
_III. de 501 a 1 000 empregados………… 4%;_  
_IV. de 1 001 em diante………………. 5%._

Disponível em: www.planalto.gov.br. Acesso em: 3 fev. 2015.

Constatou-se que a empresa possui 1 200 funcionários, dos quais 10 são reabilitados ou com deficiência, habilitados.

Para adequar-se à referida lei, a empresa contratará apenas empregados que atendem ao perfil indicado no artigo 93.

O número mínimo de empregados reabilitados ou com deficiência, habilitados, que deverá ser contratado pela empresa é', '2', 'medio', NULL),
  (2109, 1, 'Para atingir seu objetivo, e supondo que todos os picolés disponíveis foram vendidos no segundo dia, o valor de venda de cada picolé, no segundo dia, deve ser', '2', 'medio', NULL),
  (2111, 1, 'Nessa disposição, o número que está representado na figura é', '2', 'medio', '["https://enem.dev/2016/questions/148/1a5c2092-7910-4ff5-8151-fc226f7d5abe.png"]'),
  (2112, 1, 'Com base nessas simulações, observou-se que a trajetória do projétil B deveria ser alterada para que o objetivo fosse alcançado.

Para alcançar o objetivo, o coeficiente angular da reta que representa a trajetória de B deverá', '2', 'medio', '["https://enem.dev/2016/questions/149/555013c9-a224-4e98-8e48-a30e33d02321.png"]'),
  (2114, 1, 'Uma menina aos 3 anos de idade tinha altura de 85 centímetros e aos 4 anos e 4 meses sua altura chegou a um valor que corresponde a um ponto exatamente sobre a curva p50.

Qual foi o aumento percentual da altura dessa menina, descrito com uma casa decimal, no período considerado?', '2', 'medio', '["https://enem.dev/2016/questions/151/b9e723b5-a63c-4c11-b026-d686e0c3c807.png"]'),
  (2115, 1, 'Suponha que relativamente a cada ramificação, as opções existentes de percurso pelos caminhos apresentem iguais probabilidades de escolha, que a caminhada foi feita escolhendo ao acaso os caminhos existentes e que, ao tomar um caminho que chegue a uma área distinta da IV, o adolescente necessariamente passa por ela ou retorna.

Nessas condições, a probabilidade de ele chegar à área IV sem passar por outras áreas e sem
retornar é igual a', '2', 'medio', '["https://enem.dev/2016/questions/152/b9f02657-5528-4c2c-8687-9a8db0f4a232.png"]'),
  (2116, 1, 'A prefeitura optou pela seguinte distribuição dos funcionários a serem contratados:

I. 10 funcionários para cada região da cidade cujo número de casos seja maior que a média dos casos confirmados.  
II. 7 funcionários para cada região da cidade cujo número de casos seja menor ou igual à média dos casos confirmados.

Quantos funcionários a prefeitura deverá contratar para efetivar a ação?', '2', 'medio', '["https://enem.dev/2016/questions/153/5ba13490-30b2-456d-9bd4-754e04e288c3.png"]'),
  (2117, 1, '• Marca A: 2 g de fibras a cada 50 g de pão;  
• Marca B: 5 g de fibras a cada 40 g de pão;  
• Marca C: 5 g de fibras a cada 100 g de pão;  
• Marca D: 6 g de fibras a cada 90 g de pão;  
• Marca E: 7 g de fibras a cada 70 g de pão.

Recomenda-se a ingestão do pão que possui a maior concentração de fibras.

Disponível em: www.blog.saude.gov.br. Acesso em: 25 fev. 2013.

A marca a ser escolhida é', '2', 'medio', NULL),
  (2119, 1, 'Quantos policiais serão necessários no início do evento para garantir a segurança?', '2', 'medio', NULL),
  (2120, 1, 'Qual deve ser o lucro mínimo da empresa no mês de junho, em milhares de reais, para o gerente continuar no cargo no próximo semestre?', '2', 'medio', '["https://enem.dev/2016/questions/157/a509eb59-7fd2-4a42-a356-e1be71c628f2.png"]'),
  (2121, 1, 'Nas condições dadas, qual o tempo mínimo, após o sexto mês, para que o reservatório atinja o nível zero de sua capacidade?', '2', 'medio', '["https://enem.dev/2016/questions/158/af29d603-c954-4ab7-a8b4-2c4db0cf6458.png"]'),
  (2122, 1, 'Para atender essas condições, a quantidade de vacinas contra febre amarela que o posto de saúde deve adquirir no início do sexto mês é', '2', 'medio', NULL),
  (2123, 1, 'Use 0,477 como aproximação para log10 3 e 1,041 como aproximação para log10 11.
O tempo decorrido, em hora, até que a liga atinja 30℃ é mais próximo de', '2', 'medio', NULL),
  (2124, 1, 'Suponha que ocorra um desastre quando o petroleiro se encontra com sua carga máxima: ele sofre um acidente que ocasiona um furo no fundo do compartimento C.
Para fins de cálculo, considere desprezíveis as espessuras das placas divisórias.
Após o fim do vazamento, o volume de petróleo derramado terá sido de', '2', 'medio', '["https://enem.dev/2016/questions/161/576da257-907a-462b-98b2-4d67f2679d3d.png"]'),
  (2125, 1, 'Com base nas informações do gráfico, o floricultor verificou que poderia plantar essa flor rara.
O mês escolhido para o plantio foi', '2', 'medio', '["https://enem.dev/2016/questions/162/2d6250c2-b7ea-457b-8798-db4253b32235.png"]'),
  (2126, 1, 'Após a análise, os alunos ordenaram corretamente as densidades desses corpos da seguinte maneira', '2', 'medio', NULL),
  (2127, 1, 'Como o motorista conhece o percurso, sabe que existem, até a chegada a seu destino, cinco postos de abastecimento de combustível, localizados a 150 km, 187 km, 450 km, 500 km e 570 km do ponto de partida.

Qual a máxima distância, em quilômetro, que poderá percorrer até ser necessário reabastecer o veículo, de modo a não ficar sem combustível na estrada?', '2', 'medio', '["https://enem.dev/2016/questions/164/6be55162-4edb-4b05-9826-2502c11e4f14.png"]'),
  (2128, 1, 'Qual é o número de andares desse edifício?', '2', 'medio', NULL),
  (2129, 1, 'Estudos de viabilidade técnica mostraram que, pelas características do solo, a construção de 1 m de galeria via segmento de reta demora 1,0 h, enquanto que 1 m de construção de galeria via semicircunferência demora 0,6 h. Há urgência em disponibilizar água para esse bairro.

Use 3 como aproximação para π e 1,4 como aproximação para √2 .

O menor tempo possível, em hora, para conclusão da construção da galeria, para atender às necessidades de água do bairro, é de', '2', 'medio', '["https://enem.dev/2016/questions/166/353d7220-13cd-44e2-b88b-a63acba081cd.png"]'),
  (2130, 1, 'Qual é a área da parte frontal da tampa de concreto, em metro quadrado?', '2', 'medio', NULL),
  (2132, 1, 'O Índice de Gini, que mede o grau de concentração de renda de um determinado grupo, pode ser calculado pela razão A/(A + B) em que A e B são as medidas das áreas indicadas no gráfico.

A empresa tem como meta tornar seu Índice de Gini igual ao do país, que é 0,3. Para tanto, precisa ajustar os salários de modo a alterar o percentual que representa a parcela recebida pelos 10% dos funcionários de maior salário em relação ao total da massa salarial.

Disponível em: www.ipea.gov.br. Acesso em: 4 maio 2016 (adaptado)

Para atingir a meta desejada, o percentual deve ser', '2', 'medio', '["https://enem.dev/2016/questions/169/2a3b1883-983c-4974-9c15-d43c42742ae4.png"]'),
  (2133, 1, 'Com base no quadro, qual é a moda do número de pessoas no elevador durante a subida do térreo ao quinto andar?', '2', 'medio', '["https://enem.dev/2016/questions/170/4e96593f-1006-47bb-9f6f-2eac204f496c.png"]'),
  (2134, 1, 'O valor mais próximo do percentual que descreve o aumento da população nas capitais da Região Nordeste é', '2', 'medio', '["https://enem.dev/2016/questions/171/27a2aa79-e89f-40f4-a7ef-46822e39123c.png"]'),
  (2135, 1, 'Considere 1,4 e 1,7 como aproximações para √2 e √3 , respectivamente.
Para que seja atingido o seu objetivo, qual dos exemplares de serra copo o marceneiro deverá escolher?', '2', 'medio', '["https://enem.dev/2016/questions/172/3fe1c831-6ce3-4efe-babc-02de4a8381b4.png"]'),
  (2136, 1, 'Considere que o padrão apresentado no resultado do exame, no período analisado, se repita para os dias subsequentes.

O valor do parâmetro estabelecido pelo nutricionista, para uma dieta semanal, será igual a', '2', 'medio', '["https://enem.dev/2016/questions/173/fdf8c101-992d-4af6-8a5a-fa7bb406d400.png"]'),
  (2137, 1, 'O número de gotas por minuto que o paciente deverá receber após as quatro primeiras horas será', '2', 'medio', NULL),
  (2138, 1, 'Segundo a classificação dos polígonos, quais deles são possíveis de serem obtidos pelo artista plástico?', '2', 'medio', NULL),
  (2139, 1, 'Em qual intervalo de tempo, em minuto, o reservatório tem uma vazão constante de enchimento?', '2', 'medio', '["https://enem.dev/2016/questions/176/61a544a6-f994-4313-812d-2c4b7e563cc8.png"]'),
  (2140, 1, 'O LIRAa, Levantamento Rápido do Índice de Infestação por Aedes aegypti, consiste num mapeamento da infestação do mosquito Aedes aegypti. O LIRAa é dado pelo percentual do número de imóveis com focos do mosquito, entre os escolhidos de uma região em avaliação.

O serviço de vigilância sanitária de um município, no mês de outubro do ano corrente, analisou o LIRAa de cinco bairros que apresentaram o maior índice de infestação no ano anterior. Os dados obtidos para cada bairro foram:

I. 14 imóveis com focos de mosquito em 400 imóveis no bairro;  
II. 6 imóveis com focos de mosquito em 500 imóveis no bairro;  
III. 13 imóveis com focos de mosquito em 520 imóveis no bairro;  
IV. 9 imóveis com focos de mosquito em 360 imóveis no bairro;  
V. 15 imóveis com focos de mosquito em 500 imóveis no bairro.

Disponível em: http://bvsms.saude.gov.br. Acesso em: 28 out. 2015

As ações de controle iniciarão pelo bairro', '2', 'medio', NULL),
  (2142, 1, 'O filtro descartado é o', '2', 'medio', NULL),
  (2143, 1, 'sendo E a energia, em kWh, liberada pelo terremoto e E0 uma constante real positiva. Considere que E1 e E2 representam as energias liberadas nos terremotos ocorridos no Japão e na China, respectivamente.

Qual a relação entre E1 e E2?', '2', 'medio', '["https://enem.dev/2016/questions/180/903f1104-77ad-4319-a940-e7e2ab5d498b.png"]'),
  (2144, 1, 'sendo E a energia, em kWh, liberada pelo terremoto e E0 uma constante real positiva. Considere que E1 e E2 representam as energias liberadas nos terremotos ocorridos no Japão e na China, respectivamente.

Qual a relação entre E1 e E2?', '2', 'medio', '["https://enem.dev/2016/questions/180/903f1104-77ad-4319-a940-e7e2ab5d498b.png"]'),
  (2146, 1, 'Para realizar a viagem dos sonhos, uma pessoa precisava fazer um empréstimo no valor de R$ 5000,00. Para pagar as prestações, dispõe de, no máximo, R$ 400,00 mensais. Para esse valor de empréstimo, o valor da prestação (P) é calculado em função do número de prestações (n) segundo a fórmula

Se necessário, utilize 0,005 como aproximação para log 1,013; 2,602 como aproximação para log 400; 2,525 como aproximação para log 335.

De acordo com a fórmula dada, o menor número de parcelas cujos valores não comprometem o limite definido pela pessoa é', '2', 'medio', '["https://enem.dev/2017/questions/137/e7e3ca34-7beb-43f1-bef0-8691dd8922f5.png"]'),
  (2147, 1, 'Raios de luz solar estão atingindo a superfície de um lago formando um ângulo X com a sua superfície, conforme indica a figura.

Em determinadas condições, pode-se supor que a intensidade luminosa desses raios, na superfície do lago, seja dada aproximadamente por I(x) = k . sen(x)

sendo k uma constante, e supondo-se que X está entre 0° e 90º.

Quando x = 30º, a intensidade luminosa se reduz a qual percentual de seu valor máximo?', '2', 'medio', '["https://enem.dev/2017/questions/138/7d715e4d-7f9b-43a6-8f5e-4f0e1e782780.png"]'),
  (2148, 1, 'Os congestionamentos de trânsito constituem um problema que aflige, todos os dias, milhares de motoristas brasileiros. O gráfico ilustra a situação, representando, ao longo de um intervalo definido de tempo, a variação da velocidade de um veículo durante um congestionamento.

Quantos minutos o veículo permaneceu imóvel ao longo do intervalo de tempo total analisado?', '2', 'medio', '["https://enem.dev/2017/questions/139/cae1675d-9ef1-41d5-b0c6-f0a0df4b56b7.png"]'),
  (2149, 1, 'Um garçom precisa escolher uma bandeja de base retangular para servir quatro taças de espumante que precisam ser dispostas em uma única fileira, paralela ao lado maior da bandeja, e com suas bases totalmente apoiadas na bandeja. A base e a borda superior das taças são círculos de raio 4 cm e 5 cm, respectivamente.

A bandeja a ser escolhida deverá ter uma área mínima, em centímetro quadrado, igual a', '2', 'medio', '["https://enem.dev/2017/questions/140/40dd65c7-1ff1-420a-a8b1-27f26691f08b.png"]'),
  (2150, 1, 'Um casal realiza sua mudança de domicílio e necessita colocar numa caixa de papelão um objeto cúbico, de 80 cm de aresta, que não pode ser desmontado. Eles têm à disposição cinco caixas, com diferentes dimensões, conforme descrito:

• Caixa 1: 86 cm x 86 cm x 86 cm  
• Caixa 2: 75 cm x 82 cm x 90 cm  
• Caixa 3: 85 cm x 82 cm x 90 cm  
• Caixa 4: 82 cm x 95 cm x 82 cm  
• Caixa 5: 80 cm x 95 cm x 85 cm

O casal precisa escolher uma caixa na qual o objeto caiba, de modo que sobre o menor espaço livre em seu interior.

A caixa escolhida pelo casal deve ser a de número', '2', 'medio', NULL),
  (2151, 1, 'Um brinquedo infantil caminhão-cegonha é formado por uma carreta e dez carrinhos nela transportados, conforme a figura.

No setor de produção da empresa que fabrica esse brinquedo, é feita a pintura de todos os carrinhos para que o aspecto do brinquedo fique mais atraente. São utilizadas as cores amarelo, branco, laranja e verde, e cada carrinho é pintado apenas com uma cor. O caminhão-cegonha tem uma cor fixa. A empresa determinou que em todo caminhão-cegonha deve haver pelo menos um carrinho de cada uma das quatro cores disponíveis. Mudança de posição dos carrinhos no caminhão-cegonha não gera um novo modelo do brinquedo.

Com base nessas informações, quantos são os modelos distintos do brinquedo caminhão-cegonha que essa empresa poderá produzir?', '2', 'medio', '["https://enem.dev/2017/questions/143/c62c83ca-4ab4-4be7-b882-cedb9116763a.png"]'),
  (2152, 1, 'Uma empresa especializada em conservação de piscinas utiliza um produto para tratamento da água cujas especificações técnicas sugerem que seja adicionado 1,5 mL desse produto para cada 1 000 L de água da piscina. Essa empresa foi contratada para cuidar de uma piscina de base retangular, de profundidade constante igual a 1,7 m, com largura e comprimento iguais a 3 m e 5 m, respectivamente. O nível da lâmina d’água dessa piscina é mantido a 50 cm da borda da piscina.

A quantidade desse produto, em mililitro, que deve ser adicionada a essa piscina de modo a atender às suas especificações técnicas é', '2', 'medio', NULL),
  (2153, 1, 'Um instituto de pesquisas eleitorais recebe uma encomenda na qual a margem de erro deverá ser de, no máximo, 2 pontos percentuais (0,02).

O instituto tem 5 pesquisas recentes, P1 a P5, sobre o tema objeto da encomenda e irá usar a que tiver o erro menor que o pedido.

Os dados sobre as pesquisas são os seguintes:

em que σ é um parâmetro e N é o número de pessoas  
entrevistadas pela pesquisa.

Qual pesquisa deverá ser utilizada?', '2', 'medio', '["https://enem.dev/2017/questions/145/2cf08ed8-74ba-469c-9e95-8e264b79394b.png"]'),
  (2154, 1, 'Num dia de tempestade, a alteração na profundidade de um rio, num determinado local, foi registrada durante um período de 4 horas. Os resultados estão indicados no gráfico de linhas. Nele, a profundidade h, registrada às 13 horas, não foi anotada e, a partir de h, cada unidade sobre o eixo vertical representa um metro.

Foi informado que entre 15 horas e 16 horas, a profundidade do rio diminuiu em 10%.

Às 16 horas, qual é a profundidade do rio, em metro, no local onde foram feitos os registros?', '2', 'medio', '["https://enem.dev/2017/questions/147/285302d4-e938-4376-a2f3-3f320be38b8c.png"]'),
  (2155, 1, 'Uma rede hoteleira dispõe de cabanas simples na ilha de Gotland, na Suécia, conforme Figura 1. A estrutura de sustentação de cada uma dessas cabanas está representada na Figura 2. A ideia é permitir ao hóspede uma estada livre de tecnologia, mas conectada com a natureza

A forma geométrica da superfície cujas arestas estão representadas na Figura 2 é', '2', 'medio', '["https://enem.dev/2017/questions/148/aff2b260-7282-4164-b347-1cd2ebdf4951.png"]'),
  (2156, 1, 'A figura ilustra uma partida de Campo Minado, o jogo presente em praticamente todo computador pessoal. Quatro quadrados em um tabuleiro 16 x 16 foram abertos, e os números em suas faces indicam quantos dos seus 8 vizinhos contêm minas (a serem evitadas). O número 40 no canto inferior direito é o número total de minas no tabuleiro, cujas posições foram escolhidas ao acaso, de forma uniforme, antes de se abrir qualquer quadrado.

Em sua próxima jogada, o jogador deve escolher dentre os quadrados marcados com as letras P, Q, R, S e T um para abrir, sendo que deve escolher aquele com a menor probabilidade de conter uma mina.

O jogador deverá abrir o quadrado marcado com a letra', '2', 'medio', '["https://enem.dev/2017/questions/149/d94daac4-0e76-47a6-bdec-90200af5b3c0.png"]'),
  (2157, 1, 'A imagem apresentada na figura é uma cópia em preto e branco da tela quadrada intitulada O peixe, de Marcos Pinto, que foi colocada em uma parede para exposição e fixada nos pontos A e B.

Por um problema na fixação de um dos pontos, a tela se desprendeu, girando rente à parede. Após o giro, ela ficou posicionada como ilustrado na figura, formando um ângulo de 45° com a linha do horizonte.

Para recolocar a tela na sua posição original, deve-se girá-la, rente à parede, no menor ângulo possível inferior a 360°

A forma de recolocar a tela na posição original, obedecendo ao que foi estabelecido, é girando-a em um ângulo de', '2', 'medio', '["https://enem.dev/2017/questions/150/e2c89b3e-9c0a-4707-86d9-ea6b70f3cd11.png"]'),
  (2158, 1, 'A avaliação de rendimento de alunos de um curso universitário baseia-se na média ponderada das notas obtidas nas disciplinas pelos respectivos números de créditos, como mostra o quadro:

Quanto melhor a avaliação de um aluno em determinado período letivo, maior sua prioridade na escolha de disciplinas para o período seguinte.

Determinado aluno sabe que se obtiver avaliação “Bom” ou “Excelente” conseguirá matrícula nas disciplinas que deseja. Ele já realizou as provas de 4 das 5 disciplinas em que está matriculado, mas ainda não realizou a prova da disciplina I, conforme o quadro.

Para que atinja seu objetivo, a nota mínima que ele deve conseguir na disciplina I é', '2', 'medio', '["https://enem.dev/2017/questions/151/deda154b-bdf4-471b-b4a7-85c1dfae90c1.png","https://enem.dev/2017/questions/151/7ea7b9c7-5a2c-4d4e-899d-834c2b5f4af2.png"]'),
  (2160, 1, 'A manchete demonstra que o transporte de grandes cargas representa cada vez mais preocupação quando feito em vias urbanas.

**Caminhão entala em viaduto no Centro**

Um caminhão de grande porte entalou embaixo do viaduto no cruzamento das avenidas Borges de Medeiros e Loureiro da Silva no sentido Centro-Bairro, próximo à Ponte de Pedra, na capital. Esse veículo vinha de São Paulo para Porto Alegre e transportava três grandes tubos, conforme ilustrado na foto.

Considere que o raio externo de cada cano da imagem seja 0,60 m e que eles estejam em cima de uma carroceria cuja parte superior está a 1,30 m do solo. O desenho representa a vista traseira do empilhamento dos canos.

A margem de segurança recomendada para que um veículo passe sob um viaduto é que a altura total do veículo com a carga seja, no mínimo, 0,50 m menor do que a altura do vão do viaduto.

Considere 1,7 como aproximação para (3)1/2

Qual deveria ser a altura mínima do viaduto, em metro, para que esse caminhão pudesse passar com segurança sob seu vão?', '2', 'medio', '["https://enem.dev/2017/questions/153/fab0cf9a-a91f-4842-8d0b-ea7d9cf7dab3.png","https://enem.dev/2017/questions/153/e76c0b65-e180-4f4a-9bd0-aef3b42965d8.png"]'),
  (2161, 1, 'Um menino acaba de se mudar para um novo bairro e deseja ir à padaria. Pediu ajuda a um amigo que lhe forneceu um mapa com pontos numerados, que representam cinco locais de interesse, entre os quais está a padaria. Além disso, o amigo passou as seguintes instruções: a partir do ponto em que você se encontra, representado pela letra X, ande para oeste, vire à direita na primeira rua que encontrar, siga em frente e vire à esquerda na próxima rua. A padaria estará logo a seguir

A padaria está representada pelo ponto numerado com', '2', 'medio', '["https://enem.dev/2017/questions/154/e003f9f9-7641-401e-9a08-2226bde38679.png"]'),
  (2162, 1, 'Três alunos, X, Y e Z, estão matriculados em um curso de inglês. Para avaliar esses alunos, o professor optou por fazer cinco provas. Para que seja aprovado nesse curso, o aluno deverá ter a média aritmética das notas das cinco provas maior ou igual a 6. Na tabela, estão dispostas as notas que cada aluno tirou em cada prova.

Com base nos dados da tabela e nas informações dadas, ficará(ão) reprovado(s)', '2', 'medio', '["https://enem.dev/2017/questions/155/fb7df640-ed2c-4e7f-99d5-93815129aa75.png"]'),
  (2163, 1, 'Uma desenhista projetista deverá desenhar uma tampa de panela em forma circular. Para realizar esse desenho, ela dispõe, no momento, de apenas um compasso, cujo comprimento das hastes é de 10 cm, um transferidor e uma folha de papel com um plano cartesiano. Para esboçar o desenho dessa tampa, ela afastou as hastes do compasso de forma que o ângulo formado por elas fosse de 120o. A ponta seca está representada pelo ponto C, a ponta do grafite está representada pelo ponto B e a cabeça do compasso está representada pelo ponto A conforme a figura.

Após concluir o desenho, ela o encaminha para o setor de produção. Ao receber o desenho com a indicação do raio da tampa, verificará em qual intervalo este se encontra e decidirá o tipo de material a ser utilizado na sua fabricação, de acordo com os dados.

O tipo de material a ser utilizado pelo setor de produção será', '2', 'medio', '["https://enem.dev/2017/questions/156/85a380fd-271f-48cc-99fd-ebb68a0032bc.png","https://enem.dev/2017/questions/156/9fbeb0c5-eaec-4613-89d7-585bc786b147.png"]'),
  (2164, 1, 'Uma pessoa ganhou uma pulseira formada por pérolas esféricas, na qual faltava uma das pérolas. A figura indica a posição em que estaria faltando esta pérola.

Ela levou a jóia a um joalheiro que verificou que a medida do diâmetro dessas pérolas era 4 milímetros. Em seu estoque, as pérolas do mesmo tipo e formato, disponíveis para reposição, tinham diâmetros iguais a: 4,025 mm; 4,100 mm; 3,970 mm; 4,080 mm e 3,099 mm.

O joalheiro então colocou na pulseira a pérola cujo diâmetro era o mais próximo do diâmetro das pérolas originais.

A pérola colocada na pulseira pelo joalheiro tem diâmetro, em milímetro, igual a', '2', 'medio', '["https://enem.dev/2017/questions/157/a3037c5e-69fb-4c42-8587-ba4c6c0f81b4.png"]'),
  (2165, 1, 'Em uma de suas viagens, um turista comprou uma lembrança de um dos monumentos que visitou. Na base do objeto há informações dizendo que se trata de uma peça em escala 1: 400, e que seu volume é de 25 cm3.

O volume do monumento original, em metro cúbico, é de', '2', 'medio', NULL),
  (2166, 1, 'Uma bicicleta do tipo mountain bike tem uma coroa com 3 engrenagens e uma catraca com 6 engrenagens, que, combinadas entre si, determinam 18 marchas (número de engrenagens da coroa vezes o número de engrenagens da catraca).

Os números de dentes das engrenagens das coroas e das catracas dessa bicicleta estão listados no quadro.

Sabe-se que o número de voltas efetuadas pela roda traseira a cada pedalada é calculado dividindo-se a quantidade de dentes da coroa pela quantidade de dentes da catraca.

Durante um passeio em uma bicicleta desse tipo, deseja-se fazer um percurso o mais devagar possível, escolhendo, para isso, uma das seguintes combinações de engrenagens (coroa x catraca):

A combinação escolhida para realizar esse passeio da forma desejada é', '2', 'medio', '["https://enem.dev/2017/questions/159/c66f38e4-cac9-40bd-ab40-dcc28709d1f2.png","https://enem.dev/2017/questions/159/71fe199d-31a3-491a-9ed1-4f4266bcec67.png","https://enem.dev/2017/questions/159/1e1958eb-584c-47db-9aff-348f62def6d6.png"]'),
  (2167, 1, 'O comitê organizador da Copa do Mundo 2014 criou a logomarca da Copa, composta de uma figura plana e o slogan “Juntos num só ritmo”, com mãos que se unem formando a taça Fifa. Considere que o comitê organizador resolvesse utilizar todas as cores da bandeira nacional (verde, amarelo, azul e branco) para colorir a logomarca, de forma que regiões vizinhas tenham cores diferentes.

De quantas maneiras diferentes o comitê organizador da Copa poderia pintar a logomarca com as cores citadas?', '2', 'medio', '["https://enem.dev/2017/questions/160/f334ade2-9e0c-4a56-b232-855e5320a966.png"]'),
  (2168, 1, 'Viveiros de lagostas são construídos, por cooperativas locais de pescadores, em formato de prismas reto-retangulares, fixados ao solo e com telas flexíveis de mesma altura, capazes de suportar a corrosão marinha. Para cada viveiro a ser construído, a cooperativa utiliza integralmente 100 metros lineares dessa tela, que é usada apenas nas laterais.

Quais devem ser os valores de X e de Y, em metro, para que a área da base do viveiro seja máxima?', '2', 'medio', '["https://enem.dev/2017/questions/161/1ab19169-92f4-402e-9e53-2eedef827715.png"]'),
  (2169, 1, 'O fisiologista inglês Archibald Vivian Hill propôs, em seus estudos, que a velocidade V de contração de um músculo ao ser submetido a um peso p é dada pela equação (p + a) (v +b) = K, com a, b e K constantes.

Um fisioterapeuta, com o intuito de maximizar o efeito benéfico dos exercícios que recomendaria a um de seus pacientes, quis estudar essa equação e a classificou desta forma:

##### **TIPO DE CURVA**

**Semirreta oblíqua**

**Semirreta horizontal**

**Ramo de parábola**

**Arco de circunferência**

**Ramo de hipérbola**

O fisioterapeuta analisou a dependência entre v e p na equação de Hill e a classificou de acordo com sua representação geométrica no plano cartesiano, utilizando o par de coordenadas (p. V). Admita que K> 0.

Disponível em: http://rspb.royalsocietypublishing.org. Acesso em: 14jul2015 (adaptado).

O gráfico da equação que o fisioterapeuta utilizou para maximizar o efeito dos exercícios é do tipo', '2', 'medio', NULL),
  (2170, 1, 'O acesso aos elevadores tem os seguintes custos:  
• Subir pelo elevador 1: R$ 0,15;  
• Subir pelo elevador 2: R$ 1,80;  
• Descer pelo elevador 1: R$ 0,10;  
• Descer pelo elevador 2: R$ 2,30.

O custo da passagem do teleférico partindo do topo do mirante 1 para o topo do mirante 2 é de R$ 2,00, e do topo do mirante 2 para o topo do mirante 1 é de R$ 2,50.

Qual é o menor custo, em real, para uma pessoa visitar os topos dos dois mirantes e retornar ao solo?', '2', 'medio', '["https://enem.dev/2017/questions/163/b4c6dcfc-5f86-46af-9f78-dd94358a2301.png"]'),
  (2171, 1, 'A mensagem digitada no celular, enquanto você dirige, tira a sua atenção e, por isso, deve ser evitada. Pesquisas mostram que um motorista que dirige um carro a uma velocidade constante percorre “às cegas” (isto é, sem ter visão da pista) uma distância proporcional ao tempo gasto ao olhar para o celular durante a digitação da mensagem. Considere que isso de fato aconteça. Suponha que dois motoristas (_X_ e _Y_) dirigem com a mesma velocidade constante e digitam a mesma mensagem em seus celulares. Suponha, ainda, que o tempo gasto pelo motorista _X_ olhando para seu celular enquanto digita a mensagem corresponde a 25% do tempo gasto pelo motorista _Y_ para executar a mesma tarefa.

Disponível em: http://g1.globo.com. Acesso em: 21 jul. 2012 (adaptado).

A razão entre as distâncias percorridas às cegas por X e Y, nessa ordem, é igual a', '2', 'medio', NULL),
  (2172, 1, 'Ao ser divulgado esse resultado em jornal, o Gráfico 1 foi cortado durante a diagramação, como mostra o Gráfico 2.

Apesar de os valores apresentados estarem corretos e a largura das colunas ser a mesma, muitos leitores criticaram o formato do Gráfico 2 impresso no jornal, alegando que houve prejuízo visual para o candidato B.

A diferença entre as razões da altura da coluna B pela coluna A nos gráficos 1 e 2 é', '2', 'medio', '["https://enem.dev/2017/questions/165/c4d1bd98-124e-4136-9db8-7df0ddc7fdde.png","https://enem.dev/2017/questions/165/6200b8f9-1e5e-46a5-8516-7e24a6a79bd8.png"]'),
  (2173, 1, 'A função P(t) obtida, por este cientista, ao analisar o caso específico foi', '2', 'medio', '["https://enem.dev/2017/questions/166/41a14ec3-8c43-4dc3-b116-be74098827c0.png"]'),
  (2174, 1, 'Para atingir todos os seus objetivos, o chefe deverá cortar a calota do melão numa altura h, em centímetro, igual a', '2', 'medio', '["https://enem.dev/2017/questions/167/7bf9f382-d44e-49aa-b785-8f24191c1fb5.png"]'),
  (2175, 1, 'Qual a medida da altura H, em metro, indicada na Figura 2?', '2', 'medio', '["https://enem.dev/2017/questions/168/24aef861-9c64-4357-ab76-d58d4bf20931.png"]'),
  (2176, 1, 'Analisando os gráficos do computador, a maior taxa de aumento no tempo de acesso, da sexta-feira para o sábado, foi no site', '2', 'medio', '["https://enem.dev/2017/questions/169/2a8f5ab3-e6e4-4457-8cb4-1fefac4ab935.png"]'),
  (2177, 1, 'Neste modelo de termômetro, os filetes na cor preta registram as temperaturas mínima e máxima do dia anterior e os filetes na cor cinza registram a temperatura ambiente atual, ou seja, no momento da leitura do termômetro.

Por isso ele tem duas colunas. Na da esquerda, os números estão em ordem crescente, de cima para baixo, de -30 °C até 50 °C. Na coluna da direita, os números estão ordenados de forma crescente, de baixo para cima, de -30 °C até 50 °C.

A leitura é feita da seguinte maneira:  
• a temperatura mínima é indicada pelo nível inferior do filete preto na coluna da esquerda;  
• a temperatura máxima é indicada pelo nível inferior do filete preto na coluna da direita;  
• a temperatura atual é indicada pelo nível superior dos filetes cinza nas duas colunas.

Disponível em: www.if.ufrgs.br. Acesso em: 28 ago. 2014 (adaptado).

Qual é a temperatura máxima mais aproximada registrada nesse termômetro?', '2', 'medio', '["https://enem.dev/2017/questions/170/7264cbc1-0ae7-4f5d-976a-228c6d2e1184.png"]'),
  (2178, 1, 'Um pivô de três torres (T1, T2 e T3) será instalado em uma fazenda, sendo que as distâncias entre torres consecutivas bem como da base à torre T1 são iguais a 50 m. O fazendeiro pretende ajustar as velocidades das torres, de tal forma que o pivô efetue uma volta completa em 25 horas. Use 3 como aproximação para π.

Para atingir seu objetivo, as velocidades das torres T1, T2 e T3 devem ser, em metro por hora, de', '2', 'medio', '["https://enem.dev/2017/questions/171/3bb8824e-3a19-4855-a081-9cc594573f03.png"]'),
  (2179, 1, 'O número de horas em que os dois reservatórios contêm a mesma quantidade de água é', '2', 'medio', '["https://enem.dev/2017/questions/172/3cab013f-abdc-4a51-8c74-6c0771ab0c6e.png"]'),
  (2180, 1, 'Para uma temporada das corridas de Fórmula 1, a capacidade do tanque de combustível de cada carro passou a ser de 100 kg de gasolina. Uma equipe optou por utilizar uma gasolina com densidade de 750 gramas por litro, iniciando a corrida com o tanque cheio. Na primeira parada de reabastecimento, um carro dessa equipe apresentou um registro em seu computador de bordo acusando o consumo de quatro décimos da gasolina originalmente existente no tanque. Para minimizar o peso desse carro e garantir o término da corrida, a equipe de apoio reabasteceu o carro com a terça parte do que restou no tanque na chegada ao reabastecimento.

Disponível em: www.superdanilof1page.com.br. Acesso em: 6 jul. 2015 (adaptado).

A quantidade de gasolina utilizada, em litro, no reabastecimento foi', '2', 'medio', NULL),
  (2181, 1, 'IBGE. Pesquisa mensal de emprego. Disponível em: www.ibge.gov.br. Acesso em: 30 jul. 2012 (adaptado).

A mediana dessa taxa de desemprego, no período de março de 2008 a abril de 2009, foi de', '2', 'medio', '["https://enem.dev/2017/questions/174/8da9e00a-e25a-4467-8f2f-53488edb0a1f.png"]'),
  (2183, 1, 'A energia solar vai abastecer parte da demanda de energia do _campus_ de uma universidade brasileira. A instalação de painéis solares na área dos estacionamentos e na cobertura do hospital pediátrico será aproveitada nas instalações universitárias e também ligada na rede da companhia elétrica distribuidora de energia.  
O projeto inclui 100 m2 de painéis solares que ficarão instalados nos estacionamentos, produzindo energia elétrica e proporcionando sombra para os carros. Sobre o hospital pediátrico serão colocados aproximadamente 300 m2 de painéis, sendo 100 m2 para gerar energia elétrica utilizada no _campus_, e 200 m2 para geração de energia térmica, produzindo aquecimento de água utilizada nas caldeiras do hospital.  
Suponha que cada metro quadrado de painel solar para energia elétrica gere uma economia de 1 kWh por dia e cada metro quadrado produzindo energia térmica permita economizar 0,7 kWh por dia para a universidade. Em uma segunda fase do projeto, será aumentada em 75% a área coberta pelos painéis solares que geram energia elétrica. Nessa fase também deverá ser ampliada a área de cobertura com painéis para geração de energia térmica.

Disponível em: http://agenciabrasil.ebc.com.br. Acesso em: 30 out. 2013 (adaptado).

Para se obter o dobro da quantidade de energia economizada diariamente, em relação à primeira fase, a área total dos painéis que geram energia térmica, em metro quadrado, deverá ter o valor mais próximo de', '2', 'medio', NULL),
  (2184, 1, 'As letras do alfabeto, entre as 26 possíveis, bem como os dígitos, entre os 10 possíveis, podem se repetir em qualquer das opções.  
A empresa quer escolher uma opção de formato cujo número de senhas distintas possíveis seja superior ao número esperado de clientes, mas que esse número não seja superior ao dobro do número esperado de clientes.

A opção que mais se adequa às condições da empresa é', '2', 'medio', '["https://enem.dev/2017/questions/177/56a01150-592b-4611-8550-81876ca345ec.png"]'),
  (2185, 1, 'Se a quantidade de jogadores for 8, quantas partidas serão realizadas?', '2', 'medio', '["https://enem.dev/2017/questions/178/9f831180-9696-4e04-9744-29b02d88f8e8.png"]'),
  (2186, 1, 'Qual é a probabilidade de esse morador se atrasar para o serviço no dia para o qual foi dada a estimativa de chuva?', '2', 'medio', NULL),
  (2187, 1, 'O instante em que a água dessa piscina terminar de escoar completamente está compreendido entre', '2', 'medio', NULL),
  (2188, 1, 'O instante em que a água dessa piscina terminar de escoar completamente está compreendido entre', '2', 'medio', NULL),
  (2189, 1, 'Um contrato de empréstimo prevê que quando uma parcela é paga de forma antecipada, conceder-se-á uma redução de juros de acordo com o período de antecipação. Nesse caso, paga-se o valor presente, que é o valor, naquele momento, de uma quantia que deveria ser paga em uma data futura. Um valor presente _P_ submetido a juros compostos com taxa _i_, por um período de tempo _n_, produz um valor futuro _V_ determinado pela fórmula:

Em um contrato de empréstimo com sessenta parcelas fixas mensais, de R$820,00, a uma taxa de juros de 1,32% ao mês, junto com a trigésima parcela será paga antecipadamente uma outra parcela, desde que o desconto seja superior a 25% do valor da parcela.

Utilize 0,2877 como aproximação para In  e 0,0131 como aproximação para In (1,0132).

A primeira das parcelas que poderá ser antecipada junto com a 30ª é a', '2', 'medio', '["https://enem.dev/2018/questions/137/477c2dff-f10a-4655-bf0c-8a3babc99e12.png","https://enem.dev/2018/questions/137/2061f394-d117-48f8-a334-f76269a6c036.png"]'),
  (2190, 1, 'Um jogo pedagógico utiliza-se de uma interface algébrico-geométrica do seguinte modo: os alunos devem eliminar os pontos do plano cartesiano dando “tiros”, seguindo trajetórias que devem passar pelos pontos escolhidos. Para dar os tiros, o aluno deve escrever em uma janela do programa a equação cartesiana de uma reta ou de uma circunferência que passa pelos pontos e pela origem do sistema de coordenadas. Se o tiro for dado por meio da equação da circunferência, cada ponto diferente da origem que for atingido vale 2 pontos. Se o tiro for dado por meio da equação de uma reta, cada ponto diferente da origem que for atingido vale 1 ponto. Em uma situação de jogo, ainda restam os  seguintes pontos para serem eliminados: A(0 ; 4), 6(4 ; 4), C(4 ; 0), D(2 ; 2) e E(0; 2).

Passando pelo ponto A, qual equação forneceria a maior pontuação?', '2', 'medio', '["https://enem.dev/2018/questions/138/da8a254c-332c-4417-b998-1bde73398c79.png"]'),
  (2192, 1, 'A prefeitura de um pequeno município do interior decide colocar postes para  iluminação ao longo de uma estrada retilínea, que inicia em uma praça central e termina numa fazenda na zona rural. Como a praça já possui iluminação, o primeiro poste será colocado a 80 metros da praça, o segundo, a 100 metros, o terceiro, a 120 metros, e assim sucessivamente, mantendo-se sempre uma distância de vinte metros entre os postes, até que o último poste seja colocado a uma distância de 1 380 metros da praça.

Se a prefeitura pode pagar, no máximo, R$ 8 000,00 por poste colocado, o maior valor que poderá gastar com a colocação desses postes é', '2', 'medio', NULL),
  (2193, 1, 'Os tipos de prata normalmente vendidos são 975, 950 e 925. Essa classificação é feita de acordo com a sua pureza. Por exemplo, a prata 975 é a substância constituída de 975 partes de prata pura e 25 partes de cobre em 1 000 partes da substância. Já a prata 950 é constituída de 950 partes de prata pura e 50 de cobre em 1 000; e a prata 925 é constituída de 925 partes de prata pura e 75 partes de cobre em 1 000. Um ourives possui 10 gramas de prata 925 e deseja obter 40 gramas de prata 950 para produção de uma joia.

Nessas condições, quantos gramas de prata e de cobre, respectivamente, devem ser fundidos com os 10 gramas de prata 925?', '2', 'medio', NULL),
  (2194, 1, 'Em um aeroporto, os passageiros devem submeter suas bagagens a uma das cinco máquinas de raio-X disponíveis ao adentrarem a sala de embarque. Num dado instante, o tempo gasto por essas máquinas para escanear a bagagem de cada passageiro e o número de pessoas presentes em cada fila estão apresentados em um painel, como mostrado na figura.

Um passageiro, ao chegar à sala de embarque desse aeroporto no instante indicado, visando esperar o menor tempo possível, deverá se dirigir à máquina', '2', 'medio', '["https://enem.dev/2018/questions/144/c95def0f-e520-4774-9ff2-00ab5e8ab0c1.png"]'),
  (2195, 1, 'A Comissão Interna de Prevenção de Acidentes (CIPA) de uma empresa,  observando os altos custos com os frequentes acidentes de trabalho ocorridos, fez, a pedido da diretoria, uma pesquisa do número de acidentes sofridos por funcionários. Essa pesquisa, realizada com uma amostra de 100 funcionários, norteará as ações da empresa na política de segurança no trabalho.  
Os resultados obtidos estão no quadro.

A média do número de acidentes por funcionário na amostra que a CIPA apresentará à diretoria da empresa é', '2', 'medio', '["https://enem.dev/2018/questions/145/bc57dd00-a683-42ea-95a4-b3ffd7949f55.png"]'),
  (2197, 1, 'O colesterol total de uma pessoa é obtido pela soma da taxa do seu “colesterol bom” com a taxa do seu “colesterol ruim”. Os exames periódicos, realizados em um paciente adulto, apresentaram taxa normal de “colesterol bom”, porém, taxa do “colesterol ruim” (também chamado LDL) de 280 mg/dL. O quadro apresenta uma classificação de acordo com as taxas de LDL em adultos.

O paciente, seguindo as recomendações médicas sobre estilo de vida e alimentação, realizou o exame logo após o primeiro mês, e a taxa de LDL reduziu 25%. No mês seguinte, realizou novo exame e constatou uma redução de mais 20% na taxa de LDL.

De acordo com o resultado do segundo exame, a classificação da taxa de LDL do paciente é', '2', 'medio', '["https://enem.dev/2018/questions/147/38704883-6fae-4379-b321-b5d918656a3a.png"]'),
  (2199, 1, 'A inclinação de uma rampa é calculada da seguinte maneira: para cada metro medido na horizontal, mede-se x centímetros na vertical. Diz-se, nesse caso, que a rampa tem inclinação de x%, como no exemplo da figura:

A figura apresenta um projeto de uma rampa de acesso a uma garagem residencial cuja base, situada 2 metros abaixo do nível da rua, tem 8 metros de comprimento.

Depois de projetada a rampa, o responsável pela obra foi informado de que as normas técnicas do município onde ela está localizada exigem que a inclinação máxima de uma rampa de acesso a uma garagem residencial seja de 20%.  
Se a rampa projetada tiver inclinação superior a 20%, o nível da garagem deverá ser alterado para diminuir o percentual de inclinação, mantendo o comprimento da base da rampa.

Para atender às normas técnicas do município, o nível da garagem deverá ser', '2', 'medio', '["https://enem.dev/2018/questions/149/7cd35de7-0953-4f3c-81c7-91d49f3e2f05.png","https://enem.dev/2018/questions/149/f33abdb8-3adb-4c94-8a4f-6e477d249440.png"]'),
  (2200, 1, 'Para ganhar um prêmio, uma pessoa deverá retirar, sucessivamente e sem reposição, duas bolas pretas de uma mesma urna.  
Inicialmente, as quantidades e cores das bolas são como descritas a seguir:  
• Urna A – Possui três bolas brancas, duas bolas pretas e uma bola verde;  
• Urna B – Possui seis bolas brancas, três bolas pretas e uma bola verde;  
• Urna C – Possui duas bolas pretas e duas bolas verdes;  
• Urna D – Possui três bolas brancas e três bolas pretas.  
A pessoa deve escolher uma entre as cinco opções apresentadas:  
• Opção 1 – Retirar, aleatoriamente, duas bolas da urna A;  
• Opção 2 – Retirar, aleatoriamente, duas bolas da urna B;  
• Opção 3 – Passar, aleatoriamente, uma bola da urna C para a urna A; após isso, retirar, aleatoriamente, duas bolas da urna A;  
• Opção 4 – Passar, aleatoriamente, uma bola da urna D para a urna C; após isso, retirar, aleatoriamente, duas bolas da urna C;  
• Opção 5 – Passar, aleatoriamente, uma bola da urna C para a urna D; após isso, retirar, aleatoriamente, duas bolas da urna D.

Com o objetivo de obter a maior probabilidade possível de ganhar o prêmio, a pessoa deve escolher a opção', '2', 'medio', NULL),
  (2201, 1, 'A Ecofont possui _design_ baseado na velha fonte Vera Sans. Porém, ela tem um diferencial: pequenos buraquinhos circulares congruentes, e em todo o seu corpo, presentes em cada símbolo. Esses furos proporcionam um gasto de tinta menor na hora da impressão.

Suponha que a palavra ECO esteja escrita nessa fonte, com tamanho 192, e que seja composta por letras formadas por quadrados de lados x com furos circulares de raio  Para que a área a ser pintada seja reduzida a  da área inicial, pretende-se reduzir o tamanho da fonte. Sabe-se que, ao alterar o tamanho da fonte, o tamanho da letra é alterado na mesma proporção.

Nessas condições, o tamanho adequado da fonte será', '2', 'medio', '["https://enem.dev/2018/questions/151/e405bd59-e5e2-4ca8-885b-52cd9a249d2d.png","https://enem.dev/2018/questions/151/57de2d97-79b3-412f-b898-74d8da95dc5f.png","https://enem.dev/2018/questions/151/54cbb144-7f20-4ae7-aeb6-f1d179294f74.png"]'),
  (2203, 1, 'A figura mostra uma praça circular que contém um chafariz em seu centro e, em seu entorno, um passeio. Os círculos que definem a praça e o chafariz são concêntricos.

O passeio terá seu piso revestido com ladrilhos. Sem condições de calcular os raios, pois o chafariz está cheio, um engenheiro fez a seguinte medição: esticou uma trena tangente ao chafariz, medindo a distância entre dois pontos _A_ e _B_, conforme a figura. Com isso, obteve a medida do segmento de reta _AB_: 16 m.

Dispondo apenas dessa medida, o engenheiro calculou corretamente a medida da área do passeio, em metro quadrado.

A medida encontrada pelo engenheiro foi', '2', 'medio', '["https://enem.dev/2018/questions/153/222ea15d-d436-4e73-8297-5e4a490f851a.png","https://enem.dev/2018/questions/153/1d6e5ac1-393a-426c-95c0-c70622ddc252.png"]'),
  (2204, 1, 'Um _designer_ de jogos planeja um jogo que faz uso de um tabuleiro de dimensão  n x n, com no qual cada jogador, na sua vez, coloca uma peça sobre uma das casas vazias do tabuleiro. Quando uma peça é posicionada, a região formada pelas casas que estão na mesma linha ou coluna dessa peça é chamada de zona de combate dessa peça. Na figura está ilustrada a zona de combate de uma peça colocada em uma das casas de um tabuleiro de dimensão 8 x 8.

O tabuleiro deve ser dimensionado de forma que a probabilidade de se posicionar a segunda peça aleatoriamente, seguindo a regra do jogo, e esta ficar sobre a zona de combate da primeira, seja inferior a 

A dimensão mínima que o designer deve adotar para esse tabuleiro é', '2', 'medio', '["https://enem.dev/2018/questions/154/9362959c-1289-4dc6-b20f-48073903e287.png","https://enem.dev/2018/questions/154/0068d482-0227-4b01-b0d9-39e450ef5215.png","https://enem.dev/2018/questions/154/bbc3b943-e82f-4763-a5c5-058753ed2f88.png"]'),
  (2205, 1, 'O remo de assento deslizante é um esporte que faz uso de um barco e dois remos do mesmo tamanho. A figura mostra uma das posições de uma técnica chamada afastamento.

Nessa posição, os dois remos se encontram no ponto A e suas outras extremidades estão indicadas pelos pontos B e C. Esses três pontos formam um triângulo ABC cujo ângulo   tem medida de 170°.

O  tipo de triângulo com vértices nos pontos A, B e C, no momento em que o remador está nessa posição, é', '2', 'medio', '["https://enem.dev/2018/questions/155/f37e4605-4e3a-4335-beb3-c941cd9f8e05.png","https://enem.dev/2018/questions/155/8504e1af-d94a-4a73-96e9-f59d6b4fa9c4.png"]'),
  (2206, 1, 'Um rapaz estuda em uma escola que fica longe de sua casa, e por isso precisa utilizar o transporte público. Como é muito observador, todos os dias ele anota a hora exata (sem considerar os segundos) em que o ônibus passa pelo ponto de espera. Também notou que nunca consegue chegar ao ponto de ônibus antes de 6h 15 min da manhã. Analisando os dados coletados durante o mês de fevereiro, o  qual teve 21 dias letivos, ele concluiu que 6 h 21 min foi o que mais se repetiu, e que a mediana do conjunto de dados é 6 h 22 min.

A probabilidade de que, em algum dos dias letivos de fevereiro, esse rapaz tenha apanhado o ônibus antes de 6 h 21 min da manhã é, no máximo,', '2', 'medio', NULL),
  (2207, 1, 'Um mapa é a representação reduzida e simplificada de uma localidade. Essa redução, que é feita com o uso de uma escala, mantém a proporção do espaço representado em relação ao espaço real.  
Certo mapa tem escala 1 : 58 000 000.

Considere que, nesse mapa, o segmento de reta que liga o navio à marca do tesouro meça 7,6 cm.

A medida real, em quilômetro, desse segmento de reta é', '2', 'medio', '["https://enem.dev/2018/questions/157/4eb455e0-2c2e-46d3-83d6-d589c334a2c3.png"]'),
  (2208, 1, 'Um produtor de milho utiliza uma área de 160 hectares para as suas atividades agrícolas. Essa área é dividida em duas partes: uma de 40 hectares, com maior produtividade, e outra, de 120 hectares, com menor produtividade. A produtividade é dada pela razão entre a produção, em tonelada, e a área cultivada. Sabe-se que a área de 40 hectares tem produtividade igual a 2,5 vezes à  
da outra. Esse fazendeiro pretende aumentar sua produção total em 15%,  aumentando o tamanho da sua propriedade. Para tanto, pretende comprar uma parte de uma fazenda vizinha, que possui a mesma produtividade da parte de 120 hectares de suas terras.

Qual é a área mínima, em hectare, em que o produtor precisará comprar?', '2', 'medio', NULL),
  (2210, 1, 'De acordo com um relatório recente da Agência Internacional de Energia (AIE), o mercado de veículos elétricos atingiu um novo marco em 2016, quando foram vendidos mais de 750 mil automóveis da categoria. Com isso, o total de carros elétricos vendidos no mundo alcançou a marca de 2 milhões de unidades desde que os primeiros modelos começaram a ser comercializados em 2011. No Brasil, a expansão das vendas também se verifica. A marca A, por exemplo, expandiu suas vendas no ano de 2016, superando em 360 unidades as vendas de 2015, conforme representado no gráfico.

A média anual do número de carros vendidos pela marca A, nos anos representados no gráfico, foi de', '2', 'medio', '["https://enem.dev/2018/questions/160/f5d1ad10-fc7b-4607-8c40-c152182706dd.png"]'),
  (2211, 1, 'Para apagar os focos A e B de um incêndio, que estavam a uma distância de 30m um do outro, os bombeiros de um quartel decidiram se posicionar de modo que a distância de um bombeiro ao foco A, de temperatura mais elevada, fosse sempre o dobro da distância desse bombeiro ao foco B, de temperatura menos elevada.

Nestas condições, a maior distância, em metro, que dois bombeiros poderiam ter entre eles é', '2', 'medio', NULL),
  (2212, 1, 'Torneios de tênis, em geral, são disputados em sistema de eliminatória simples. Nesse sistema, são disputadas partidas entre dois competidores, com a eliminação do perdedor e promoção do vencedor para a fase seguinte. Dessa forma, se na 1ª fase o torneio conta com 2_n_ competidores, então na 2ª fase restarão _n_ competidores, e assim sucessivamente até a partida final.  
Em um torneio de tênis, disputado nesse sistema, participam 128 tenistas.

Para se definir o campeão desse torneio, o número de partidas necessárias é dado por', '2', 'medio', NULL),
  (2213, 1, 'O artigo 33 da lei brasileira sobre drogas prevê a pena de reclusão de 5 a 15 anos para qualquer pessoa que seja condenada por tráfico ilícito ou produção não autorizada de drogas. Entretanto, caso o condenado seja réu primário, com bons antecedentes criminais, essa pena pode sofrer uma redução de um sexto a dois terços.

Suponha que um réu primário, com bons antecedentes criminais, foi condenado pelo artigo 33 da lei brasileira sobre drogas.

Após o benefício da redução de pena, sua pena poderá variar de', '2', 'medio', NULL),
  (2214, 1, 'Um edifício tem a numeração dos andares iniciando no térreo (T), e continuando com primeiro, segundo, terceiro, …, até o último andar. Uma criança entrou no elevador e, tocando no painel, seguiu uma sequência de andares, parando, abrindo e fechando a porta em diversos andares. A partir de onde entrou a criança, o elevador subiu sete andares, em seguida desceu dez, desceu mais treze, subiu nove, desceu quatro e parou no quinto andar, finalizando a sequência. Considere que, no trajeto seguido pela criança, o elevador parou uma vez no último andar do edifício.

De acordo com as informações dadas, o último andar do edifício é o', '2', 'medio', NULL),
  (2216, 1, 'Os alunos da disciplina de estatística, em um curso universitário, realizam quatro avaliações por semestre com os pesos de 20%, 10%, 30% e 40%, respectivamente.  
No final do semestre, precisam obter uma média nas quatro avaliações de, no mínimo, 60 pontos para serem aprovados. Um estudante dessa disciplina obteve os seguintes pontos nas três primeiras avaliações: 46, 60 e 50, respectivamente.

O mínimo de pontos que esse estudante precisa obter na quarta avaliação para ser aprovado é', '2', 'medio', NULL),
  (2217, 1, 'O gerente do setor de recursos humanos de uma empresa está organizando uma avaliação em que uma das etapas é um jogo de perguntas e respostas. Para essa etapa, ele classificou as perguntas, pelo nível de dificuldade, em fácil, médio e difícil, e escreveu cada pergunta em cartões para colocação em uma urna.

Contudo, após depositar vinte perguntas de diferentes níveis na urna, ele observou que 25% delas eram de nível fácil. Querendo que as perguntas de nível fácil sejam a maioria, o gerente decidiu acrescentar mais perguntas de nível fácil à urna, de modo que a probabilidade de o primeiro participante retirar, aleatoriamente, uma pergunta de nível fácil seja de 75%.

Com essas informações, a quantidade de perguntas de nível fácil que o gerente deve acrescentar à urna é igual a', '2', 'medio', NULL),
  (2218, 1, 'A raiva é uma doença viral e infecciosa, transmitida por mamíferos. A campanha nacional de vacinação antirrábica tem o objetivo de controlar a circulação do vírus da raiva canina e felina, prevenindo a raiva humana. O gráfico mostra a cobertura (porcentagem de vacinados) da campanha, em cães, nos anos de 2013, 2015 e 2017, no município de Belo Horizonte, em Minas Gerais. Os valores das coberturas dos anos de 2014 e 2016 não estão informados no gráfico e deseja-se estimá-los. Para tal, levou-se em consideração que a variação na cobertura de vacinação da campanha antirrábica, nos períodos de 2013 a 2015 e de 2015 a 2017, deu-se de forma linear.

Qual teria sido a cobertura dessa campanha no ano de 2014?', '2', 'medio', '["https://enem.dev/2018/questions/168/cc2d3b70-86a9-4939-9193-7a240258c191.png"]'),
  (2219, 1, 'Uma empresa de comunicação tem a tarefa de elaborar um material publicitário de um estaleiro para divulgar um novo navio, equipado com um guindaste de 15m de altura e uma esteira de 90 m de comprimento. No desenho desse navio, a representação do guindaste deve ter sua altura entre 0,5 cm e 1 cm, enquanto a esteira deve apresentar comprimento superior a 4 cm. Todo o desenho deverá ser feito em uma escala 1 : X.

Os valores possíveis para X são, apenas,', '2', 'medio', NULL),
  (2220, 1, 'Em 2014 foi inaugurada a maior roda-gigante do mundo, a _High Roller_, situada em Las Vegas. A figura representa um esboço dessa roda-gigante, no qual o ponto A representa uma de suas cadeiras:

A partir da posição indicada, em que o segmento _OA_ se encontra paralelo ao plano do solo, rotaciona-se a _High Roller_ no sentido anti-horário, em torno do ponto _O_. Sejam _t_ o ângulo determinado pelo segmento _OA_ em relação à sua posição inicial, e _f_ a função que descreve a altura do ponto _A_, em relação ao solo, em função de _t_. Após duas voltas completas, _f_ tem o seguinte gráfico:

A expressão da função altura é dada por', '2', 'medio', '["https://enem.dev/2018/questions/170/b84e9f23-d18e-4f36-9917-643beaf719e3.png"]'),
  (2221, 1, 'A rosa dos ventos é uma figura que representa oito sentidos, que dividem o círculo em partes iguais.

Uma câmera de vigilância está fixada no teto de um shopping e sua lente pode ser direcionada remotamente, através de um controlador, para qualquer sentido. A lente da câmera está apontada inicialmente no sentido Oeste e o seu controlador efetua três mudanças consecutivas, a saber:  
• 1ª mudança: 135° no sentido anti-horário;  
• 2ª mudança: 60° no sentido horário;  
• 3ª mudança: 45° no sentido anti-horário.  
Após a 3ª mudança, ele é orientado a reposicionar a câmera, com a menor amplitude possível, no sentido Noroeste (_NO_) devido a um movimento suspeito de um cliente.

Qual mudança de sentido o controlador deve efetuar para reposicionar a câmera?', '2', 'medio', '["https://enem.dev/2018/questions/171/17c9e8b1-0b8b-49a5-80c9-d7b32e25a0b3.png"]'),
  (2222, 1, 'Na teoria das eleições, o Método de Borda sugere que, em vez de escolher um candidato, cada juiz deve criar um _ranking_ de sua preferência para os concorrentes (isto é, criar uma lista com a ordem de classificação dos concorrentes). A este ranking é associada uma pontuação: um ponto para o último colocado no _ranking_, dois pontos para o penúltimo, três para o antepenúltimo, e assim sucessivamente. Ao final, soma-se a pontuação atribuída a cada concorrente por cada um dos juízes.

Em uma escola houve um concurso de poesia no qual cinco alunos concorreram a um prêmio, sendo julgados por 25 juízes. Para a escolha da poesia vencedora foi utilizado o Método de Borda. Nos quadros, estão apresentados os _rankings_ dos juízes e a frequência de cada _ranking_.

A poesia vencedora foi a de', '2', 'medio', '["https://enem.dev/2018/questions/172/36a8ea01-988a-4748-8a82-5c9a2607cbdb.png"]'),
  (2224, 1, 'Com o avanço em ciência da computação, estamos próximos do momento em que o número de transistores no processador de um computador pessoal será da mesma ordem de grandeza que o número de neurônios em um cérebro humano, que é da ordem de 100 bilhões.  
Uma das grandezas determinantes para o desempenho de um processador é a densidade de transistores, que é o número de transistores por centímetro quadrado. Em 1986, uma empresa fabricava um processador contendo 100 000 transistores distribuídos em 0,25 cm² de área. Desde então, o número de transistores por centímetro quadrado que se pode colocar em um processador dobra a cada dois anos (Lei de Moore).

Disponível em: www.pocket-lint.com. Acesso em: 1 dez. 2017 (adaptado).

Considere 0,30 como aproximação para 
Em que ano a empresa atingiu ou atingirá a densidade de 100 bilhões de transistores?', '2', 'medio', NULL),
  (2225, 1, 'Uma loja vende automóveis em N parcelas iguais sem juros. No momento de contratar o financiamento, caso o cliente queira aumentar o prazo, acrescentando mais 5 parcelas, o valor de cada uma das parcelas diminui R$200,00, ou se ele quiser diminuir o prazo, com 4 parcelas a menos, o valor de cada uma das parcelas sobe R$ 232,00. Considere ainda que, nas três possibilidades de pagamento, o valor do automóvel é o mesmo, todas são sem juros e não ê dado desconto em nenhuma das situações.

Nessas condições, qual é a quantidade N de parcelas a serem pagas de acordo com a proposta inicial da loja?', '2', 'medio', NULL),
  (2226, 1, 'O salto ornamental é um esporte em que cada competidor realiza seis saltos. A nota em cada salto é calculada pela soma das notas dos juízes, multiplicada pela nota de partida (o grau de dificuldade de cada salto). Fica em primeiro lugar o atleta que obtiver a maior soma das seis notas recebidas.  
O atleta 10 irá realizar o último salto da final. Ele observa no Quadro 1, antes de executar o salto, o recorte do quadro parcial de notas com a sua classificação e a dos três primeiros lugares atê aquele momento.

Ele precisa decidir com seu treinador qual salto deverá realizar. Os dados dos possíveis tipos de salto estão no Quadro 2.

O atleta optará pelo salto com a maior probabilidade de obter a nota estimada, de maneira que lhe permita alcançar o primeiro lugar.

Considerando essas condições, o salto que o atleta deverá escolher é o de tipo', '2', 'medio', '["https://enem.dev/2018/questions/176/858eaa5e-d8db-41d2-b16e-b2a312bb6f29.png","https://enem.dev/2018/questions/176/404191f9-8cdb-4a30-80b6-b7d08af2d364.png"]'),
  (2227, 1, 'Devido ao não cumprimento das metas definidas para a campanha de vacinação contra a gripe comum e o vírus H1N1 em um ano, o Ministério da Saúde anunciou a prorrogação da campanha por mais uma semana. A tabela apresenta as quantidades de pessoas vacinadas dentre os cinco grupos de risco até a data de início da prorrogação da campanha

Qual é a porcentagem do total de pessoas desses grupos de risco já vacinadas?', '2', 'medio', '["https://enem.dev/2018/questions/177/386a9f9b-dd80-4081-9bde-da2ac43d1940.png"]'),
  (2228, 1, 'Durante uma festa de colégio, um grupo de alunos organizou uma rifa. Oitenta alunos faltaram à festa e não participaram da rifa. Entre os que compareceram, alguns compraram três bilhetes, 45 compraram 2 bilhetes, e muitos compraram apenas um. O total de alunos que comprou um único bilhete era 20% do número total de bilhetes vendidos, e o total de bilhetes vendidos excedeu em 33 o número total de alunos do colégio.

Quantos alunos compraram somente um bilhete?', '2', 'medio', NULL),
  (2233, 1, 'A _Hydrangea macrophyila_ é uma planta com flor azul ou cor-de-rosa, dependendo do pH do solo no qual está plantada. Em solo ácido (ou seja, com pH < 7) a flor é azul, enquanto que em solo alcalino (ou seja, com pH > 7) a flor é rosa. Considere que a _Hydrangea_ cor-de-rosa mais valorizada comercialmente numa determinada região seja aquela produzida em solo com pH inferior a 8.

Sabe-se que pH = – log10x, em que x é a concentração de íon hidrogênio (H+).

Para produzir a Hydrangea cor-de-rosa de maior valor comercial, deve-se preparar o solo de modo que x assuma', '2', 'medio', NULL),
  (2234, 1, 'Uma pessoa, que perdeu um objeto pessoal quando visitou uma cidade, pretende divulgar nos meios de comunicação informações a respeito da perda desse objeto e de seu contato para eventual devolução. No entanto, ela lembra que, de acordo com o Art. 1 234 do Código Civil, poderá ter que pagar pelas despesas do transporte desse objeto até sua cidade e poderá ter que recompensar a pessoa que lhe restituir o objeto em, pelo menos, 5% do valor do objeto.

Ela sabe que o custo com transporte será de um quinto do valor atual do objeto e, como ela tem muito interesse em reavê-lo, pretende ofertar o maior percentual possível de recompensa, desde que o gasto total com as despesas não ultrapasse o valor atual do objeto.

Nessas condições, o percentual sobre o valor do objeto, dado como recompensa, que ela deverá ofertar é igual a', '2', 'medio', NULL),
  (2236, 1, 'A gripe é uma infecção respiratória aguda de curtaduração causada pelo vírus influenza. Ao entrar no nosso organismo pelo nariz, esse vírus multiplica-se, disseminando-se para a garganta e demais partes das vias respiratórias, incluindo os pulmões. O vírus influenza é uma partícula esférica que tem um diâmetro interno de 0,00011 mm.

_Disponível em: www.gripenet.pt._

_Acesso em: 2 nov. 2013 (adaptado)._

Em notação científica, o diâmetro interno do vírus influenza, em mm, é', '2', 'medio', NULL),
  (2237, 1, 'Em um condomínio, uma área pavimentada, que tem a forma de um círculo com diâmetro medindo 6m, é cercado por grama. A administração do condomínio deseja ampliar essa área, mantendo seu formato circular, e aumentando, em 8m, o diâmetro dessa região, mantendo o revestimento da parte já existente. O condomínio dispõe, em estoque, de material suficiente para pavimentar mais 100 m² de área.

O síndico do condomínio irá avaliar se esse material disponível será suficiente para pavimentar a região a ser ampliada.

Utilize 3 como aproximação para π.

A conclusão correta a que o síndico deverá chegar, considerando a nova área a ser pavimentada, é a de que o material disponível em estoque:', '2', 'medio', NULL),
  (2238, 1, 'Os exercícios físicos são recomendados para o bom funcionamento do organismo, pois aceleram o metabolismo e, em consequência, elevam o consumo de calorias. No gráfico, estão registrados os valores calóricos, em kcal, gastos em cinco diferentes atividades físicas, em função do tempo dedicado às atividades, contado em minuto.

Qual dessas atividades físicas proporciona o maior consumo de quilocalorias por minuto?', '2', 'medio', '["https://enem.dev/2019/questions/143/ef507c14-34a0-479e-a532-193bf38c48ba.png"]'),
  (2239, 1, 'Um professor aplica, durante os cinco dias úteis de uma semana, testes com quatro questões de múltipla escolha a cinco alunos. Os resultados foram representados na matriz.

Nessa matriz os elementos das linhas de 1 a 5 representam as quantidades de questões acertadas pelos alunos Ana, Bruno, Carlos, Denis e Érica, respectivamente, enquanto que as colunas de 1 a 5 indicam os dias da semana, de segunda-feira a sexta-feira, respectivamente, em que os testes foram aplicados.

O teste que apresentou maior quantidade de acertos foi o aplicado na', '2', 'medio', '["https://enem.dev/2019/questions/144/258eca74-8b97-4a70-8abd-c6fb7b964db4.png"]'),
  (2240, 1, 'Um ciclista quer montar um sistema de marchas usando dois discos dentados na parte traseira de sua bicicleta, chamados catracas. A coroa é o disco dentado que é movimentado pelos pedais da bicicleta, sendo que a corrente transmite esse movimento às catracas, que ficam posicionadas na roda traseira da bicicleta.

As diferentes marchas ficam definidas pelos diferentes diâmetros das catracas, que são medidos conforme indicação na figura.

O ciclista já dispõe de uma catraca com 7 cm de diâmetro e pretende incluir uma segunda catraca, de modo que, à medida em que a corrente passe por ela, a bicicleta avance 50% a mais do que avançaria se a corrente passasse pela primeira catraca, a cada volta completa dos pedais.

O valor mais próximo da medida do diâmetro da segunda catraca, em centímetro e com uma casa decimal, é', '2', 'medio', '["https://enem.dev/2019/questions/145/a77a3c83-584a-4cb5-b194-9c6f84d84c26.png"]'),
  (2241, 1, 'O serviço de meteorologia de uma cidade emite relatórios diários com a previsão do tempo. De posse dessas informações, a prefeitura emite três tipos de alertas para a população:

• Alerta cinza: deverá ser emitido sempre que a previsão do tempo estimar que a temperatura será

inferior a 10 °C, e a umidade relativa do ar for inferior a 40%;

• Alerta laranja: deverá ser emitido sempre que a previsão do tempo estimar que a temperatura deve

variar entre 35 °C e 40 °C, e a umidade relativa do ar deve ficar abaixo de 30%;

• Alerta vermelho: deverá ser emitido sempre que a previsão do tempo estimar que a temperatura será superior a 40 ºC, e a umidade relativa do ar for inferior a 25%.

Um resumo da previsão do tempo nessa cidade, para um período de 15 dias, foi apresentado no gráfico.

Decorridos os 15 dias de validade desse relatório, um funcionário percebeu que, no período a que se refere o gráfico, foram emitidos os seguintes alertas:

• Dia 1: alerta cinza;

• Dia 12: alerta laranja;

• Dia 13: alerta vermelho.

Em qual(is) desses dias o(s) aviso(s) foi(ram) emitido(s) corretamente?', '2', 'medio', NULL),
  (2242, 1, 'Uma administração municipal encomendou a pintura de dez placas de sinalização para colocar em seu patio de estacionamento.

O profissional contratado para o serviço inicial pintará o fundo de dez placas e cobrará um valor de acordo com a área total dessas placas. O formato de cada placa é um círculo de diâmetro d = 40 cm, que tangencia lados de um retângulo, sendo que o comprimento total da placa é h = 60 cm, conforme lustrado na figura. Use 3,14 como aproximação para π.

Qual é a soma das medidas das áreas, em centímetros quadrados, das dez placas?', '2', 'medio', '["https://enem.dev/2019/questions/147/c3302516-c198-425d-8d43-43cc3b344a8c.png"]'),
  (2243, 1, 'O rótulo da embalagem de um cosmético informa que a dissolução de seu conteúdo, de acordo com suas especificações, rende 2,7 litros desse produto pronto para o uso. Uma pessoa será submetida a um tratamento estético em que deverá tomar um banho de imersão com esse produto numa banheira com capacidade de 0,3 m³.

Para evitar o transbordamento, essa banheira será preenchida em 80% de sua capacidade.

Para esse banho, o número mínimo de embalagens desse cosmético é', '2', 'medio', NULL),
  (2244, 1, 'O _slogan_ “Se beber não dirija”, muito utilizado em campanhas publicitárias no Brasil, chama a atenção para o grave problema da ingestão de bebida alcoólica por motoristas e suas consequências para o trânsito. A gravidade desse problema pode ser percebida observando como o assunto é tratado pelo Código de Trânsito Brasileiro. Em 2013, a quantidade máxima de álcool permitida no sangue do condutor de um veículo, que já era pequena, foi reduzida, e o valor da multa para motoristas alcoolizados foi aumentado. Em consequência dessas mudanças, observou-se queda no número de acidentes registrados em uma suposta rodovia nos anos que se seguiram às mudanças implantadas em 2013, conforme dados no quadro.

Suponha que a tendência de redução no número de acidentes nessa rodovia para os anos subsequentes seja igual à redução absoluta observada de 2014 para 2015.

Com base na situação apresentada, o número de acidentes esperados nessa rodovia em 2018 foi de', '2', 'medio', '["https://enem.dev/2019/questions/149/a18bc8fd-0b53-499d-a163-89abcc439a57.png"]'),
  (2245, 1, 'Uma pessoa se interessou em adquirir um produto anunciado em uma loja. Negociou com o gerente e conseguiu comprá-lo a uma taxa de juros compostos de 1% ao mês.  
O primeiro pagamento será um mês após a aquisição do produto, e no valor de R$ 202,00. O segundo pagamento será efetuado um mês após o primeiro, e terá o valor de R$ 204,02.  
Para concretizar a compra, o gerente emitirá uma nota fiscal com o valor do produto à vista negociado com o cliente, correspondendo ao financiamento aprovado.

O valor à vista, em real, que deverá constar na nota fiscal é de', '2', 'medio', NULL),
  (2246, 1, 'Três sócios resolveram fundar uma fábrica. O investimento inicial foi de R$ 1 000 000,00. E, independentemente do valor que cada um investiu nesse primeiro momento, resolveram considerar que cada um deles contribuiu com um terço do investimento inicial.

Algum tempo depois, um quarto sócio entrou para a sociedade, e os quatro, juntos, investiram mais R$ 800 000,00 na fábrica. Cada um deles contribuiu com um quarto desse valor. Quando venderam a fábrica, nenhum outro investimento havia sido feito. Os sócios decidiram então dividir o montante de R$ 1 800 000,00 obtido com a venda, de modo proporcional à quantia total investida por cada sócio.

Quais os valores mais próximos, em porcentagens, correspondentes às parcelas financeiras que cada um dos més sócios iniciais e o quarto sócio, respectivamente, receberam?', '2', 'medio', NULL),
  (2247, 1, 'Para contratar três máquinas que farão o reparo de vias rurais de um município, a prefeitura elaborou um edital que, entre outras cláusulas, previa:

• Cada empresa interessada só pode cadastrar uma única máquina para concorrer ao edital;

• O total de recursos destinados para contratar o conjunto das três máquinas é de R$ 31 000,00;

• O valor a ser pago a cada empresa será inversamente proporcional à idade de uso da máquina cadastrada pela empresa para o presente edital.

As três empresas vencedoras do edital cadastraram máquinas com 2, 3 e 5 anos de idade de uso.

Quanto receberá a empresa que cadastrou a máquina com maior idade de uso?', '2', 'medio', NULL),
  (2248, 1, 'Segundo o Instituto Brasileiro de Geografia e Estatística (IBGE), o rendimento médio mensal dos trabalhadores brasileiros, no ano 2000, era de R$ 1.250,00. Já o Censo 2010 mostrou que, em 2010, esse valor teve um aumento de 7,2% em relação a 2000. Esse mesmo instituto projeta que, em 2020, o rendimento médio mensal dos trabalhadores brasileiros poderá ser 10% maior do que foi em 2010.

_IBGE. Censo 2010_. **Disponível em:** www.ibge.gov.br. Acesso em: 13 ago. 2012 (adaptado).

Supondo que as projeções do IBGE se realizem, o rendimento médio mensal dos brasileiros em 2020 será de', '2', 'medio', NULL),
  (2249, 1, 'Charles Richter e Beno Gutenberg desenvolveram a escala Richter, que mede a magnitude de um terremoto.  
Essa escala pode variar de 0 a 10, com possibilidades de valores maiores.

O quadro mostra a escala de magnitude local (Ms) de um terremoto que é utilizada para descrevê-lo.

Para se calcular a magnitude local, usa-se a fórmula Ms = 3,30 + log(A.f), em que A representa a amplitude máxima da onda registrada por um sismógrafo em micrômetro (um) e f representa a frequência da onda, em hertz (Hz).

Ocorreu um terremoto com amplitude máxima de 2 000 μm e frequência de 0,2 Hz.

**Disponivel em:** http://cejarj.cecierj.edu.br. Acesso em: 1 fev. 2015 (adaptado).

Utilize 0,3 como aproximação para log 2. De acordo com os dados fornecidos, o terremoto ocorrido pode ser descrito como', '2', 'medio', '["https://enem.dev/2019/questions/154/1532ad8f-b399-4a11-8717-06b7620d0082.jpg"]'),
  (2250, 1, 'Após o Fórum Nacional Contra a Pirataria (FNCP) incluir a linha de autopeças em campanha veiculada

contra a falsificação, as agências fiscalizadoras divulgaram que os cinco principais produtos de autopeças falsificados são: rolamento, pastilha de freio, caixa de direção, catalisador e amortecedor.

**Disponível em:** www.oficinabrasil.com.br. Acesso em: 25 ago. 2014 (adaptado).

Após uma grande apreensão, as peças falsas foram cadastradas utilizando-se a codificação

1: rolamento, 2: pastilha de freio, 3: caixa de direção, 4: catalisador e 5: amortecedor.

Ao final obteve-se a sequência; 5, 4, 3, 2, 1, 2, 3, 4, 5, 4, 3, 2, 1, 2, 3, 4, 5, 4, 3, 2, 1, 2, 3, 4,… que apresenta um padrão de formação que consiste na repetição de um bloco de números.

Essa sequência descreve a ordem em que os produtos apreendidos foram cadastrados.

O 2.015º. item cadastrado foi um(a)', '2', 'medio', NULL),
  (2251, 1, 'Durante suas férias, oito amigos, dos quais dois são canhotos, decidem realizar um torneio de vôlei de praia.

Eles precisam formar quatro duplas para a realização do torneio. Nenhuma dupla pode ser formada por dois jogadores canhotos.

De quantas maneiras diferentes podem ser formadas essas quatro duplas?', '2', 'medio', NULL),
  (2252, 1, 'As luminárias para um laboratório de matemática serão fabricadas em forma de sólidos geométricos.  
Uma delas terá a forma de um tetraedro truncado. Esse sólido é gerado a partir de secções paralelas a cada uma das faces de um tetraedro regular. Para essa luminária, as secções serão feitas de maneira que, em cada corte, um terço das arestas seccionadas serão removidas. Uma dessas secções está indicada na figura.

Essa luminária terá por faces', '2', 'medio', '["https://enem.dev/2019/questions/157/e0eaf50b-03c5-42bc-832c-97f1431e7887.jpg"]'),
  (2253, 1, 'Comum em lançamentos de empreendimentos imobiliários, as maquetes de condomínios funcionam como uma ótima ferramenta de marketing para as construtoras, pois, além de encantar clientes, auxiliam de maneira significativa os corretores na negociação e venda de imóveis.

Um condomínio está sendo lançado em um novo bairro de uma cidade. Na maquete projetada pela construtora, em escala de 1 : 200, existe um reservatório de água com capacidade de 45 cm³.

Quando todas as famílias estiverem residindo no condomínio, a estimativa é que, por dia, sejam consumidos 30.000 litros de água.

Em uma eventual falta de água, o reservatório cheio será suficiente para abastecer o condomínio por quantos dias?', '2', 'medio', NULL),
  (2254, 1, 'O dono de um restaurante situado às margens de uma rodovia percebeu que, ao colocar uma placa de propaganda de seu restaurante ao longo da rodovia, as vendas aumentaram. Pesquisou junto aos seus clientes e concluiu que a probabilidade de um motorista perceber uma placa de anúncio é 1/2.

Com isso, após autorização do órgão competente, decidiu instalar novas placas com anúncios de seu restaurante ao longo dessa rodovia, de maneira que a probabilidade de um motorista perceber pelo menos uma das placas instaladas fosse superior a 99/100.

A quantidade mínima de novas placas de propaganda a serem instaladas é', '2', 'medio', NULL),
  (2255, 1, 'O preparador físico de um time de basquete dispõe de um plantel de 20 jogadores, com média de altura igual a 1,80 m.  
No último treino antes da estreia em um campeonato, um dos jogadores desfalcou o time em razão de uma séria contusão, forçando o técnico a contratar outro jogador para recompor o grupo.

Se o novo jogador é 0,20 m mais baixo que o anterior, qual é a média de altura, em metro, do novo grupo?', '2', 'medio', NULL),
  (2256, 1, 'Em uma fábrica de refrigerantes, é necessário que se faça periodicamente o controle no processo de engarrafamento para evitar que sejam envasadas garrafas fora da especificação do volume escrito no rótulo.

Diariamente, durante 60 dias, foram anotadas as quantidades de garrafas fora dessas especificações. O resultado está apresentado no quadro.

A média diária de garrafas fora das especificações no período considerado é', '2', 'medio', '["https://enem.dev/2019/questions/161/c315e1f9-d185-4689-9452-7113ed739e0e.jpg"]'),
  (2257, 1, 'O Sistema Métrico Decimal é o mais utilizado atualmente para medir comprimentos e distâncias. Em algumas atividades, porém, é possível observar a utilização de diferentes unidades de medida.  
Um exemplo disso pode ser observado no quadro.

Assim, um pé, em polegada, equivale a', '2', 'medio', '["https://enem.dev/2019/questions/162/7c72d0de-cba7-453f-8334-dc9e95644073.png"]'),
  (2258, 1, 'O Índice de Desenvolvimento Humano (IDH) é uma medida usada para classificar os países pelo seu grau de desenvolvimento.  
Para seu cálculo, são levados em consideração a expectativa de vida ao nascer, tempo de escolaridade e renda per capita, entre outros.

O menor valor deste índice é zero e o maior é um. Cinco países foram avaliados e obtiveram os seguintes índices de desenvolvimento humano: o primeiro país recebeu um valor X, o segundo ​​​, o terceiro ​​​​, o quarto X² e o último X³. Nenhum desses países zerou ou atingiu o índice máximo.

Qual desses países obteve o maior IDH?', '2', 'medio', '["https://enem.dev/2019/questions/163/5bbf1fd4-c033-4134-8879-76ee2327342c.jpg","https://enem.dev/2019/questions/163/a47ac92d-ef25-4d00-a920-4e6be1bddae8.jpg"]'),
  (2259, 1, 'Um mestre de obras deseja fazer uma laje com espessura de 5 cm utilizando concreto usinado, conforme as dimensões do projeto dadas na figura. O concreto para fazer a laje será fornecido por uma usina que utiliza caminhões com capacidades máximas de 2m³, 5m³ e 10m³ de concreto.

Qual a menor quantidade de caminhões, utilizando suas capacidades máximas, que o mestre de obras deverá pedir à usina de concreto para fazer a laje?', '2', 'medio', '["https://enem.dev/2019/questions/164/ed128607-487b-4154-8a1b-3cc1bcc02a35.jpg"]'),
  (2261, 1, 'Construir figuras de diversos tipos, apenas dobrando e cortando papel, sem cola e sem tesoura, é a arte do _origami_ (_ori_ = dobrar; _kami_ = papel), que tem um significado altamente simbólico no Japão.

A base do _origami_ é o conhecimento do mundo por base do tato. Uma jovem resolveu construir um cisne usando técnica do _origami_, utilizando uma folha de papel de 18 cm por 12 cm.

Assim, começou por dobrar a folha conforme a figura.

Após essa primeira dobradura, a medida do segmento AE é', '2', 'medio', '["https://enem.dev/2019/questions/166/3133b67a-fdb3-4ce8-8371-67b7a04d89e4.png"]'),
  (2262, 1, 'Os alunos de uma turma escolar foram divididos em dois grupos. Um grupo jogaria basquete, enquanto o outro jogaria futebol.

Sabe-se que o grupo de basquete é formado pelos alunos mais altos da classe e tem uma pessoa a mais do que o grupo de futebol.

A tabela seguinte apresenta informações sobre as alturas dos alunos da turma.

Os alunos P, J, F e M medem, respectivamente, 1,65m, 1,66m, 1,67m e 1,68m, e as suas alturas não são iguais a de nenhum outro colega da sala.

Segundo essas informações, argumenta-se que os alunos P, J, F e M jogaram, respectivamente,', '2', 'medio', '["https://enem.dev/2019/questions/167/8df2118f-dc0e-4a87-9163-13821fa2e168.png"]'),
  (2263, 1, 'Uma empresa tem diversos funcionários. Um deles é o gerente, que recebe R$ 1000,00 por semana.  
Os outros funcionários são diaristas. Cada um trabalha 2 dias por semana, recebendo R$ 80,00 por dia trabalhado.

Chamando de X a quantidade total de funcionários da empresa, a quantia Y, em reais, que esta empresa gasta semanalmente para pagar seus funcionários é expressa por', '2', 'medio', NULL),
  (2264, 1, 'Um aplicativo de relacionamentos funciona da seguinte forma: o usuário cria um perfil com foto e informações pessoais, indica as características dos usuários com quem deseja estabelecer contato e determina um raio de abrangência a partir da sua localização. O aplicativo identifica as pessoas que se encaixam no perfil desejado e que estão a uma distância do usuário menor ou igual ao raio de abrangência. Caso dois usuários tenham perfis compatíveis e estejam numa região de abrangência comum a ambos, o aplicativo promove o contato entre os usuários, o que é chamado de _match_.

O usuário P define um raio de abrangência com medida de 3 km e busca ampliar a possibilidade de obter um _match_ se deslocando para a região central da cidade, que concentra um maior número de usuários. O gráfico ilustra alguns bares que o usuário P costuma frequentar para ativar o aplicativo, indicados por I, II, III, IV e V.

Sabe-se que os usuários Q, R e S, cujas posições estão descritas pelo gráfico, são compatíveis com o usuário P, e que estes definiram raios de abrangência respectivamente iguais a 3 km, 2 km e 5 km.

Com base no gráfico e nas afirmações anteriores, em qual bar o usuário P teria a possibilidade de um match com os usuários R, R e S, simultaneamente?', '2', 'medio', '["https://enem.dev/2019/questions/169/ff47c4f5-3e9b-42b5-adf5-40b08eb93a07.jpg"]'),
  (2265, 1, 'A bula de um antibiótico infantil, fabricado na forma de xarope, recomenda que sejam ministrados, diariamente, no máximo 500 mg desse medicamento para cada quilograma de massa do paciente. Um pediatra prescreveu a dosagem máxima desse antibiótico para ser ministrada diariamente a uma criança de 20 kg pelo período de 5 dias.

Esse medicamento pode ser comprado em frascos de 10 mL, 50 mL, 100 mL, 250 mL e 500 mL. Os pais dessa criança decidiram comprar a quantidade exata de medicamento que precisará ser ministrada no tratamento, evitando a sobra de medicamento.

Considere que 1 g desse medicamento ocupe um volume de 1 cm³.

A capacidade do frasco, em mililitro, que esses pais deverão comprar é', '2', 'medio', NULL),
  (2266, 1, 'Uma empresa confecciona e comercializa um brinquedo formado por uma locomotiva, pintada na cor preta, mais 12 vagões de iguais formato e tamanho, numerados de 1 a 12. Dos 12 vagões, 4 são pintados na cor vermelha, 3 na cor azul, 3 na cor verde e 2 na cor amarela. O trem é montado utilizando-se uma locomotiva e 12 vagões, ordenados crescentemente segundo suas  numerações, conforme ilustrado na figura.

De acordo com as possíveis variações nas colorações dos vagões, a quantidade de trens que podem ser montados, expressa por meio de combinações, é dada por', '2', 'medio', '["https://enem.dev/2019/questions/171/c821eb9f-30e3-4fe1-84e7-8522a706223d.png"]'),
  (2267, 1, 'O gráfico a seguir mostra a evolução mensal das vendas de certo produto de julho a novembro de 2011.

Sabe-se que o mês de julho foi o pior momento da empresa em 2011 e que o número de unidades vendidas desse produto em dezembro de 2011 foi igual à média aritmética do número de unidades vendidas nos meses de julho a novembro do mesmo ano.

O gerente de vendas disse, em uma reunião da diretoria, que, se essa redução no número de unidades vendidas de novembro para dezembro de 2011 se mantivesse constante nos meses subsequentes, as vendas só voltariam a ficar piores que julho de 2011 apenas no final de 2012.

O diretor financeiro rebateu imediatamente esse argumento mostrando que, mantida a tendência, isso aconteceria já em', '2', 'medio', '["https://enem.dev/2019/questions/172/4edb5f3b-3acb-4c8a-8f39-bdd23d843061.png"]'),
  (2268, 1, 'Em um determinado ano, os computadores da receita federal de um país identificaram como inconsistentes 20% das declarações de imposto de renda que lhe foram encaminhadas.  
Uma declaração é classificada como inconsistente quando apresenta algum tipo de erro ou conflito nas informações prestadas. Essas declarações consideradas inconsistentes foram analisadas pelos auditores, que constataram que 25% delas eram fraudulentas.

Constatou-se, ainda, que, dentre as declarações que não apresentaram inconsistências, 6,25% eram fraudulentas.

Qual é a probabilidade de, nesse ano, a declaração de um contribuinte ser considerada inconsistente, dado que ela era fraudulenta?', '2', 'medio', NULL),
  (2269, 1, 'A taxa de urbanização de um município é dada pela razão entre a população urbana e a população total do município (isto é, a soma das populações rural e urbana).

Os gráficos apresentam, respectivamente, a população urbana e a população rural de cinco municípios (I, II, III, IV, V) de uma mesma região estadual. Em reunião entre o governo do estado e os prefeitos desses municípios, ficou acordado que o município com maior taxa de urbanização receberá um investimento extra em infraestrutura.

Segundo o acordo, qual município receberá o investimento extra?', '2', 'medio', '["https://enem.dev/2019/questions/174/0daf8f71-8278-440e-bd88-2dbf13acb2e0.png"]'),
  (2270, 1, 'Uma construtora pretende conectar um reservatório central (Rc) em formato de um cilindro, com raio interno igual a 2 m e altura interna igual a 3,30 m, a quatro reservatórios cilíndricos auxiliares (R1, R2, R3 e R4), os quais possuem raios internos e alturas internas medindo 1,5 m.

As ligações entre o reservatório central e os auxiliares são feitas por canos cilíndricos com 0,10 m de diâmetro interno e 20 m de comprimento, conectados próximos às bases de cada reservatório.  
Na conexão de cada um desses canos com o reservatório central ha registros que liberam ou interrompem o fluxo de água.

No momento em que o reservatório central está cheio e os auxiliares estão vazios, abrem-se os quatro registros e, após algum tempo, as alturas das colunas de água nos reservatórios se igualam, assim que cessa o fluxo de água entre eles, pelo princípio dos vasos comunicantes.

A medida, em metro, das alturas das colunas de água nos reservatórios auxiliares, após cessar o fluxo de água entre eles, é', '2', 'medio', '["https://enem.dev/2019/questions/175/6eeec785-2f50-4d22-b6da-0a4570b9f881.png"]'),
  (2271, 1, 'Para construir uma piscina, cuja área total da superfície interna é igual a 40 m², uma construtora apresentou o seguinte orçamento:

• R$ 10 000,00 pela elaboração do projeto;

• R$ 40 000,00 pelos custos fixos;

• R$ 2 500,00 por metro quadrado para construção da área interna da piscina.

Após a apresentação do orçamento, essa empresa decidiu reduzir o valor de elaboração do projeto em 50%, mas recalculou o valor do metro quadrado para a construção da área interna da piscina, concluindo haver a necessidade de aumentá-lo em 25%. Além disso, a construtora pretende dar um desconto nos custos fixos, de maneira que o novo valor do orçamento seja reduzido em 10% em relação ao total inicial.

O percentual de desconto que a construtora deverá conceder nos custos fixos é de', '2', 'medio', NULL),
  (2272, 1, 'Um grupo de engenheiros está projetando um motor cujo esquema de deslocamento vertical do pistão dentro da câmara de combustão esta representado na figura.

descreve como varia a altura h, medida em centímetro, da parte superior do pistão dentro da câmara de combustão, em função do tempo t, medido em segundo. Nas figuras estão indicadas as alturas do pistão em dois instantes distintos.

O valor do parâmetro β, que é dado por um número inteiro positivo, está relacionado com a velocidade de deslocamento do pistão. Para que o motor tenha uma boa potência, é necessário e suficiente que, em menos de 4 segundos após o início do funcionamento (instante t = 0), a altura da base do pistão alcance por três vezes o valor de 6 cm.

Para os cálculos, utilize 3 como aproximação para π.

O menor valor inteiro a ser atribuído ao parâmetro β, de forma que o motor a ser construído tenha boa potência, é', '2', 'medio', '["https://enem.dev/2019/questions/177/000e6ab5-5267-4411-a21d-3c05d89f2832.png"]'),
  (2273, 1, 'Um comerciante, que vende somente pastel, refrigerante em lata e caldo de cana em copos, fez um levantamento das vendas realizadas durante a semana. O resultado desse levantamento está apresentado no gráfico.

Ele estima que venderá, em cada dia da próxima semana, uma quantidade de refrigerante em lata igual à soma das quantidades de refrigerante em lata e caldo de cana em copos vendidas no respectivo dia da ultima semana.

Quanto aos pastéis, estima vender, a cada dia da próxima semana, uma quantidade igual à quantidade de refrigerante em lata que prevê vender em tal dia. Já para o número de caldo de cana em copos, estima que as vendas diárias serão iguais às da ultima semana.

Segundo essas estimativas, a quantidade a mais de pastéis que esse comerciante deve vender na próxima semana é', '2', 'medio', '["https://enem.dev/2019/questions/178/91a4ab56-2851-496f-9121-d38813d52781.png"]'),
  (2274, 1, 'Nos seis cômodos de uma casa há sensores de presença posicionados de forma que a luz de cada cômodo acende assim que uma pessoa nele adentra, e apaga assim que a pessoa se retira desse cômodo. Suponha que o acendimento e o desligamento sejam instantâneos.

O morador dessa casa visitou alguns desses cômodos, ficando exatamente um minuto em cada um deles. O gráfico descreve o consumo acumulado de energia, em watt x minuto, em função do tempo t, em minuto, das lâmpadas de LED dessa casa, enquanto a figura apresenta a planta baixa da casa, na qual os cômodos estão numerados de 1 a 6, com as potências das respectivas lâmpadas indicadas.

A sequência de deslocamento pelos cômodos, conforme o consumo de energia apresentado no gráfico, é', '2', 'medio', '["https://enem.dev/2019/questions/179/3c23edf9-5531-4ae5-b328-9b0a6b31fdc1.png"]'),
  (2275, 1, 'Um casal planejou uma viagem e definiu como teto para o gasto diário um valor de até R$ 1 000,00. Antes de decidir o destino da viagem, fizeram uma pesquisa sobre a taxa de câmbio vigente para as moedas de cinco países que desejavam visitar e também sobre as estimativas de gasto diário em cada um, com o objetivo de escolher o destino que apresentasse o menor custo diário em real.

O quadro mostra os resultados obtidos com a pesquisa realizada.

Nessas condições, qual será o destino escolhido para a viagem?', '2', 'medio', '["https://enem.dev/2019/questions/180/8813c78d-9c4b-4850-bbd4-f5591bd28537.png"]'),
  (2276, 1, 'Um casal planejou uma viagem e definiu como teto para o gasto diário um valor de até R$ 1 000,00. Antes de decidir o destino da viagem, fizeram uma pesquisa sobre a taxa de câmbio vigente para as moedas de cinco países que desejavam visitar e também sobre as estimativas de gasto diário em cada um, com o objetivo de escolher o destino que apresentasse o menor custo diário em real.

O quadro mostra os resultados obtidos com a pesquisa realizada.

Nessas condições, qual será o destino escolhido para a viagem?', '2', 'medio', '["https://enem.dev/2019/questions/180/8813c78d-9c4b-4850-bbd4-f5591bd28537.png"]'),
  (2277, 1, 'A fabricação da Bandeira Nacional deve obedecer ao descrito na Lei n. 5.700, de 1º de setembro de 1971, que trata dos Símbolos Nacionais. No artigo que se refere às dimensões da Bandeira, observa-se:

“Para cálculos das dimensões, será tomada por base a largura, dividindo-a em 14 (quatorze) partes iguais, sendo que cada uma das partes será considerada uma medida ou um módulo (M). Os demais requisitos dimensionais seguem o critério abaixo:

1.  Comprimento será de vinte módulos (20 M);
2.  A distância dos vértices do losango amarelo ao quadro externo será de um módulo e sete décimos (1,7 M);
3.  O raio do círculo azul no meio do losango amarelo será de três módulos e meio (3,5 M).”

BRASIL, Lei n. 5.700, de 1° de setembro de 1971. Disponível em: www.planalto.gov.br. Acesso em: 15 set. 2015.

A figura indica as cores da bandeira do Brasil e localiza o quadro externo a que se refere a Lei n. 5.700.

Um torcedor, preparando-se para a Copa do Mundo e dispondo de cortes de tecidos verde (180 cm x 150 cm) e  
amarelo (o quanto baste), deseja confeccionar a maior Bandeira Nacional possível a partir das medidas do tecido verde.

Qual a medida, em centímetro, do lado do menor quadrado de tecido azul que deverá ser comprado para confecção do círculo da bandeira desejada?', '2', 'medio', '["https://enem.dev/2020/questions/136/d4125f5f-361b-4d70-b868-340dde832d81.png"]'),
  (2279, 1, 'A caixa-d’água de um edifício terá a forma de um paralelepípedo retângulo reto com volume igual a 28 080 litros. Em uma maquete que representa o edifício, a caixa d’água tem dimensões 2 cm x 3,51 cm x 4 cm.

Dado: 1 dm3 = 1 L

A escala usada pelo arquiteto foi', '2', 'medio', NULL),
  (2280, 1, 'Os gráficos representam a produção de peças em uma indústria e as horas trabalhadas dos funcionários no período de cinco dias. Em cada dia, o gerente de produção aplica uma metodologia diferente de trabalho. Seu objetivo é avaliar a metodologia mais eficiente para utilizá-la como modelo nos próximos períodos. Sabe-se que, neste caso, quanto maior for a razão entre o número de peças produzidas e o número de horas trabalhadas, maior será a eficiência da metodologia.

Em qual dia foi aplicada a metodologia mais eficiente?', '2', 'medio', '["https://enem.dev/2020/questions/139/21679558-7757-4d62-8aa4-f22647acf6d6.png","https://enem.dev/2020/questions/139/f2008e36-2cc8-4d8e-8a86-89023b091a80.png"]'),
  (2281, 1, 'O proprietário de um apartamento decidiu instalar porcelanato no piso da sala. Essa sala tem formato retangular com 3,2 m de largura e 3,6 m de comprimento. As peças do porcelanato têm formato de um quadrado com lado medindo 80 cm. Esse porcelanato é vendido em dois tipos de caixas, com os preços indicados a seguir.

*   Caixas do tipo A: 4 unidades de piso, R$ 35,00;
*   Caixas do tipo B: 3 unidades de piso, R$ 27,00.

Na instalação do porcelanato, as peças podem ser recortadas e devem ser assentadas sem espaçamento entre elas, aproveitando-se ao máximo os recortes feitos.

A compra que atende às necessidades do proprietário, proporciona a menor sobra de pisos e resulta no menor preço é', '2', 'medio', NULL),
  (2282, 1, 'Um hotel de 3 andares está sendo construído. Cada andar terá 100 quartos. Os quartos serão numerados de 100 a 399 e cada um terá seu número afixado à porta. Cada número será composto por peças individuais, cada uma simbolizando um único algarismo.

Qual a quantidade mínima de peças, simbolizando o algarismo 2, necessárias para identificar o número de todos os quartos?', '2', 'medio', NULL),
  (2284, 1, 'No Brasil, o tempo necessário para um estudante realizar sua formação até a diplomação em um curso superior, considerando os 9 anos de ensino fundamental, os 3 anos do ensino médio e os 4 anos de graduação (tempo médio), é de 16 anos. No entanto, a realidade dos brasileiros mostra que o tempo médio de estudo de pessoas acima de 14 anos é ainda muito pequeno, conforme apresentado na tabela

Considere que o incremento no tempo de estudo, a cada período, para essas pessoas, se mantenha constante até o ano 2050, e que se pretenda chegar ao patamar de 70% do tempo necessário à obtenção do curso superior dado anteriormente.

O ano em que o tempo médio de estudo de pessoas acima de 14 anos atingirá o percentual pretendido será', '2', 'medio', '["https://enem.dev/2020/questions/143/044568f1-b210-4552-8a3f-f8caa97fa8db.png"]'),
  (2285, 1, 'Um clube deseja produzir miniaturas em escala do troféu que ganhou no último campeonato. O troféu está representado na Figura 1 e é composto por uma base em formato de um paralelepípedo reto-retângulo de madeira, sobre a qual estão fixadas três hastes verticais que sustentam uma esfera de 30 cm de diâmetro, que fica centralizada sobre a base de madeira. O troféu tem 100 cm de altura, incluída sua base.

A miniatura desse troféu deverá ser instalada no interior de uma caixa de vidro, em formato de paralelepípedo reto-retângulo, cujas dimensões internas de sua base estão indicadas na Figura 2, de modo que a base do troféu seja colada na base da caixa e distante das paredes laterais da caixa de vidro em pelo menos 1 cm. Deve ainda haver uma distância de exatos 2 cm entre o topo da esfera e a tampa dessa caixa de vidro. Nessas condições deseja-se fazer a maior miniatura possível.

A medida da altura, em centímetro, dessa caixa de vidro deverá ser igual a', '2', 'medio', '["https://enem.dev/2020/questions/145/e67a686b-079d-4129-b359-4e99d93e616e.png"]'),
  (2286, 1, 'Uma casa de dois andares está sendo projetada. É necessário incluir no projeto a construção de uma escada para o acesso ao segundo andar. Para o cálculo das dimensões dos degraus utilizam-se as regras:

2_h_ + _b_ — 63,5 ≤ 1,5 e 16 ≤ _h_ ≤ 19,

nas quais _h_ é a altura do degrau (denominada espelho) e _b_ é a profundidade da pisada, como mostra a figura. Por conveniência, escolheu-se a altura do degrau como sendo _h_ = 16. As unidades de _h_ e _b_ estão em centímetro.

Nesse caso, o mais amplo intervalo numérico ao qual a profundidade da pisada (b) deve pertencer, para que as regras sejam satisfeitas é', '2', 'medio', '["https://enem.dev/2020/questions/146/7b775aa4-0afa-4e70-b6d0-3a49cf66c41f.png"]'),
  (2288, 1, 'A Pesquisa Nacional por Amostra de Domicílios (Pnad) é uma pesquisa feita anualmente pelo IBGE, exceto nos anos em que há Censo. Em um ano, foram entrevistados 363 mil jovens para fazer um levantamento sobre suas atividades profissionais e/ou acadêmicas. Os resultados da pesquisa estão indicados no gráfico.

Disponível em: http://noticias.uol.com.br. Acesso em 20 ago. 2014.

De acordo com as informações dadas, o número de jovens entrevistados que trabalha é', '2', 'medio', '["https://enem.dev/2020/questions/148/c9d3a77b-08a1-449b-9aac-b59928d168ba.png"]'),
  (2290, 1, 'Uma das Sete Maravilhas do Mundo Moderno é o Templo de Kukulkán, localizado na cidade de Chichén Itzá, no México. Geometricamente, esse templo pode ser representado por um tronco reto de pirâmide de base quadrada.

As quantidades de cada tipo de figura plana que formam esse tronco de pirâmide são', '2', 'medio', NULL),
  (2291, 1, 'Para chegar à universidade, um estudante utiliza um metrô e, depois, tem duas opções:

*   seguir num ônibus, percorrendo 2,0 km;
*   alugar uma bicicleta, ao lado da estação do metrô, seguindo 3,0 km pela ciclovia.

O quadro fornece as velocidades médias do ônibus e da bicicleta, em km/h, no trajeto metrô-universidade.

A fim de poupar tempo no deslocamento para a universidade, em quais dias o aluno deve seguir pela ciclovia?', '2', 'medio', '["https://enem.dev/2020/questions/153/e577551e-7571-4872-83d0-5cecc4a4d79d.jpeg"]'),
  (2292, 1, 'Pesquisadores da Universidade de Tecnologia de Viena, na Áustria, produziram miniaturas de objetos em impressoras 3D de alta precisão. Ao serem ativadas, tais impressoras lançam feixes de laser sobre um tipo de resina, esculpindo o objeto desejado. O produto final da impressão é uma escultura microscópica de três dimensões, como visto na imagem ampliada.

A escultura apresentada é uma miniatura de um carro de Fórmula 1, com 100 micrômetros de comprimento. Um micrômetro é a milionésima parte de um metro.

Usando notação científica, qual é a representação do comprimento dessa miniatura, em metro?', '2', 'medio', '["https://enem.dev/2020/questions/154/6dd0ecd2-2d2d-4039-88e5-9f2728158724.png"]'),
  (2294, 1, 'O gerente de uma loja de cosméticos colocou à venda cinco diferentes tipos de perfume, tendo em estoque na loja as mesmas quantidades de cada um deles. O setor de controle de estoque encaminhou ao gerente registros gráficos descrevendo os preços unitários de cada perfume, em real, e a quantidade vendida de cada um deles, em percentual, ocorrida no mês de novembro.

Dados a chegada do final de ano e o aumento das vendas, a gerência pretende aumentar a quantidade estocada do perfume do tipo que gerou a maior arrecadação em espécie, em real, no mês de novembro.

Nessas condições, qual o tipo de perfume que deverá ter maior reposição no estoque?', '2', 'medio', '["https://enem.dev/2020/questions/156/8a18ed35-dc64-41c5-961c-a30d5064606f.png","https://enem.dev/2020/questions/156/0628f04c-0a96-4da1-877a-93da372b77e9.png"]'),
  (2296, 1, 'Três amigos, André, Bernardo e Carlos, moram em um condomínio fechado de uma cidade. O quadriculado representa a localização das ruas paralelas e perpendiculares, delimitando quadras de mesmo tamanho nesse condomínio, em que nos pontos A, B e C estão localizadas as casas de André, Bernardo e Carlos, respectivamente.

André deseja deslocar-se da sua casa até a casa de Bernardo, sem passar pela casa de Carlos, seguindo ao longo das ruas do condomínio, fazendo sempre deslocamentos para a direita (→) ou para cima (↑), segundo o esquema da figura.

O número de diferentes caminhos que André poderá utilizar para realizar o deslocamento nas condições propostas é', '2', 'medio', '["https://enem.dev/2020/questions/158/2acb1f87-4c3a-442e-9900-eba934e304ea.png"]'),
  (2297, 1, 'Uma pessoa precisa comprar 15 sacos de cimento para uma reforma em sua casa. Faz pesquisa de preço em cinco depósitos que vendem o cimento de sua preferência e cobram frete para entrega do material, conforme a distância do depósito à sua casa. As informações sobre preço do cimento, valor do frete e distância do depósito até a casa dessa pessoa estão apresentadas no quadro.

A pessoa escolherá um desses depósitos para realizar sua compra, considerando os preços do cimento e do frete oferecidos em cada opção.

Se a pessoa decidir pela opção mais econômica, o depósito escolhido para a realização dessa compra será o', '2', 'medio', '["https://enem.dev/2020/questions/159/e08bbc57-85b1-4682-92b2-26297de393f7.png"]'),
  (2298, 1, 'Um motociclista planeja realizar uma viagem cujo destino fica a 500 km de sua casa. Sua moto consome 5 litros de gasolina para cada 100 km rodados, e o tanque da moto tem capacidade para 22 litros. Pelo mapa, observou que no trajeto da viagem o último posto disponível para reabastecimento, chamado Estrela, fica a 80 km do seu destino. Ele pretende partir com o tanque da moto cheio e planeja fazer somente duas paradas para reabastecimento, uma na ida e outra na volta, ambas no posto Estrela. No reabastecimento para a viagem de ida, deve considerar também combustível suficiente para se deslocar por 200 km no seu destino.

A quantidade mínima de combustível, em litro, que esse motociclista deve reabastecer no posto Estrela na viagem de ida, que seja suficiente para fazer o segundo reabastecimento, é', '2', 'medio', NULL),
  (2300, 1, 'A lei municipal para a edificação de casas em lotes de uma cidade determina que sejam obedecidos os seguintes critérios:

*   afastamento mínimo de 4 m da rua;
*   afastamento mínimo de 1 m da divisa com outro lote;
*   área total construída da casa entre 40% e 50% da área total do lote.

Um construtor submeteu para aprovação na prefeitura dessa cidade uma planta com propostas para a construção de casas em seus 5 lotes. Cada lote tem área medindo 200 m2.

A imagem apresenta um esquema, sem escala, no qual estão representados os lotes, as ruas e os afastamentos considerados nos projetos entre as casas e as divisas dos lotes. As medidas indicadas no esquema estão expressas em metro.

A prefeitura aprovará apenas a planta da casa', '2', 'medio', '["https://enem.dev/2020/questions/162/cd18aaa1-8c39-4431-a9ff-aa7dec5e5b4e.png"]'),
  (2302, 1, 'A exposição a barulhos excessivos, como os que percebemos em geral em trânsitos intensos, casas noturnas e espetáculos musicais, podem provocar insônia, estresse, infarto, perda de audição, entre outras enfermidades. De acordo com a Organização Mundial da Saúde, todo e qualquer som que ultrapasse os 55 decibéis (unidade de intensidade do som) já pode ser considerado nocivo para a saúde. O gráfico foi elaborado a partir da medição do ruído produzido, durante um dia, em um canteiro de obras.

Nesse dia, durante quantas horas o ruído esteve acima de 55 decibéis?', '2', 'medio', '["https://enem.dev/2020/questions/164/6d3ec2de-3c7f-4bf7-882e-2daf9d2afee7.png"]'),
  (2303, 1, 'O técnico de um time de basquete pretende aumentar a estatura média de sua equipe de 1,93 m para, no mínimo, 1,99 m. Para tanto, dentre os 15 jogadores que fazem parte de sua equipe, irá substituir os quatro mais baixos, de estaturas: 1,78 m, 1,82 m, 1,84 m e 1,86 m. Para isso, o técnico contratou um novo jogador de 2,02 m. Os outros três jogadores que ele ainda precisa contratar devem satisfazer à sua necessidade de aumentar a média das estaturas da equipe. Ele fixará a média das estaturas para os três jogadores que ainda precisa contratar dentro do critério inicialmente estabelecido.

Qual deverá ser a média mínima das estaturas, em metro, que ele deverá fixar para o grupo de três novos jogadores que ainda irá contratar?', '2', 'medio', NULL),
  (2305, 1, 'O quadro representa os gastos mensais, em real, de uma família com internet, mensalidade escolar e mesada do filho.

No início do ano, a internet e a mensalidade escolar tiveram acréscimos, respectivamente, de 20% e 10%. Necessitando manter o valor da despesa mensal total com os itens citados, a família reduzirá a mesada do filho.

Qual será a porcentagem da redução da mesada?', '2', 'medio', '["https://enem.dev/2020/questions/167/b97cd861-19d3-4103-8332-c96d5cdc6bf0.png"]'),
  (2306, 1, 'Um grupo sanguíneo, ou tipo sanguíneo, baseia-se na presença ou ausência de dois antígenos, A e B, na superfície das células vermelhas do sangue. Como dois antígenos estão envolvidos, os quatro tipos sanguíneos distintos são:

*   Tipo A: apenas o antígeno A está presente;
*   Tipo B: apenas o antígeno B está presente;
*   Tipo AB: ambos os antígenos estão presentes;
*   Tipo O: nenhum dos antígenos está presente.

Disponível em: http://saude.hsw.uol.com.br. Acesso em: 15 abr. 2012 (adaptado).

Foram coletadas amostras de sangue de 200 pessoas e, após análise laboratorial, foi identificado que em 100 amostras está presente o antígeno A, em 110 amostras há presença do antígeno B e em 20 amostras nenhum dos antígenos está presente.

Dessas pessoas que foram submetidas à coleta de sangue, o número das que possuem o tipo sanguíneo A é igual a', '2', 'medio', NULL),
  (2308, 1, 'Azulejo designa peça de cerâmica vitrificada e/ou esmaltada usada, sobretudo, no revestimento de paredes. A origem das técnicas de fabricação de azulejos é oriental, mas sua expansão pela Europa traz consigo uma diversificação de estilos, padrões e usos, que podem ser decorativos, utilitários e arquitetônicos.

Disponível em: www.itaucultural.org.br. Acesso em: 31 jul. 2012.

Azulejos no formato de octógonos regulares serão utilizados para cobrir um painel retangular conforme ilustrado na figura.

Entre os octógonos e na borda lateral dessa área, será necessária a colocação de 15 azulejos de outros formatos para preencher os 15 espaços em branco do painel. Uma loja oferece azulejos nos seguintes formatos:

1 — Triângulo retângulo isósceles;

2 — Triângulo equilátero;

3 — Quadrado.

Os azulejos necessários para o devido preenchimento das áreas em branco desse painel são os de formato', '2', 'medio', '["https://enem.dev/2020/questions/171/ef4071b9-7821-4c7b-a055-4983fdcd1b87.png"]'),
  (2309, 1, 'No período de fim de ano, o síndico de um condomínio resolveu colocar, em um poste, uma iluminação natalina em formato de cone, lembrando uma árvore de Natal, conforme as figuras 1 e 2.

A árvore deverá ser feita colocando-se mangueiras de iluminação, consideradas segmentos de reta de mesmo comprimento, a partir de um ponto situado a 3 m de altura no poste até um ponto de uma circunferência de fixação, no chão, de tal forma que esta fique dividida em 20 arcos iguais. O poste está fixado no ponto C (centro da circunferência) perpendicularmente ao plano do chão.

Para economizar, ele utilizará mangueiras de iluminação aproveitadas de anos anteriores, que juntas totalizaram pouco mais de 100 m de comprimento, dos quais ele decide usar exatamente 100 m e deixar o restante como reserva.

Para que ele atinja seu objetivo, o raio, em metro, da circunferência deverá ser de', '2', 'medio', '["https://enem.dev/2020/questions/172/fa2897a7-4d80-4b91-ae62-16dc43487acf.png"]'),
  (2310, 1, 'Pergolado é o nome que se dá a um tipo de cobertura projetada por arquitetos, comumente em praças e jardins, para criar um ambiente para pessoas ou plantas, no qual há uma quebra da quantidade de luz, dependendo da posição do sol. É feito como um estrado de vigas iguais, postas paralelas e perfeitamente em fila, como ilustra a figura.

Um arquiteto projeta um pergolado com vãos de 30 cm de distância entre suas vigas, de modo que, no solstício de verão, a trajetória do sol durante o dia seja realizada num plano perpendicular à direção das vigas, e que o sol da tarde, no momento em que seus raios fizerem 30° com a posição a pino, gere a metade da luz que passa no pergolado ao meio-dia.

Para atender à proposta do projeto elaborado pelo arquiteto, as vigas do pergolado devem ser construídas de maneira que a altura, em centímetro, seja a mais próxima possível de', '2', 'medio', '["https://enem.dev/2020/questions/173/b1116282-c341-4b8e-a3a4-9b589e302201.png"]'),
  (2311, 1, 'O fenômeno das manifestações populares de massa traz à discussão como estimar o número de pessoas presentes nesse tipo de evento. Uma metodologia usada é: no momento do ápice do evento, é feita uma foto aérea da via pública principal na área ocupada, bem como das vias afluentes que apresentem aglomerações de pessoas que acessam a via principal. A foto é sobreposta por um mapa virtual das vias, ambos na mesma escala, fazendo-se um esboço geométrico da situação. Em seguida, subdividese o espaço total em trechos, quantificando a densidade, da seguinte forma:

• 4 pessoas por metro quadrado, se elas estiverem andando em uma mesma direção;

• 5 pessoas por metro quadrado, se elas estiverem se movimentando sem deixar o local;

• 6 pessoas por metro quadrado, se elas estiverem paradas.

É feito, então, o cálculo do total de pessoas, considerando os diversos trechos, e desconta-se daí 1.000 pessoas para cada carro de som fotografado.

Com essa metodologia, procederam-se aos cálculos para estimar o número de participantes na manifestação cujo esboço geométrico é dado na figura. Há três trechos na via principal: MN, NO e OP, e um trecho numa via afluente da principal: _QR_.

**Obs.:** a figura não está em escala (considere as medidas dadas).

Segundo a metodologia descrita, o número estimado de pessoas presentes a essa manifestação foi igual a', '2', 'medio', '["https://enem.dev/2020/questions/174/ad3422ff-1395-4c86-aca8-7645f4f66caa.png"]'),
  (2315, 1, 'Suponha que uma equipe de corrida de automóveis disponha de cinco tipos de pneu (I, II, III, IV, V), em que o fator de eficiência climática EC (índice que fornece o comportamento do pneu em uso, dependendo do clima) é apresentado:

*   EC do pneu I: com chuva 6, sem chuva 3;
*   EC do pneu II: com chuva 7, sem chuva –4;
*   EC do pneu III: com chuva –2, sem chuva 10;
*   EC do pneu IV: com chuva 2, sem chuva 8;
*   EC do pneu V: com chuva –6, sem chuva 7.

O coeficiente de rendimento climático (CRC) de um pneu é calculado como a soma dos produtos dos fatores de EC, com ou sem chuva, pelas correspondentes probabilidades de se ter tais condições climáticas: ele é utilizado para determinar qual pneu deve ser selecionado para uma dada corrida, escolhendo-se o pneu que apresentar o maior CRC naquele dia. No dia de certa corrida, a probabilidade de chover era de 70% e o chefe da equipe calculou o CRC de cada um dos cinco tipos de pneu.

O pneu escolhido foi', '2', 'medio', NULL),
  (2316, 1, 'Com o objetivo de contratar uma empresa responsável pelo serviço de atendimento ao público, os executivos de uma agência bancária realizaram uma pesquisa de satisfação envolvendo cinco empresas especializadas nesse segmento. Os procedimentos analisados (com pesos que medem sua importância para a agência) e as respectivas notas que cada empresa recebeu estão organizados no quadro.

A agência bancária contratará a empresa com a maior média ponderada das notas obtidas nos procedimentos analisados.

Após a análise dos resultados da pesquisa de satisfação, os executivos da agência bancária contrataram a empresa', '2', 'medio', '["https://enem.dev/2020/questions/180/8948b408-24e2-478b-85df-5607625e26e8.png"]'),
  (2317, 1, 'Com o objetivo de contratar uma empresa responsável pelo serviço de atendimento ao público, os executivos de uma agência bancária realizaram uma pesquisa de satisfação envolvendo cinco empresas especializadas nesse segmento. Os procedimentos analisados (com pesos que medem sua importância para a agência) e as respectivas notas que cada empresa recebeu estão organizados no quadro.

A agência bancária contratará a empresa com a maior média ponderada das notas obtidas nos procedimentos analisados.

Após a análise dos resultados da pesquisa de satisfação, os executivos da agência bancária contrataram a empresa', '2', 'medio', '["https://enem.dev/2020/questions/180/8948b408-24e2-478b-85df-5607625e26e8.png"]'),
  (2318, 1, 'A figura foi extraída de um antigo jogo de computadores, chamado _Bang! Bang!_

No jogo, dois competidores controlam os canhões  **A**  e  **B**  , disparando balas alternadamente com o objetivo de atingir o canhão do adversário; para isso, atribuem valores estimados para o módulo de velocidade inicial de disparo    e para o ângulo de disparo .

Em determinado momento de uma partida, o competidor  **B**  deve disparar; ele sabe que a bala disparada anteriormente, = 53 °, Passou tangenciando o Ponto  **P**  .

No jogo,   é igual a 10 m / s 2. Considere sen 53 ° = 0,8, cos 53 ° = 0,6 e desprezível a ação de dissipativas.

Disponível em:   . Acesso em: 18 abr. 2015 (adaptado).

Com base nas distâncias dadas e mantendo o último ângulo de disparo, qual deveria ser, aproximadamente, o menor valor de    que permitiria ao disparo pelo canhão  **B**  atingir o canhão  **A?**

Com base nas distâncias dadas e mantendo o último ângulo de disparo, qual deveria ser, aproximadamente, o menor valor de que permitiria ao disparo pelo canhão  B  atingir o canhão  A?', '2', 'medio', '["https://enem.dev/2021/questions/94/5a37495e-68a2-43fb-ac41-13a2fcc55e79.png","https://enem.dev/2021/questions/94/435840f2-c28e-427b-82f4-c210044547ee.png","https://enem.dev/2021/questions/94/708a0541-6e2f-4256-ab6e-24d3b0a9a668.png","https://enem.dev/2021/questions/94/c86c266a-40df-44d7-bc37-00fb42361fd1.png","https://enem.dev/2021/questions/94/0fea5329-7b51-4107-b32c-9e80dbb06407.png"]'),
  (2319, 1, 'Um segmento de reta está dividido em duas partes  
na proporção áurea quando o todo está para uma das  
partes na mesma razão em que essa parte está para a  
outra. Essa constante de proporcionalidade é comumente  
representada pela letra grega ρ, e seu valor é dado pela  
solução positiva da equação ρ²=ρ+1

Assim como a potência ρ², as potências superiores  
de ρ podem ser expressas da forma aρ + b, em que a e b  
são inteiros positivos, como apresentad0o no quadro.

A potência ρ7, escrita na forma aρ+b (a e b são inteiros positivos), é', '2', 'medio', '["https://enem.dev/2021/questions/136/291c6b71-3d02-4e67-af59-81f33cec15f5.png"]'),
  (2321, 1, 'Uma rede de hamburgueria tem três franquias em  
cidades distintas. Visando incluir um novo tipo de lanche  
no cardápio, o gerente de marketing da rede sugeriu que  
fossem colocados à venda cinco novos tipos de lanche,  
em edições especiais. Os lanches foram oferecidos pelo  
mesmo período de tempo em todos os franqueados,  
O tipo que apresentasse a maior média por franquia  
seria incluído definitivamente no cardápio. Terminado o  
período de experiência, a gerência recebeu um relatório  
descrevendo as quantidades vendidas, em unidade, de  
cada um dos cinco tipos de lanche nas três franquias

Com base nessas informações, a gerência decidiu incluir no cardápio o lanche de tipo', '2', 'medio', '["https://enem.dev/2021/questions/139/0c2cb7d1-b950-436a-8eab-6051b344e8ab.png"]'),
  (2322, 1, 'Aplicativos que gerenciam serviços de hospedagem  
têm ganhado espaço no Brasil e no mundo por oferecer  
opções diferenciadas em termos de localização e valores  
de hospedagem. Em um desses aplicativos, o preço P a  
ser pago pela hospedagem é calculado considerando um  
preço por diária d, acrescido de uma taxa fixa de limpeza L  
e de uma taxa de serviço. Essa taxa de serviço é um valor  
percentual s calculado sobre o valor pago pelo total das  
diárias.

Nessa situação, o preço a ser pago ao aplicativo para uma hospedagem de n diárias pode ser obtido pela expressão', '2', 'medio', NULL),
  (2323, 1, 'O organizador de uma competição de lançamento de  
dados pretende tornar o campeonato mais competitivo.  
Pelas regras atuais da competição, numa rodada, o  
jogador lança 3 dardos e pontua caso acerte pelo menos um deles no alvo. O organizador considera que, em média, os jogadores tem, em cada lançamento, 1/2 de probabilidade de acertar um dardo no alvo.  
A fim de tornar o jogo mais atrativo, planeja modificar  
as regras de modo que a probabilidade de um jogador  
pontuar em uma rodada seja igual ou superior a 9/10. Para  
isso, decide aumentar a quantidade de dardos a serem  
lançados em cada rodada.

Com base nos valores considerados pelo organizador da competição, a quantidade mínima de dardos que devem ser disponibilizados em uma rodada para tornar o jogo mais atrativo é', '2', 'medio', NULL),
  (2324, 1, 'O gráfico apresenta o nível de ocupação dos cinco reservatórios de água que abasteciam uma cidade em 2 de Fevereiro de 2015.

Nessa data, o reservatório com o maior volume de água era o', '2', 'medio', '["https://enem.dev/2021/questions/143/6658b31a-c862-4622-87b2-28e09d19a6d0.png"]'),
  (2325, 1, 'Uma pessoa realizou uma pesquisa com alguns alunos de uma escola, coletando suas idades, e organizou esses dados no gráfico.

Qual é a média das idades, em ano, desses alunos?', '2', 'medio', '["https://enem.dev/2021/questions/144/0f754876-c1f5-41b1-bea6-3935cb1a5304.png"]'),
  (2326, 1, 'Em um estudo realizado pelo IBGE em quatro estados e no Distrito Federal, com mais de 5 mil pessoas com 10 anos ou mais, observou-se que a leitura ocupa, em média, apenas seis minutos do dia de cada pessoa.  
Na faixa de idade de 10 a 24 anos, a média diária é de três minutos. No entanto, no grupo de idades entre 24 e 60 anos, o tempo médio diário dedicado à leitura é de 5 minutos. Entre os mais velhos, com 60 anos ou mais, a média é de 12 minutos.  
A quantidade de pessoas entrevistadas de cada faixa de idade seguiu a distribuição percentual descrita no quadro.

Os valores de x e y do quadro são, respectivamente, iguais a', '2', 'medio', '["https://enem.dev/2021/questions/145/9fa287d2-647c-4f7e-87a9-e58f5130bed7.png"]'),
  (2327, 1, 'Um zootecnista pretende testar se uma nova ração  
para coelhos é mais eficiente do que a que ele vem  
utilizando atualmente. A ração atual proporciona uma  
massa média de 10 kg por coelho, com um desvio padrão  
de 1 kg, alimentado com essa ração durante um período  
de três meses.  
O zootecnista selecionou uma amostra de coelhos e  
os alimentou com a nova ração pelo mesmo período de  
tempo. Ao final, anotou a massa de cada coelho, obtendo  
um desvio padrão de 1,5 kg para a distribuição das  
massas dos coelhos dessa amostra.  
Para avaliar a eficiência dessa ração, ele utilizará  
o coeficiente de variação (CV) que é uma medida de  
dispersão definida por CV =S/X, em que s representa o  
desvio padrão X, a média das massas dos coelhos que  
foram alimentados com uma determinada ração.  
O zootecnista substituirá a ração que vinha utilizando  
pela nova, caso o coeficiente de variação da distribuição  
das massas dos coelhos que foram alimentados com a  
nova ração for menor do que o coeficiente de variação  
da distribuição das massas dos coelhos que foram  
alimentados com a ração atual.

A substituição da ração ocorrerá se a média da distribuição das massas dos coelhos da amostra, em quilograma, for superior', '2', 'medio', NULL),
  (2328, 1, 'A Cifra de César é um exemplo de um método de codificação de mensagens usado por Júlio César para se comunicar com seus generais.  
No método, cada letra era trocada por uma letra que aparecia no alfabeto um número fixo de casas adiante (ou atrás) de forma cíclica. A seguir temos um exemplo em que cada letra é substituída pela que vem três posições à frente.

Para quebrar um código como esse, a análise de frequências das letras de um texto é uma ferramenta importante.  
Uma análise do texto do romance O guarani, de José de Alencar, que é composto por 491 631 letras, gerou o seguinte gráfico de frequências:

Após codificar esse texto com a regra do exemplo fornecido, faz-se nova analise de frequência no texto codificado.
As quatro letras mais frequentes, em ordem decrescente de frequência, do texto codificado são', '2', 'medio', '["https://enem.dev/2021/questions/147/114ddf31-06d9-41cf-a588-a987226385e6.png","https://enem.dev/2021/questions/147/a5256e30-3984-4503-aaa0-41b95d681d71.png"]'),
  (2329, 1, 'O quadro apresenta o número de terremotos de magnitude maior ou igual a 7, na escala de Richter, ocorridos em nosso planeta nos anos 2000 e 2011.

Um pesquisador acredita que a mediana representa bem o número anual típico de terremotos em um período. Segundo esse pesquisador, o número anual típico de terremotos de magnitude maior ou igual a 7 é', '2', 'medio', '["https://enem.dev/2021/questions/148/4e954c86-a11f-49f4-b82b-b9cee8375883.png"]'),
  (2330, 1, 'A depressão caracteriza-se por um desequilíbrio na química cerebral. Os neurônios de um deprimido não respondem bem as estímulos dos neurotransmissores.  
Os remédios que combatem a depressão têm o objetivo de restabelecer a química cerebral. Com o aumento gradativo de casos de depressão, a venda desses medicamentos está em crescente evolução, conforme ilustra o gráfico.

No período de 2005 a 2009, o aumento percentual no volume de vendas foi de', '2', 'medio', '["https://enem.dev/2021/questions/150/76a52739-74da-4cbd-9cf8-c62522ed889f.png"]'),
  (2331, 1, 'Um casal está planejando comprar um apartamento  
de dois quartos num bairro de uma cidade e consultou  
a página de uma corretora de imóveis, encontrando  
105 apartamentos de dois quartos à venda no bairro  
desejado. Eles usaram um aplicativo da corretora para  
gerar a distribuição dos preços do conjunto de imóveis  
selecionados.  
O gráfico ilustra a distribuição de frequências dos  
preços de venda dos apartamentos dessa lista (em  
mil reais), no qual as faixas de preço são dadas por  
\\]300, 400\\], \\]400, 5001, \\]500, 600\\], \\]00, 700\\], \\]700, 800\\],  
\\]800, 900\\], \\]900, 1 000\\], \\]1 000, 1 100\\], \\]1 100, 1 200\\] e  
\\]1 200, 1 300\\].  
A mesma corretora anuncia que cerca de 50% dos  
apartamentos de dois quartos nesse bairro, publicados  
em sua página, têm preço de venda inferior a 550 mil reais.  
No entanto, o casal achou que essa última informação  
não era compatível com o gráfico obtido.

Com base no gráfico obtido, o menor preço, p (em mil reais), para o qual pelo menos 50% dos apartamentos apresenta preço inferior a p', '2', 'medio', '["https://enem.dev/2021/questions/151/53a174a0-d119-4132-ade4-2cc79b864ee2.png"]'),
  (2333, 1, 'Um parque temático brasileiro construiu uma réplica em miniatura do castelo de Liechtenstein. O castelo original, representado na imagem, está situado na Alemanha e foi reconstruído entre os anos de 1840 e 1842, após duas destruições causadas por guerras.

O castelo possui uma ponte de 38,4m de comprimento e 1,68m de largura. O artesão que trabalhou para o parque produziu a réplica do castelo, em escala. Nessa obra, as medidas do comprimento e da largura da ponte eram, respectivamente, 160cm e 7 cm.

A escala utilizada para fazer a réplica é', '2', 'medio', '["https://enem.dev/2021/questions/153/6826c1c9-9c1c-401f-b721-af14ad303f2e.jpg"]'),
  (2334, 1, 'A demografia médica é o estudo da população de médicos no Brasil nos aspectos quantitativo e qualitativo, sendo um dos seus objetivos fazer projeções sobre a necessidade da formação de novos médicos. Um desses estudos gerou um conjunto de dados que aborda a evolução do número de médicos e da população brasileira por várias décadas. O quadro apresenta parte desses dados.

Segundo uma projeção estatística, a variação do número de médicos e o da população brasileira de 2010 para 2020 será a média entre a variação de 1990 para 2000 e a de 2000 para 2010. Com o resultado dessa projeção, determina-se o número de médicos por mil habitantes no ano de 2020.

Disponível em: www.cremesp.org.br. Acesso em: 24 jun. 2015 (adaptado)

O número, com duas casas na parte decimal, mais próximo do número de médicos por mil habitantes no ano de 2020 seria de', '2', 'medio', '["https://enem.dev/2021/questions/154/06fed6e4-4341-487f-8c3a-6352bba5bfd1.jpg"]'),
  (2335, 1, 'Um atleta produz sua própria refeição com custo fixo de R$ 10,00. Ela é composta por 400g de frango, 600g de batata-doce e uma hortaliça. Atualmente, os preços dos produtos para essa refeição são:

Em relação a esses preços, haverá um aumento de 50% no preço do quilograma de batata-doce, e os outros preços não serão alterados. O atleta deseja manter o custo da refeição, a quantidade de batata-doce e a hortaliça. Portanto, terá que reduzir a quantidade de frango.

Qual deve ser a redução percentual da quantidade de frango para que o atleta alcance seu objetivo?', '2', 'medio', '["https://enem.dev/2021/questions/155/0eb41d8c-7cd8-4398-96c2-b160d666be33.png"]'),
  (2336, 1, 'Uma mola é solta da posição distendida conforme a figura. A figura à direita representa o gráfico da posição _P_ (em cm) da massa m em função do tempo _t_ (em segundo) em um sistema de coordenadas cartesianas. Esse movimento periódico é descrito por uma expressão do tipo P(t) =  ou P(t) = , em que A>0 é a amplitude de deslocamento máximo e  é a frequência, que se relaciona com o período T pela fórmula .

Considere a ausência de quaisquer forças dissipativas.

A expressão algébrica que representa as posições P(t) da massa m, ao longo do tempo, no gráfico, é', '2', 'medio', '["https://enem.dev/2021/questions/156/22072ec1-3b3b-4ad6-a4b6-dffd6253a376.png","https://enem.dev/2021/questions/156/86b2ce7b-d131-40db-9629-e618470679c7.png","https://enem.dev/2021/questions/156/f1cfe3fa-6396-47ed-b60b-48d48194225e.png","https://enem.dev/2021/questions/156/38bd8acb-9ed5-402c-a6df-271fb1614213.png","https://enem.dev/2021/questions/156/9e69ba46-7bc0-40c9-b81e-bdae664b1ae1.png"]'),
  (2337, 1, 'Uma construtora, pretendendo investir na construção de imóveis em uma metrópole com cinco grandes regiões, fez uma pesquisa sobre a quantidade de famílias que mudaram de uma região para outra, de modo a determinar qual região foi o destino do maior fluxo de famílias, sem levar em consideração o número de famílias que deixaram a região. Os valores da pesquisa estão dispostos em uma matriz A = , i, j  {1, 2, 3, 4, 5}, em que o elemento  corresponde ao total de famílias (em dezena) que se mudaram da região i para a região j durante um certo período, e o elemento  é considerado nulo, uma vez que somente são consideradas mudanças entre regiões distintas. A seguir, está apresentada a matriz com os dados da pesquisa.

Qual região foi selecionada para o investimento da construtora?', '2', 'medio', '["https://enem.dev/2021/questions/157/8c6e4e74-df9c-40f8-8252-dbdeaea6b052.png","https://enem.dev/2021/questions/157/be8d14c5-515d-49fd-ac32-96ff68aec07f.png","https://enem.dev/2021/questions/157/d9158cca-6b4e-48a2-bfdb-ffe3e0bc450d.png","https://enem.dev/2021/questions/157/9e0b26da-8c61-4aad-b6d1-2266960860e0.png","https://enem.dev/2021/questions/157/7d732410-1899-40e4-ab0d-c9cac5de4aeb.png"]'),
  (2338, 1, 'Para realizar um voo entre duas cidades que distam 2 000 km uma da outra, uma companhia aérea utilizava um modelo de aeronave A, capaz de transportar até 200 passageiros. Quando uma dessas aeronaves está lotada de passageiros, o consumo de combustível é de 0,02 litro por quilômetro e por passageiro. Essa companhia resolveu trocar o modelo de aeronave A pelo modelo de aeronave B, que é capaz de transportar 10% de passageiros a mais do que o modelo A, mas consumindo 10% menos combustível por quilômetro e por passageiro.

A quantidade de combustível consumida pelo modelo de aeronave B, em relação à do modelo de aeronave B, em relação à do modelo de aeronave A, em um voo lotado entre as duas cidades, é', '2', 'medio', NULL),
  (2339, 1, 'Em uma corrida automobilística, os carros podem fazer paradas nos boxes para efetuar trocar de pneus. Nessas trocas, o trabalho é feito por um grupo de três pessoas em cada pneu. Considere que os grupos iniciam o trabalho no mesmo instante, trabalham à mesma velocidade e cada grupo trabalha em um único pneu. Com os quatro grupos completos, são necessários 4 segundos para que a troca seja efetuada. O tempo gasto por um grupo para trocar um pneu é inversamente proporcional ao número de pessoas trabalhando nele. Em uma dessas paradas, um dos trabalhadores passou mal, não pôde participar da troca e nem foi substituído, de forma que um dos quatro grupos de troca ficou reduzido.

Nessa parada específica, com um dos grupos reduzido, qual foi o tempo gasto, em segundo, para trocar os quatro pneus?', '2', 'medio', NULL),
  (2340, 1, 'Um  nutricionista verificou, na dieta diária do seu cliente, a falta de 800mg do mineral A, de 1 000 mg do mineral B e de 1 200 mg do mineral C. Por isso, recomendou a compra de suplementos alimentares que forneçam os minerais faltantes e informou que não haveria problema se consumisse mais desses minerais do que o recomendado.

O cliente encontrou cinco suplementos, vendidos em sachês unitários, cujos preços e as quantidades dos minerais estão apresentados a seguir:

*   Suplemento I: contém 50mg do mineral A, 100mg do mineral B e 200 mg do mineral C e custa R$2,00;
*   Suplemento II: contém 800mg do mineral A, 250mg do mineral B e 200 mg do mineral C e custa R$3,00;
*   Suplemento III: contém 250mg do mineral A, 1 000mg do mineral B e 300 mg do mineral C e custa R$5,00;
*   Suplemento IV: contém 600mg do mineral A, 500mg do mineral B e 1 000 mg do mineral C e custa R$6,00;
*   Suplemento V: contém 400mg do mineral A, 800mg do mineral B e 1 200 mg do mineral C e custa R$8,00;

O cliente decidiu comprar sachês de um único suplemento no qual gastasse menos dinheiro e ainda suprisse a falta de minerais indicada pelo nutricionista, mesmo que consumisse alguns deles além de sua necessidade.

Nessas condições, o cliente deverá comprar sachês do suplemento', '2', 'medio', NULL),
  (2344, 1, 'Uma pessoa pretende viajar por uma companhia aérea que despacha gratuitamente uma mala com até 10kg.

Em duas viagens que realizou, essa pessoa utilizou a mesma mala e conseguiu 10 kg com as seguintes combinações de itens:

Para ter certeza de que sua bagagem terá massa de 10 kg, ela decide levar essa mala com duas calças, um sapato e o máximo de camisetas, admitindo que itens do mesmo tipo têm a mesma massa.

Qual a quantidade máxima de camisetas que essa pessoa poderá levar?', '2', 'medio', '["https://enem.dev/2021/questions/164/eab2c90e-a45f-482b-997d-a5c2f6931726.png"]'),
  (2345, 1, 'Um automóvel apresenta um desempenho médio de 16 km/L. Um engenheiro desenvolveu um novo motor a combustão que economiza, em relação ao consumo do motor anterior, 0,1 L de combustível a cada 10 km percorridos.

O valor do desempenho médio do automóvel com o novo motor, em quilômetro por litro, expresso com uma casa decimal, é', '2', 'medio', NULL),
  (2346, 1, 'O projeto de um contêiner, em forma de paralelepípedo reto retangular, previa a pintura dos dois lados (interno e externo) de cada uma das quatro paredes com tinta acrílica e a pintura do piso interno com tinta epóxi. O construtor havia pedido, a cinco fornecedores diferentes, orçamentos das tintas necessárias, mas, antes de iniciar a obra, resolveu mudar o projeto original, alterando o comprimento e a largura para o dobro do originalmente previsto, mantendo inalterada a altura. Ao pedir novos orçamentos aos fornecedores, para as novas dimensões, cada um deu uma resposta diferente sobre as novas quantidades de tinta necessárias.

Em relação ao previsto para o projeto original, as novas quantidades de tinta necessárias informadas pelos fornecedores foram as seguintes:

–  Fornecedor I: “O dobro, tanto para as paredes quanto para o piso”.

– Fornecedor II: “O dobro para as paredes e quatro vezes para o piso”.

– Fornecedor III: “Quatro vezes, tanto para as paredes quanto para o piso.”

– Fornecedor IV: “Quatro vezes para as paredes e o dobro para o piso.”

– Fornecedor V: “Oito vezes para as paredes e quatro vezes para o piso.”

Analisando as informações dos fornecedores, o construtor providenciará a quantidade adequada de material. Considere a porta de acesso do contêiner como parte de uma das paredes.

Qual dos fornecedores prestou as informações adequadas, devendo ser o escolhido pelo construtor para aquisição do material?', '2', 'medio', NULL),
  (2347, 1, 'Um povoado com 100 habitantes está passando por uma situação de seca prolongada e os responsáveis pela administração pública local decidem contratar a construção de um reservatório. Ele deverá ter a forma de um cilindro circular reto, cuja base tenha 5 metros de diâmetro interno, e atender à demanda de água da população por um período de exatamente sete dias consecutivos. No oitavo dia, o reservatório vazio é completamente reabastecido por carros-pipa.

Considere que o consumo médio diário por habitante é de 120 litros de água. Use 3 como aproximação para 

Nas condições apresentadas, o reservatório deverá ser construído com uma altura interna mínima, em metro, igual a', '2', 'medio', '["https://enem.dev/2021/questions/167/42cbdc11-82db-44e3-8f1b-367c1b0e5853.png"]'),
  (2348, 1, 'Num octaedro regular, duas faces são consideradas opostas quando não têm nem arestas, nem vértices em comum. Na figura, observa-se um octaedro regular e uma de suas planificações, na qual há uma face colorida na cor cinza escuro e outras quatro faces numeradas.

Qual(is) face(s) ficará(ão) oposta(s) à face de cor cinza escuro, quando o octaedro for reconstruído a partir da planificação dada?', '2', 'medio', '["https://enem.dev/2021/questions/168/71fccb41-8caa-485c-b7af-c1c537c4148b.png"]'),
  (2349, 1, 'O instrumento da percussão conhecido como triângulo é composto por uma barra fina de aço, dobrada em um formato que se assemelha a um triângulo, com uma abertura e uma haste, conforme ilustra a Figura 1.

Uma empresa de brindes promocionais contrata uma fundição para a produção de miniaturas de instrumentos desse tipo. A fundição produz, inicialmente, peças com o formato de uma triângulo equilátero de altura h, conforme ilustra a Figura 2. Após esse processo, cada peça é aquecida, deformando os cantos, e cortada em um dos vértices, dando origem à miniatura. Assuma que não ocorram perdas de material no processo de produção, de forma que o comprimento da barra utilizada seja igual ao perímetro do triângulo equilátero representado na Figura 2.

Considere 1,7 como valor aproximado para √3.

Nessas condições, o valor que mais se aproxima da medida do comprimento da barra, em centímetro, é

Nessas condições, o valor que mais se aproxima da medida do comprimento da barra, em centímetro, é:', '2', 'medio', '["https://enem.dev/2021/questions/169/d9c2223e-0155-480d-bfd2-0d0fd39cb200.png"]'),
  (2350, 1, 'Uma pessoa comprou uma caneca para tomar sopa, conforme ilustração.

Sabe-se que 1 cm³ = 1 mL e que o topo da caneca é uma circunferência de diâmetro (D) medindo 10 cm, e a base é um círculo de diâmetro (d) medindo 8 cm. Além disso, sabe-se que a altura (h) dessa caneca mede 12 cm (distância entre o centro das circunferências do topo e da base).

Utilize 3 como aproximação para π.

Qual é a capacidade volumétrica, em milimitro, dessa caneca?', '2', 'medio', '["https://enem.dev/2021/questions/170/4b81cbbc-0e2d-486f-9a21-2cbe5160b172.png"]'),
  (2351, 1, 'O dono de uma loja pretende usar cartões imantados para a sua divulgação de sua loja. A empresa que fornecerá o serviço lhe informa que o custo de fabricação do cartão é de R$0,01 por centímetro quadrado e que disponibiliza modelos tendo como faces úteis para impressão:

*   um triângulo equilátero de lado 12 cm;
*   um quadrado de lado 8 cm;
*   um retângulo de lados 11 cm e 8 cm;
*   um hexágono regular de lado 6cm;
*   um círculo de diâmetro 10 cm.

O dono da loja está disposto a pagar, no máximo, R$0,80 por cartão. Ele escolherá, dentro desse limite de preço, o modelo que tiver maior área de impressão.

Use 3 como aproximação para π e use 1,7 como aproximação para √3.

Nessas condições, o modelo que deverá ser escolhido tem como face útil para impressão um', '2', 'medio', NULL),
  (2352, 1, 'Um ciclista amador de 61 anos de idade utilizou um monitor cardíaco para medir suas frequências cardíacas em quatro diferentes tipos de trechos do percurso. Os resultados das frequências cardíacas máximas alcançadas nesses trechos foram:

Sabe-se que a faixa aeróbica ideal para o ganho de condicionamento físico é entre 65% e 85% da frequência cardíaca máxima (Fc máx), que, por sua vez, é determinada pela fórmula:

Fc máx. = 220 – idades,

em que a idade é dada em ano e Fc máx. é dada em bpm (batimento por minuto).

Os trechos do percurso nos quais esse ciclista se mantém dentro de sua faixa aeróbica ideal, para o ganho de condicionamento físico, são:', '2', 'medio', '["https://enem.dev/2021/questions/172/604532ed-546c-43dc-a7eb-3b0b3bfca440.png"]'),
  (2353, 1, 'Um lava-rápido oferece dois tipos de lavagem de veículos: lavagem simples, ao preço de R$ 20,00, e lavagem completa, ao preço de R$35,00. Para cobrir as despesas com produtos e funcionários, e não ter prejuízos, o lava-rápido deve ter uma receita diária de, pelo menos, R$300,00.

Para não ter prejuízo, o menor número de lavagens diárias que o lava rápido deve efetuar é', '2', 'medio', NULL),
  (2354, 1, 'Após a consulta médica, um paciente deve seguir um tratamento composto por três medicamentos: X, Y e Z. O paciente, para adquirir os três medicamentos, faz um orçamento em três farmácias diferentes, conforme o quadro.

Dessas farmácias, algumas oferecem descontos:

*   na compra dos medicamentos X e Y na Farmácia 2, recebe-se um desconto de 20% em ambos os produtos, independentemente da compra do medicamento Z, e não há desconto para o medicamento Z;
*   na compra dos 3 medicamentos na Farmácia 3, recebe-se 20% de desconto no valor total da compra.

O paciente deseja efetuar a compra de modo a minimizar duas despesa com os medicamentos.

De acordo com as informações fornecidas, o paciente deve comprar os medicamentos da seguinte forma:', '2', 'medio', '["https://enem.dev/2021/questions/174/a9b99537-f174-43b1-9ee0-90b5bdfe57ad.png"]'),
  (2355, 1, 'Muitos brinquedos que frequentemente são encontrados em praças e parques públicos apresentam formatos de figuras geométricas bidimensionais e tridimensionais. Uma empresa foi contratada para desenvolver uma nova forma de brinquedo. A proposta apresentada pela empresa foi de uma estrutura formada apenas por hastes metálicas, conectadas umas às outras, como apresentado na figura. As hastes de mesma tonalidade e espessura são congruentes.

Com base na proposta apresentada, quantas figuras geométricas planas de cada tipo são formadas pela união das hastes?', '2', 'medio', '["https://enem.dev/2021/questions/175/604fdc09-c098-44f6-9b6f-002210df4c34.png"]'),
  (2356, 1, 'O sistema de numeração romano ainda é utilizado na indicação de capítulos e volumes de livros, na designação de séculos e, em ordem cronológica, de papas e reis de mesmo nome. São utilizadas sete letras do alfabeto:  
Quatro fundamentais: I (vale 1); X (vale 10); C (vale 100) e M (vale 1 000).  
Três secundárias: V (vale 5); L (vale 50); e D (vale 500).

As regras para escrever números romanos são:  
1\\. Não existe símbolo correspondente ao zero;  
2\\. Os símbolos fundamentais podem ser repetidos até três vezes e seus valores são adicionados. Exemplo: XXX = 30;  
3\\. Uma letra posta à esquerda de outra de maior valor indica subtração dos respectivos valores. Exemplo: IX = 10 – 1 = 9;  
4\\. Uma letra posta à direita de outra de maior valor indica adição dos respectivos valores. Exemplo: XI = 10 + 1 = 11

Em uma cidade europeia há uma placa indicando o ano de sua fundação: MCDLXIX.

Quantos anos de fundação essa cidade comemorará em 2050?', '2', 'medio', NULL),
  (2357, 1, 'Uma das bases mais utilizadas para representar um número é a base decimal. Entretanto, os computadores trabalham com números na base binária. Nessa base, qualquer número natural é representado usando apenas os algarismos 0 e 1. Por exemplo, as representações dos números 9 e 12, na base binárias, são 1001 e 1100, respectivamente. A operação de adição, na base binária, segue um algoritmo similar ao utilizado na base decimal, como detalhado no quadro:

Por exemplo, na base binária, a soma dos números 10 e 10 é 100, como apresentado:

Considerando as informações do texto, o resultado da adição 9 + 12 será representado, na base binária, por', '2', 'medio', '["https://enem.dev/2021/questions/177/e82478b8-f2bb-43db-88d0-49359625343c.png"]'),
  (2358, 1, 'Uma unidade de medida comum usada para a expressar áreas de terrenos de grandes dimensões é o hectare, que equivale a 10 000 m². Um fazendeiro decide fazer um loteamento utilizando 3 hectares de sua fazenda, dos quais 0,9 hectare será usado para a construção de ruas e calçadas e o restante será dividido em terrenos com área de 300 m² cada um. Os 20 primeiros terrenos vendidos terão preços promocionais de R$ 20 000,00 cada, e os demais, R$ 30 000,00 cada.

Nas condições estabelecidas, o valor total, em real, obtido, pelo fazendeiro com a venda de todos os terrenos será igual a', '2', 'medio', NULL),
  (2360, 1, 'Os diretores de uma escola precisam construir um laboratório para uso dos alunos. Há duas possibilidades:

(i) um laboratório do tipo A, com capacidade para 100 usuário, a um custo de 180 mil reais e gastos de 60 mil reais por ano para manutenção;

(ii) um laboratório do tipo B, com capacidade para 80 usuários, a um custo de 120 mil reais e gastos com manutenção de 16 mil reais por ano.

Considera-se que, em qualquer caso, o laboratório implantado será utilizado na totalidade de sua capacidade.

A economia da escola, na utilização de um laboratório tipo B, em vez de um laboratório tipo A, num período de 4 anos, por usuário, será de', '2', 'medio', NULL),
  (2361, 1, 'Os diretores de uma escola precisam construir um laboratório para uso dos alunos. Há duas possibilidades:

(i) um laboratório do tipo A, com capacidade para 100 usuário, a um custo de 180 mil reais e gastos de 60 mil reais por ano para manutenção;

(ii) um laboratório do tipo B, com capacidade para 80 usuários, a um custo de 120 mil reais e gastos com manutenção de 16 mil reais por ano.

Considera-se que, em qualquer caso, o laboratório implantado será utilizado na totalidade de sua capacidade.

A economia da escola, na utilização de um laboratório tipo B, em vez de um laboratório tipo A, num período de 4 anos, por usuário, será de', '2', 'medio', NULL),
  (2362, 1, 'Uma máquina em operação tem sua temperatura T monitorada por meio de um registro gráfico, ao longo do tempo t. Essa máquina possui um pistão cuja velocidade V varia com a temperatura T da máquina, de acordo com a expressão V=T²−4. Após a máquina funcionar durante o intervalo de tempo de 10 horas, o seu operador analisa o registro gráfico, apresentado na figura, para avaliar a necessidade de eventuais ajustes, sabendo que a máquina apresenta falhas de funcionamento quando a velocidade do pistão se anula.

Quantas vezes a velocidade do pistão se anulou durante as 10 horas de funcionamento?', '2', 'medio', '["https://enem.dev/2022/questions/136/44fff3b7-9ad8-4f02-8262-5b4c015a8228.png"]'),
  (2364, 1, 'O gráfico apresenta os totais de receitas e despesas de uma empresa, expressos em milhão de reais, no  
decorrer dos meses de um determinado ano. A empresa obtém lucro quando a diferença entre receita e despesa é positiva e tem prejuízo quando essa diferença é negativa.

Qual é a mediana, em milhão de reais, dos valores dos lucros apurados pela empresa nesse ano?', '2', 'medio', '["https://enem.dev/2022/questions/138/d738a15a-a083-4720-af91-80d2b3259c9f.png"]'),
  (2365, 1, 'Um casal está reformando a cozinha de casa e decidiu comprar um refrigerador novo. Observando a planta da nova cozinha, desenhada na escala de 1: 50, notaram que o espaço destinado ao refrigerador tinha 3,8 cm de altura e 1,6 cm de largura. Eles sabem que os fabricantes de refrigeradores indicam que, para um bom funcionamento e fácil manejo na limpeza, esses eletrodomésticos devem ser colocados em espaços que permitam uma distância de, pelo menos, 10 cm de outros móveis ou paredes, tanto na parte superior quanto nas laterais. O casal comprou um refrigerador que caberia no local a ele destinado na nova cozinha, seguindo as instruções do fabricante.

Esse refrigerador tem altura e largura máximas, em metro, respectivamente, iguais a', '2', 'medio', NULL),
  (2366, 1, 'Foram convidadas 32 equipes para um torneio de futebol, que foram divididas em 8 grupos com 4 equipes, sendo que, dentro de um grupo, cada equipe disputa uma única partida contra cada uma das demais equipes de seu grupo. A primeira e a segunda colocadas de cada grupo seguem para realizar as 8 partidas da próxima fase do torneio, chamada oitavas de final. Os vencedores das partidas das oitavas de final seguem para jogar as 4 partidas das quartas de final. Os vencedores das quartas de final disputam as 2 partidas das semifinais, e os vencedores avançam para a grande final, que define a campeã do torneio.

Pelas regras do torneio, cada equipe deve ter um período de descanso de, no mínimo, 3 dias entre dois jogos por ela disputados, ou seja, se um time disputar uma partida, por exemplo, num domingo, só poderá disputar a partida seguinte a partir da quinta-feira da mesma semana.

O número mínimo de dias necessários para a realização desse torneio é', '2', 'medio', NULL),
  (2368, 1, 'Uma montadora de automóveis divulgou que oferta a seus clientes mais de 1 000 configurações diferentes de carro, variando o modelo, a motorização, os opcionais e a cor do veículo. Atualmente, ela oferece 7 modelos de carros com 2 tipos de motores: 1.0 e 1.6. Já em relação aos opcionais, existem 3 escolhas possíveis: central multimídia, rodas de liga leve e bancos de couro, podendo o cliente optar por incluir um, dois, três ou nenhum dos opcionais disponíveis.

Para ser fiel à divulgação feita, a quantidade mínima de cores que a montadora deverá disponibilizar a seus clientes é', '2', 'medio', NULL),
  (2370, 1, 'O pacote básico de um jogo para smartphone, que é vendido a R$ 50,00, contém 2 000 gemas e 100 000 moedas de ouro, que são itens utilizáveis nesse jogo.  
A empresa que comercializa esse jogo decidiu criar um pacote especial que será vendido a R$ 100,00 e que se diferenciará do pacote básico por apresentar maiores quantidades de gemas e moedas de ouro. Para estimular as vendas desse novo pacote, a empresa decidiu inserir nele 6 000 gemas a mais, em relação ao que o cliente teria caso optasse por comprar, com a mesma quantia, dois pacotes básicos.

A quantidade de moedas de ouro que a empresa deverá inserir ao pacote especial, para que seja mantida a mesma proporção existente entre as quantidades de gemas e de moedas de ouro contidas no pacote básico, é', '2', 'medio', NULL),
  (2371, 1, 'Um parque tem dois circuitos de tamanhos diferentes para corridas. Um corredor treina nesse parque e, no primeiro dia, inicia seu treino percorrendo  
3 voltas em torno do circuito maior e 2 voltas em torno do menor, perfazendo um total de 1 800 m. Em seguida, dando continuidade a seu treino, corre mais 2 voltas em torno do circuito maior e 1 volta em torno do menor,  
percorrendo mais 1 100 m.

No segundo dia, ele pretende percorrer 5 000 m nos circuitos do parque, fazendo um número inteiro de voltas em torno deles e de modo que o número de voltas seja o maior possível.

A soma do número de voltas em torno dos dois circuitos, no segundo dia, será', '2', 'medio', NULL),
  (2372, 1, 'Uma equipe de marketing digital foi contratada para aumentar as vendas de um produto ofertado em um site de comércio eletrônico. Para isso, elaborou um anúncio que, quando o cliente clica sobre ele, é direcionado  
para a página de vendas do produto. Esse anúncio foi divulgado em duas redes sociais, A e B, e foram obtidos os seguintes resultados:

• rede social A: o anúncio foi visualizado por 3 000 pessoas; 10% delas clicaram sobre o anúncio e foram redirecionadas para o site; 3% das que clicaram sobre o anúncio compraram o produto. O investimento feito para a publicação do anúncio nessa rede foi de R$ 100,00;

• rede social B: o anúncio foi visualizado por 1 000 pessoas; 30% delas clicaram sobre o anúncio e foram redirecionadas para o site; 2% das que  
clicaram sobre o anúncio compraram o produto. O investimento feito para a publicação do anúncio nessa rede foi de R$ 200,00.

Por experiência, o pessoal da equipe de marketing considera que a quantidade de novas pessoas que verão o anúncio é diretamente proporcional ao investimento realizado, e que a quantidade de pessoas que comprarão o produto também se manterá proporcional à quantidade de pessoas que clicarão sobre o anúncio.  
O responsável pelo produto decidiu, então, investir mais R$ 300,00 em cada uma das duas redes sociais para a divulgação desse anúncio e obteve, de fato, o aumento proporcional esperado na quantidade de clientes que compraram esse produto. Para classificar o aumento obtido na quantidade (Q) de compradores desse produto, em consequência dessa segunda divulgação, em relação aos resultados observados na primeira divulgação, o  
responsável pelo produto adotou o seguinte critério:

• Q ≤ 60%: não satisfatório;  
• 60% < Q ≤ 100%: regular;  
• 100% < Q ≤ 150%: bom;  
• 150% < Q ≤ 190%: muito bom;  
• 190% < Q ≤ 200%: excelente

O aumento na quantidade de compradores, em consequência dessa segunda divulgação, em relação
ao que foi registrado com a primeira divulgação, foi classificado como', '2', 'medio', NULL),
  (2374, 1, 'Uma das informações que pode auxiliar no dimensionamento do número de pediatras que devem atender em uma Unidade Básica de Saúde (UBS) é o número que representa a mediana da quantidade de crianças por família existente na região sob sua responsabilidade. O quadro mostra a distribuição das frequências do número de crianças por família na região de responsabilidade de uma UBS.

O número que representa a mediana da quantidade de crianças por família nessa região é', '2', 'medio', '["https://enem.dev/2022/questions/149/d92eba46-c91d-43d9-accf-ec06c4506ac1.png"]'),
  (2375, 1, 'Em jogos de voleibol, um saque é invalidado se a bola atingir o teto do ginásio onde ocorre o jogo. Um jogador de uma equipe tem um saque que atinge uma grande altura. Seu recorde foi quando a batida do saque se iniciou a uma altura de 1,5 m do piso da quadra, e a trajetória da bola foi descrita pela parábola  , em que y representa a altura da bola em relação ao eixo x (das abscissas) que está localizado a 1,5 m do piso da quadra, como representado na figura. Suponha que em todas as partidas algum saque desse jogador atinja a mesma altura do seu recorde.

A equipe desse jogador participou de um torneio de voleibol no qual jogou cinco partidas, cada uma delas  
em um ginásio diferente. As alturas dos tetos desses ginásios, em relação aos pisos das quadras, são:  
• ginásio I: 17 m;  
• ginásio II: 18 m;  
• ginásio III: 19 m;  
• ginásio IV: 21 m;  
• ginásio V: 40 m.

O saque desse atleta foi invalidado', '2', 'medio', '["https://enem.dev/2022/questions/150/764fcc6a-f737-404f-867b-7caacf69134e.png","https://enem.dev/2022/questions/150/0964fd1c-cef0-4132-981d-c148bd70f0aa.png"]'),
  (2376, 1, 'Um médico faz o acompanhamento clínico de um grupo de pessoas que realizam atividades físicas diariamente. Ele observou que a perda média de massa dessas pessoas para cada hora de atividade física era de 1,5 kg. Sabendo que a massa de 1 L de água é de 1 kg, ele recomendou que ingerissem, ao longo das 3 horas seguintes ao final da atividade, uma quantidade total de água correspondente a 40% a mais do que a massa perdida na atividade física, para evitar desidratação.

Seguindo a recomendação médica, uma dessas pessoas ingeriu, certo dia, um total de 1,7 L de água após  
terminar seus exercícios físicos.

Para que a recomendação médica tenha efetivamente sido respeitada, a atividade física dessa pessoa, nesse dia, durou', '2', 'medio', NULL),
  (2377, 1, 'Em uma sala de cinema, para garantir que os espectadores vejam toda a imagem projetada na tela, a disposição das poltronas deve obedecer à norma técnica da Associação Brasileira de Normas Técnicas (ABNT), que faz as seguintes indicações:  
• Distância mínima (Dmín) entre a tela de projeção e o encosto da poltrona da primeira fileira deve ser de, pelo menos, 60% da largura (L) da tela.  
• Distância máxima (Dmáx) entre a tela de projeção e o encosto da poltrona da última fileira deve ser o dobro da largura (L) da tela, sendo aceitável uma distância de até 2,9 vezes a largura (L) da tela.  
Para o espaçamento entre as fileiras de poltronas, é considerada a distância de 1 metro entre os encostos de poltronas em duas fileiras consecutivas.

Disponível em: www.ctav.gov.br. Acesso em: 14 nov. 2013.

Disponível em: www.ctav.gov.br. Acesso em: 14 nov. 2013.

Pretende-se ampliar essa sala, mantendo-se na mesma posição a tela e todas as poltronas já instaladas,  
ampliando-se ao máximo a sala para os fundos (área de instalação de novas poltronas), respeitando-se o limite aceitável da norma da ABNT. A intenção é aumentar, ao máximo, a quantidade de poltronas da sala, instalando-se novas unidades, iguais às já instaladas.

Quantas fileiras de poltronas a sala comportará após essa ampliação?', '2', 'medio', '["https://enem.dev/2022/questions/152/f182fb95-a05f-4d8d-bd7d-bbf7adf3d95b.png"]'),
  (2378, 1, 'Uma empresa produz e vende um tipo de chocolate, maciço, em formato de cone circular reto com as medidas do diâmetro da base e da altura iguais a 8 cm e 10 cm, respectivamente, como apresenta a figura.

Devido a um aumento de preço dos ingredientes utilizados na produção desse chocolate, a empresa  
decide produzir esse mesmo tipo de chocolate com um volume 19% menor, no mesmo formato de cone circular reto com altura de 10 cm.

Para isso, a empresa produzirá esses novos chocolates com medida do raio da base, em centímetro, igual a', '2', 'medio', '["https://enem.dev/2022/questions/153/f85bbaf3-e20e-48e7-8a5f-143804fa1743.png"]'),
  (2379, 1, 'Em janeiro de 2013, foram declaradas 1 794 272 admissões e 1 765 372 desligamentos no Brasil, ou seja,  
foram criadas 28 900 vagas de emprego, segundo dados do Cadastro Geral de Empregados e Desempregados (Caged), divulgados pelo Ministério do Trabalho e Emprego (MTE). Segundo o Caged, o número de vagas criadas em janeiro de 2013 sofreu uma queda de 75%, quando comparado com o mesmo período de 2012.

Disponível em: http://portal.mte.gov.br. Acesso em: 23 fev. 2013 (adaptado).

De acordo com as informações dadas, o número de vagas criadas em janeiro de 2012 foi', '2', 'medio', NULL),
  (2383, 1, 'Ao analisar os dados de uma epidemia em uma cidade, peritos obtiveram um modelo que avalia a quantidade de pessoas infectadas a cada mês, ao longo de um ano. O modelo é dado por , sendo t um número natural, variando de 1 a 12, que representa os meses do ano, e p(t) a quantidade de pessoas infectadas no mês t do ano. Para tentar diminuir o número de infectados no próximo ano, a Secretaria Municipal de Saúde decidiu intensificar a propaganda oficial sobre os cuidados com a epidemia. Foram apresentadas cinco propostas (I, II, III, IV e V), com diferentes períodos de intensificação das propagandas:

A sugestäo dos peritos é que seja escolhida a proposta cujo período de intensificação da propaganda englobe o mês em que, sequndo o modelo, há a maior quantidade de infectados. A sugestão foi aceita.

A proposta escolhida foi a', '2', 'medio', '["https://enem.dev/2022/questions/158/94d1c253-bab8-44b6-aa7a-7bd9552dc398.png","https://enem.dev/2022/questions/158/e0b502d3-500e-42da-8e2b-431e83be58ff.png"]'),
  (2386, 1, 'Uma empresa de engenharia projetou uma casa com a forma de um retângulo para um de seus clientes. Esse cliente solicitou a inclusão de uma varanda em forma de L. A figura apresenta a planta baixa desenhada pela empresa, já com a varanda incluída, cujas medidas, indicadas em centímetro, representam os valores das dimensões da varanda na escala de 1 : 50.

A medida real da área da varanda, em metro quadrado, é', '2', 'medio', '["https://enem.dev/2022/questions/161/e1e86e81-76dc-4763-a118-273941076831.png"]'),
  (2387, 1, 'Uma loja de roupas fixou uma meta de vendas de 77 000 reais para um determinado mês de 30 dias. O gráfico mostra o volume de vendas dessa loja, em real, nos dez primeiros dias do mês e entre o dia dez e o dia vinte desse mês, nos seus dois únicos setores (infantil e adulto). Suponha que a variação no volume de vendas, para o período registrado, tenha se dado de forma linear, como mostrado no gráfico, e que essa tendência se mantenha a mesma para os próximos dez dias.

Ao final do trigésimo dia, quanto faltará no volume de vendas, em real, para que a meta fixada para o mês seja alcançada?', '2', 'medio', '["https://enem.dev/2022/questions/162/0942383a-b8ee-4c44-a9ad-ae50d4204c0c.png"]'),
  (2388, 1, 'Em uma universidade, atuam professores que estão enquadrados funcionalmente pela sua maior titulação: mestre ou doutor. Nela há, atualmente, 60 mestres e 40 doutores. Os salários mensais dos professores mestres e dos doutores são, respectivamente, R$ 8 000,00 e  
R$ 12 000,00.  
A diretoria da instituição pretende proporcionar um aumento salarial diferenciado para o ano seguinte, de tal forma que o salário médio mensal dos professores dessa instituição não ultrapasse R$ 12 240,00. A universidade já estabeleceu que o aumento salarial será de 25% para os mestres e precisa ainda definir o percentual de reajuste para os doutores.

Mantido o número atual de professores com suas atuais titulações, o aumento salarial, em porcentagem, a ser concedido aos doutores deverá ser de, no máximo,', '2', 'medio', NULL),
  (2389, 1, 'Um borrifador de atuação automática libera, a cada acionamento, uma mesma quantidade de inseticida. O recipiente desse produto, quando cheio, contém 360 mL de inseticida, que duram 60 dias se o borrifador permanecer ligado ininterruptamente e for acionado a cada 48 minutos.

A quantidade de inseticida que é liberada a cada acionamento do borrifador, em mililitro, é', '2', 'medio', NULL),
  (2390, 1, 'Definem-se o dia e o ano de um planeta de um sistema solar como sendo, respectivamente, o tempo que o planeta leva para dar 1 volta completa em torno de seu próprio eixo de rotação e o tempo para dar 1 volta completa em torno de seu Sol.  
Suponha que exista um planeta Z, em algum sistema solar, onde um dia corresponda a 73 dias terrestres e que 2 de seus anos correspondam a 1 ano terrestre. Considere que 1 ano terrestre tem 365 de seus dias.

No planeta Z, seu ano corresponderia a quantos de seus dias?', '2', 'medio', NULL),
  (2391, 1, 'Em uma competição de velocidade, diz-se que há uma ultrapassagem quando um veículo que está atrás de outro passa à sua frente, com ambos se deslocando no mesmo sentido. Considere uma competição automobilística entre cinco carros em uma pista com 100 m de comprimento, onde todos largam no mesmo instante e da mesma linha.  
O gráfico mostra a variação da distância percorrida por cada  
veículo, em função do tempo, durante toda a competição.

Qual o número de ultrapassagens, após o início da competição, efetuadas pelo veículo que chegou em
último lugar?', '2', 'medio', '["https://enem.dev/2022/questions/166/efa5ccf4-a844-4c87-b110-7a675585a779.png"]'),
  (2392, 1, 'Em uma loja, o preço promocional de uma geladeira é de R$ 1 000,00 para pagamento somente em dinheiro. Seu preço normal, fora da promoção, é 10% maior. Para pagamento feito com o cartão de crédito da loja, é dado um desconto de 2% sobre o preço normal.  
Uma cliente decidiu comprar essa geladeira, optando pelo pagamento com o cartão de crédito da loja. Ela calculou que o valor a ser pago seria o preço promocional acrescido de 8%. Ao ser informada pela loja do valor a  
pagar, segundo sua opção, percebeu uma diferença entre seu cálculo e o valor que lhe foi apresentado

O valor apresentado pela loja, comparado ao valor calculado pela cliente, foi', '2', 'medio', NULL),
  (2393, 1, 'Uma pessoa precisa se deslocar de automóvel do ponto P para o ponto Q, indicados na figura, na qual as linhas verticais e horizontais simbolizam ruas

Por causa do sentido de tráfego nessas ruas, o caminho poligonal destacado é a possibilidade mais curta de efetuar esse deslocamento. Para descrevê-lo, deve-se especificar qual o sentido a ser tomado em cada cruzamento de ruas, em relação à direção de deslocamento do automóvel, que se movimentará continuamente. Para isso, empregam-se as letras E, F e D para indicar  
“vire à esquerda”, “siga em frente” e “vire à direita”, respectivamente.

A sequência de letras que descreve o caminho poligonal destacado é', '2', 'medio', '["https://enem.dev/2022/questions/168/5c7c6e9a-c900-4910-a9d0-af84f8f5b8c4.png"]'),
  (2394, 1, 'Uma loja comercializa cinco modelos de caixas-d’água (I, II, III, IV e V), todos em formato de cilindro reto de base circular. Os modelos II, III, IV e V têm as especificações de suas dimensões dadas em relação às dimensões do modelo I, cuja profundidade é P e área da base é Ab, como segue:

• modelo II: o dobro da profundidade e a metade da  
área da base do modelo I;  
• modelo III: o dobro da profundidade e a metade do  
raio da base do modelo I;  
• modelo IV: a metade da profundidade e o dobro da  
área da base do modelo I;  
• modelo V: a metade da profundidade e o dobro do  
raio da base do modelo I.

Uma pessoa pretende comprar nessa loja o modelo  
de caixa-d’água que ofereça a maior capacidade  
volumétrica

O modelo escolhido deve ser o', '2', 'medio', NULL),
  (2395, 1, 'No período de 2005 a 2013, o valor de venda dos imóveis em uma cidade apresentou alta, o que resultou no aumento dos aluguéis. Os gráficos apresentam a evolução desses valores, para um mesmo imóvel, no  
mercado imobiliário dessa cidade.

A rentabilidade do aluguel de um imóvel é calculada pela razão entre o valor mensal de aluguel e o valor de mercado desse imóvel.

Com base nos dados fornecidos, em que ano a rentabilidade do aluguel foi maior?', '2', 'medio', '["https://enem.dev/2022/questions/170/be397d74-899b-444a-b587-931e9c3505ca.png"]'),
  (2396, 1, 'Nos cinco jogos finais da última temporada, com uma média de 18 pontos por jogo, um jogador foi eleito o melhor do campeonato de basquete. Na atual temporada, cinco jogadores têm a chance de igualar ou melhorar essa média. No quadro estão registradas as pontuações desses cinco jogadores nos quatro primeiros jogos das finais deste ano.

O quinto e último jogo será realizado para decidir a equipe campeã e qual o melhor jogador da temporada.

O jogador que precisa fazer a menor quantidade de pontos no quinto jogo, para igualar a média de pontos do melhor jogador da temporada passada, é o', '2', 'medio', '["https://enem.dev/2022/questions/171/45b098d3-26d2-49c5-a129-40e85febb05b.png"]'),
  (2397, 1, 'Um casal planeja construir em sua chácara uma piscina com o formato de um paralelepípedo reto retângulo com capacidade para 90 000 L de água. O casal contratou uma empresa de construções que apresentou cinco projetos com diferentes combinações nas dimensões internas de profundidade, largura e comprimento. A piscina a ser construída terá revestimento interno em suas paredes e fundo com uma mesma cerâmica, e o casal irá escolher o projeto que exija a menor área de revestimento.

As dimensões internas de profundidade, largura e comprimento, respectivamente, para cada um dos projetos, são:

• projeto I: 1,8 m, 2,0 m e 25,0 m;  
• projeto II: 2,0 m, 5,0 m e 9,0 m;  
• projeto III: 1,0 m, 6,0 m e 15,0 m;  
• projeto IV: 1,5 m, 15,0 m e 4,0 m;  
• projeto V: 2,5 m, 3,0 m e 12,0 m.

O projeto que o casal deverá escolher será o', '2', 'medio', NULL),
  (2398, 1, 'Uma instituição de ensino superior ofereceu vagas em um processo seletivo de acesso a seus cursos. Finalizadas as inscrições, foi divulgada a relação do número de candidatos por vaga em cada um dos cursos oferecidos. Esses dados são apresentados no quadro.

Qual foi o número total de candidatos inscritos nesse processo seletivo?', '2', 'medio', '["https://enem.dev/2022/questions/173/0e6a9a19-bb58-4f93-bcb9-b7f26f5df5e7.png"]'),
  (2399, 1, 'Peças metálicas de aeronaves abandonadas em aeroportos serão recicladas. Uma dessas peças é maciça e tem o formato cilíndrico, com a medida do raio da base igual a 4 cm e a da altura igual a 50 cm. Ela será derretida, e o volume de metal resultante será utilizado para a fabricação de esferas maciças com diâmetro de 1 cm, a serem usadas para confeccionar rolamentos. Para estimar a quantidade de esferas que poderão ser produzidas a partir de cada uma das peças cilíndricas, admite-se que não ocorre perda de material durante o processo de derretimento.

Quantas dessas esferas poderão ser obtidas a partir de cada peça cilíndrica?', '2', 'medio', NULL),
  (2400, 1, 'Ao escutar a notícia de que um filme recém-lançado arrecadou, no primeiro mês de lançamento, R$ 1,35 bilhão em bilheteria, um estudante escreveu corretamente o número que representa essa quantia, com todos os seus  
algarismos.

O número escrito pelo estudante foi', '2', 'medio', NULL),
  (2401, 1, 'Pretende-se que a distância percorrida entre as duas cidades, pelas Rodovias 001 e 002, passando pelo ponto de conexão, seja a menor possível.
Dadas as exigências do projeto, qual das localizações sugeridas deve ser a escolhida para o ponto de conexão?', '2', 'medio', '["https://enem.dev/2022/questions/176/eebeabf5-0dec-4070-abd5-f803bb370dd9.png"]'),
  (2402, 1, 'Uma pessoa precisa contratar um operário para fazer um serviço em sua casa. Para isso, ela postou um anúncio em uma rede social.  
Cinco pessoas responderam informando preços por hora trabalhada, gasto diário com transporte e tempo necessário para conclusão do serviço, conforme valores apresentados no quadro.

Se a pessoa pretende gastar o mínimo possível com essa contratação, irá contratar o operário', '2', 'medio', '["https://enem.dev/2022/questions/177/fb1d11e4-76d3-4657-b78f-84e7bcd81f6c.png"]'),
  (2403, 1, 'Uma cozinheira produz docinhos especiais por encomenda. Usando uma receita-base de massa, ela prepara uma porção, com a qual produz 50 docinhos maciços de formato esférico, com 2 cm de diâmetro. Um cliente encomenda 150 desses docinhos, mas pede que cada um tenha formato esférico com 4 cm de diâmetro.  
A cozinheira pretende preparar o número exato de porções da receita-base de massa necessário para produzir os docinhos dessa encomenda

Quantas porções da receita-base de massa ela deve preparar para atender esse cliente?', '2', 'medio', NULL),
  (2404, 1, 'A esperança de vida ao nascer é o número médio de anos que um indivíduo tende a viver a partir de seu nascimento, considerando dados da população. No Brasil, esse número vem aumentando consideravelmente, como mostra o gráfico.

Disponível em: http://cod.ibge.gov.br. Acesso em: 6 mar. 2014 (adaptado).

Pode-se observar que a esperança de vida ao nascer em 2012 foi exatamente a média das registradas nos anos de 2011 e 2013. Suponha que esse fato também ocorreu com a esperança de vida ao nascer em 2013, em relação às esperanças de vida de 2012 e de 2014.

Caso a suposição feita tenha sido confirmada, a esperança de vida ao nascer no Brasil no ano de 2014 terá sido, em ano, igual a', '2', 'medio', '["https://enem.dev/2022/questions/179/08b6ac03-1a1c-4a0d-b246-dc37098794ad.png"]'),
  (2407, 1, 'É comum em viagens de avião sermos solicitados a desligar aparelhos cujo funcionamento envolva a emissão ou a recepção de ondas eletromagnéticas, como celulares. A justificativa dada para esse procedimento é, entre outras coisas, a necessidade de eliminar fontes de sinais eletromagnéticos que possam interferir nas comunicações, via rádio, dos pilotos com a torre de controle.

Essa interferência poderá ocorrer somente se as ondas emitidas pelo celular e as recebidas pelo rádio do avião', '2', 'medio', NULL),
  (2408, 1, 'O Aldrin é um inseticida agrícola organoclorado sintético de baixa polaridade, cuja estrutura molecular simétrica, de fórmula , está representada na figura. Introduzido na agricultura a partir da década de 1950, esse composto apresenta alta persistência no meio ambiente e acumulação nos organismos, sendo danoso para a saúde.

VIEGAS JÚNIOR, C. Terpenos com atividade inseticida: uma alternativa para o controle químico de insetos. **Química Nova**, v. 26, n. 3, 2003 (adaptado).

Um pesquisador coletou fluidos biológicos de indivíduos de uma população contaminada por esse inseticida agrícola. Ele analisou amostras de saliva, sangue, lágrima, urina e leite quanto à presença dessa substância.

Em qual dos fluidos o pesquisador provavelmente encontrou a maior concentração dessa substância?', '2', 'medio', '["https://enem.dev/broken-image.svg"]'),
  (2409, 1, 'Uma cafeteria adotou copos fabricados a partir de uma composição de 50% de plástico reciclado não biodegradável e 50% de casca de café. O copo é reutilizável e retornável, pois o material, semelhante a uma cerâmica, suporta a lavagem. Embora ele seja comercializado por um preço considerado alto quando comparado ao de um copo de plástico descartável, essa cafeteria possibilita aos clientes retornarem o copo sujo e levarem o café quente servido em outro copo já limpo e higienizado. O material desse copo oferece também o conforto de não esquentar na parte externa.

**Cafeteria adota copo reutilizável feito com casca de café.** Disponível em: www.gazetadopovo.com.br. Acesso em: 5 dez. 2019 (adaptado).

Quais duas vantagens esse copo apresenta em comparação ao copo descartável?', '2', 'medio', NULL),
  (2410, 1, 'O consumo exagerado de refrigerantes é preocupante, pois contribui para o aumento de casos de obesidade e diabetes. Considere dois refrigerantes enlatados, um comum e um diet, e que ambos possuam a mesma quantidade de aditivos, exceto pela presença de açúcar. O refrigerante comum contém basicamente água carbonatada e grande quantidade de açúcar; já o refrigerante diet tem água carbonatada e adoçantes, cujas massas são muito pequenas.

CAVAGIS, A. D. M.; PEREIRA, E. A.; OLIVEIRA, L. C. Um método simples para avaliar o teor de sacarose e CO2 em refrigerantes. **Química Nova na Escola**, n. 3, ago. 2014 (adaptado).

Entre as duas versões apresentadas, o refrigerante comum possui', '2', 'medio', NULL),
  (2411, 1, 'Um artista plástico esculpe uma escultura a partir de um bloco de madeira de lei, em etapas. Inicialmente, esculpe um cone reto com 36 cm de altura e diâmetro da base medindo 18 cm. Em seguida, remove desse cone um cone menor, cujo diâmetro da base mede 6 cm, obtendo, assim, um tronco de cone, conforme ilustrado na figura.

Em seguida, perfura esse tronco de cone, removendo um cilindro reto, de diâmetro 6 cm, cujo eixo de simetria é o mesmo do cone original. Dessa forma, ao final, a escultura tem a forma de um tronco de cone com uma perfuração cilíndrica de base a base.  
O tipo de madeira utilizada para produzir essa escultura tem massa igual a 0,6 g por centímetro cúbico de volume. Utilize 3 como aproximação para π.

Qual é a massa, em grama, dessa escultura?', '2', 'medio', '["https://enem.dev/2023/questions/136/565c2d5a-96a0-4468-9bb1-2710707a40fd.png"]'),
  (2412, 1, 'Os 100 funcionários de uma empresa estão distribuídos em dois setores: Produção e Administração.

Os funcionários de um mesmo setor recebem salários com valores iguais. O quadro apresenta a quantidade de funcionários por setor e seus respectivos salários.

A média dos salários dos 100 funcionários dessa empresa, em real, é', '2', 'medio', '["https://enem.dev/2023/questions/137/fc161c5c-10e9-46d8-a75d-09c59b21d5a4.png"]'),
  (2413, 1, 'Visando atrair mais clientes, o gerente de uma loja anunciou uma promoção em que cada cliente que realizar uma compra pode ganhar um voucher para ser usado em sua próxima compra. Para ganhar seu voucher, o cliente precisa retirar, ao acaso, uma bolinha de dentro de cada uma das duas urnas A e B disponibilizadas pelo gerente, nas quais há apenas bolinhas pretas e brancas. Atualmente, a probabilidade de se escolher, ao acaso, uma bolinha preta na urna A é igual a 20% e a probabilidade de se escolher uma bolinha preta na urna B é 25%. Ganha o voucher o cliente que retirar duas bolinhas pretas, uma de cada urna.

Com o passar dos dias, o gerente percebeu que, para a promoção ser viável aos negócios, era preciso alterar a probabilidade de acerto do cliente sem alterar a regra da promoção. Para isso, resolveu alterar a quantidade de bolinhas brancas na urna B de forma que a probabilidade de um cliente ganhar o voucher passasse a ser menor ou igual a 1%. Sabe-se que a urna B tem 4 bolinhas pretas e que, em ambas as urnas, todas as bolinhas têm a mesma probabilidade de serem retiradas.

Qual é o número mínimo de bolinhas brancas que o gerente deve adicionar à urna B?', '2', 'medio', NULL),
  (2414, 1, 'O gerente de uma fábrica pretende comparar a evolução das vendas de dois produtos similares (I e II). Para isso, passou a verificar o número de unidades vendidas de cada um desses produtos em cada mês. Os resultados dessa verificação, para os meses de abril a junho, são apresentados na tabela.

O gerente estava decidido a cessar a produção do produto II no mês seguinte àquele em que as vendas do produto I superassem as do produto II.  
Suponha que a variação na quantidade de unidades vendidas dos produtos I e II se manteve, mês a mês, como no período representado na tabela.

Em qual mês o produto II parou de ser produzido?', '2', 'medio', '["https://enem.dev/2023/questions/139/abba5cb1-da9d-4899-bda7-97099ca51147.png"]'),
  (2415, 1, 'Uma empresa de transporte faz regularmente um levantamento do número de viagens realizadas durante o dia por todos os 160 motoristas cadastrados em seu aplicativo. Em um certo dia, foi gerado um relatório, por meio de um gráfico de barras, no qual se relacionaram a quantidade de motoristas com a quantidade de viagens realizadas até aquele instante do dia.

Comparando os valores da média, da mediana e da moda da distribuição das quantidades de viagens realizadas pelos motoristas cadastrados nessa empresa, obtém-se', '2', 'medio', '["https://enem.dev/2023/questions/140/846c1155-c9f0-48ad-a862-f9bf883c3935.png"]'),
  (2417, 1, 'Qual é a quantidade mínima de água, em litro, que cada morador, em média, deverá economizar por dia, de modo que o reservatório não fique sem água nos próximos 10 dias?', '2', 'medio', NULL),
  (2418, 1, 'Em janeiro do ano passado, a direção de uma fábrica abriu uma creche para os filhos de seus funcionários, com 10 salas, cada uma com capacidade para atender 10 crianças a cada ano. As vagas são sorteadas entre os filhos dos funcionários inscritos, enquanto os não contemplados pelo sorteio formam uma lista de espera. No ano passado, a lista de espera teve 400 nomes e, neste ano, esse número cresceu 10%. A direção da fábrica realizou uma pesquisa e constatou que a lista de espera para o próximo ano terá a mesma quantidade de nomes da lista de espera deste ano. Decidiu, então, construir, ao longo desse ano, novas salas para a creche, também com capacidade de atendimento para 10 crianças cada, de modo que o número de nomes na lista de espera no próximo ano seja 25% menor que o deste ano.

O número mínimo de salas que deverão ser construídas é', '2', 'medio', NULL),
  (2419, 1, 'A foto mostra a construção de uma cisterna destinada ao armazenamento de água. Uma cisterna como essa, na forma de cilindro circular reto com 3 m² de área da base, foi abastecida por um curso-d’água com vazão constante. O seu proprietário registrou a altura do nível da água no interior da cisterna durante o abastecimento em diferentes momentos de um mesmo dia, conforme o quadro.

Disponível em: www.paraibamix.com. Acesso em: 3 dez. 2012.

Qual foi a vazão, em metro cúbico por hora, do curso-d’água que abasteceu a cisterna?', '2', 'medio', '["https://enem.dev/2023/questions/144/c606403f-fd10-4c02-8e46-736fece94b85.png","https://enem.dev/2023/questions/144/2107cabc-64d0-4a1f-9eab-fa7dce0e9ac2.png"]'),
  (2421, 1, 'Considere que os números colocados nos vértices do triângulo estejam em progressão aritmética de razão igual a 2.
Nas condições propostas, quais as possíveis soluções para as somas dos números que formam os lados do triângulo?', '2', 'medio', '["https://enem.dev/2023/questions/146/74e0c851-b2af-410d-9f19-3348dd8f883a.jpg"]'),
  (2422, 1, 'Alguns estudos comprovam que os carboidratos fornecem energia ao corpo, preservam as proteínas estruturais dos músculos durante a prática de atividade física e ainda dão força para o cérebro coordenar os movimentos, o que de fato tem impacto positivo no desenvolvimento do praticante. O ideal é consumir 1 grama de carboidrato para cada minuto de caminhada.
CIRINO, C. Boa pergunta: consumir carboidratos antes dos exercícios melhora o desempenho do atleta? Revista Saúde! É Vital, n. 330, nov. 2010 (adaptado).
Um casal realizará diariamente 30 minutos de caminhada, ingerindo, antes dessa atividade, a quantidade ideal de carboidratos recomendada. Para ter o consumo ideal apenas por meio do consumo de pão de fôrma integral, o casal planeja garantir o suprimento de pães para um período de 30 dias ininterruptos. Sabe-se que cada pacote desse pão vem com 18 fatias, e que cada uma delas tem 15 gramas de carboidratos.
A quantidade mínima de pacotes de pão de fôrma necessários para prover o suprimento a esse casal é', '2', 'medio', NULL),
  (2423, 1, 'Dirigir após ingerir bebidas alcoólicas é uma atitude extremamente perigosa, uma vez que, a partir da primeira dose, a pessoa já começa a ter perda de sensibilidade de movimentos e de reflexos. Apesar de a eliminação e absorção do álcool depender de cada pessoa e de como o organismo consegue metabolizar a substância, ao final da primeira hora após a ingestão, a concentração de álcool (C) no sangue corresponde a aproximadamente 90% da quantidade (q) de álcool ingerida, e a eliminação total dessa concentração pode demorar até 12 horas.

Disponível em: http://g1.globo.com. Acesso em: 1 dez. 2018 (adaptado).

Nessas condições, ao final da primeira hora após a ingestão da quantidade q de álcool, a concentração C dessa substância no sangue é expressa algebricamente por', '2', 'medio', NULL),
  (2424, 1, 'Um investidor iniciante observou o gráfico que apresenta a evolução dos valores de duas criptomoedas A e B em relação ao tempo.

Durante horas consecutivas, esses valores foram observados em nove instantes, representados por horas exatas.

Em quantos desses instantes a criptomoeda A estava mais valorizada do que a criptomoeda B?', '2', 'medio', '["https://enem.dev/2023/questions/151/276495a3-e5f2-4e4c-83b0-3473512a5274.png"]'),
  (2425, 1, 'A exposição a alguns níveis sonoros pode causar lesões auditivas. Por isso, em uma indústria, são adotadas medidas preventivas de acordo com a máquina que o funcionário opera e o nível _N_ de intensidade do som, medido em decibel (dB), a que o operário é exposto, sendo , _I_ a intensidade do som e .

Disponível em: www.sofisica.com.br. Acesso em: 8 jul. 2015 (adaptado).

Quando o som é considerado baixo, ou seja, _N_ = 48 dB ou menos, deve ser utilizada a medida preventiva I. No caso de o som ser moderado, quando _N_ está no intervalo (48 dB, 55 dB), deve ser utilizada a medida preventiva II. Quando o som é moderado alto, que equivale a _N_ no intervalo (55 dB, 80 dB), a medida preventiva a ser usada é a III. Se _N_ estiver no intervalo (80 dB, 115 dB), quando o som é considerado alto, deve ser utilizada a medida preventiva IV. E se o som é considerado muito alto, com _N_ maior que 115 dB, deve-se utilizar a medida preventiva V.  
Uma nova máquina, com , foi adquirida e será classificada de acordo com o nível de ruído que produz.  
Considere 0,3 como aproximação para .

O funcionário que operará a nova máquina deverá adotar a medida preventiva', '2', 'medio', '["https://enem.dev/2023/questions/152/30b0ee85-ac44-4eca-a7c9-54bd70f9c069.png","https://enem.dev/2023/questions/152/40f43a4f-f8da-44a9-a02c-f20ba89a48ce.png","https://enem.dev/2023/questions/152/13f26008-1dcf-404f-b3cf-aae104a036c1.png","https://enem.dev/2023/questions/152/717fdd2f-5eef-48c9-9211-8f62bdb2639c.png"]'),
  (2426, 1, 'Na planta baixa de um clube, a piscina é representada por um quadrado cuja área real mede 400 m². Ao redor dessa piscina, será construída uma calçada, de largura constante igual a 5 m.

Qual é a medida da área, em metro quadrado, ocupada pela calçada?', '2', 'medio', '["https://enem.dev/2023/questions/155/05746583-c107-4dd6-8a3b-7e7d0da99377.png"]'),
  (2427, 1, 'Uma pessoa caminha por 30 minutos e utiliza um aplicativo instalado em seu celular para monitorar a variação da intensidade do sinal de internet recebido pelo aparelho durante o deslocamento. Chegando ao seu destino, o aplicativo forneceu este gráfico:

Por quantos minutos, durante essa caminhada, o celular dessa pessoa ficou sem receber sinal de internet?', '2', 'medio', '["https://enem.dev/2023/questions/156/e9e0b793-5535-48e6-87c6-5516e6d7c8cd.png"]'),
  (2428, 1, 'Um professor, para promover a aprendizagem dos estudantes em estatística, propôs uma atividade. O objetivo era verificar o percentual de estudantes com massa corporal abaixo da média e altura acima da média de um grupo de estudantes. Para isso, usando uma balança e uma fita métrica, avaliou uma amostra de dez estudantes, anotando as medidas observadas. O gráfico apresenta a massa corporal, em quilograma, e a altura, em metro, obtidas na atividade

Após a coleta dos dados, os estudantes calcularam a média dos valores obtidos, referentes à massa corporal e à altura, obtendo, respectivamente, 80 kg e 1,65 m.

Qual é o percentual de estudantes dessa amostra com massa corporal abaixo da média e altura acima da média?', '2', 'medio', '["https://enem.dev/2023/questions/157/13cfbc97-0034-4904-9100-ff5ca3f6504e.png"]'),
  (2429, 1, 'Um pescador tem um custo fixo diário de R$ 900,00 com combustível, iscas, manutenção de seu barco e outras pequenas despesas. Ele vende cada quilograma de peixe por R$ 5,00. Sua meta é obter um lucro mínimo de R$ 800,00 por dia. Sozinho, ele consegue, ao final de um dia de trabalho, pescar 180 kg de peixe, o que é suficiente apenas para cobrir o custo fixo diário. Portanto, precisa contratar ajudantes, pagando para cada um R$ 250,00 por dia de trabalho. Além desse valor, 4%dareceita obtida pela venda de peixe é repartida igualmente entre os ajudantes. Considerando o tamanho de seu barco, ele pode contratar até 5 ajudantes. Ele sabe que com um ajudante a pesca diária é de 300 kg e que, a partir do segundo ajudante contratado, aumenta-se em 100 kg a quantidade de peixe pescada por ajudante em um dia de trabalho.

A quantidade mínima de ajudantes que esse pescador precisa contratar para conseguir o lucro diário pretendido é', '2', 'medio', NULL),
  (2430, 1, 'Um agricultor é informado sobre um método de proteção para sua lavoura que consiste em inserir larvas específicas, de rápida reprodução. A reprodução dessas larvas faz com que sua população multiplique-se por 10 a cada 3 dias e, para evitar eventuais desequilíbrios, é possível cessar essa reprodução aplicando-se um produto X. O agricultor decide iniciar esse método com 100 larvas e dispõe de 5 litros do produto X, cuja aplicação recomendada é de exatamente 1 litro para cada população de 200 000 larvas. A quantidade total do produto X de que ele dispõe deverá ser aplicada de uma única vez.

Quantos dias após iniciado esse método o agricultor deverá aplicar o produto X?', '2', 'medio', NULL),
  (2431, 1, 'Ao realizar o cadastro em um aplicativo de investimentos, foi solicitado ao usuário que criasse uma senha, sendo permitido o uso somente dos seguintes caracteres:

• algarismos de 0 a 9;

• 26 letras minúsculas do alfabeto;

• 26 letras maiúsculas do alfabeto;

• 6 caracteres especiais !, @, #, $, \\*, &.

Três tipos de estruturas para senha foram apresentadas ao usuário:

• tipo I: formada por quaisquer quatro caracteres distintos, escolhidos dentre os permitidos;

• tipo II: formada por cinco caracteres distintos, iniciando por três letras, seguidas por um algarismo e, ao final, um caractere especial;

• tipo III: formada por seis caracteres distintos, iniciando por duas letras, seguidas por dois algarismos e, ao final, dois caracteres especiais.

Considere  as probabilidades de se descobrirem ao acaso, na primeira tentativa, as senhas dos tipos I, II e III, respectivamente.

Nessas condições, o tipo de senha que apresenta a menor probabilidade de ser descoberta ao acaso, na primeira tentativa, é o', '2', 'medio', '["https://enem.dev/2023/questions/160/a2d565c2-f39f-4b43-b261-087e349850fe.png"]'),
  (2432, 1, 'Uma loja vende seus produtos de duas formas: à vista ou financiado em três parcelas mensais iguais. Para definir o valor dessas parcelas nas vendas financiadas, a loja aumenta em 20% o valor do produto à vista e divide esse novo valor por 3. A primeira parcela deve ser paga no ato da compra, e as duas últimas, em 30 e 60 dias após a compra.

Um cliente da loja decidiu comprar, de forma financiada, um produto cujo valor à vista é R$ 1 500,00.

Utilize 5,29 como aproximação para 28.

A taxa mensal de juros compostos praticada nesse financiamento é de', '2', 'medio', NULL),
  (2433, 1, 'Para concretar a laje de sua residência, uma pessoa contratou uma construtora. Tal empresa informa que o preço _y_ do concreto bombeado é composto de duas partes: uma fixa, chamada de taxa de bombeamento, e uma variável, que depende do volume _x_ de concreto utilizado. Sabe-se que a taxa de bombeamento custa R$ 500,00 e que o metro cúbico do concreto bombeado é de R$ 250,00.

A expressão que representa o preço y em função do volume x, em metro cúbico, é', '2', 'medio', NULL),
  (2435, 1, 'O gráfico expõe alguns números da gripe A-H1N1. Entre as categorias que estão em processo de imunização, uma já está completamente imunizada, a dos trabalhadores da saúde.

Época, 26 abr. 2010 (adaptado).

De acordo com o gráfico, entre as demais categorias, a que está mais exposta ao vírus da gripe A-H1N1 é a categoria de', '2', 'medio', '["https://enem.dev/2023/questions/164/194cf28a-b40d-493d-b106-8f71aee57f51.png"]'),
  (2436, 1, 'A figura representa uma escada com três degraus, construída em concreto maciço, com suas medidas especificadas.

Nessa escada, pisos e espelhos têm formato retangular, e as paredes laterais têm formato de um polígono cujos lados adjacentes são perpendiculares. Pisos, espelhos e paredes laterais serão revestidos em cerâmica.

A área a ser revestida em cerâmica, em metro quadrado, mede', '2', 'medio', '["https://enem.dev/2023/questions/165/bf369224-eb93-4bba-98c4-ff7d1e17df36.png"]'),
  (2437, 1, 'Uma pessoa pratica quatro atividades físicas — caminhar, correr, andar de bicicleta e jogar futebol — como parte de seu programa de emagrecimento. Essas atividades são praticadas semanalmente de acordo com o quadro, que apresenta o número de horas diárias por atividade.

Ela deseja comemorar seu aniversário e escolhe o dia da semana em que o gasto calórico com as atividades físicas  praticadas for o maior. Para tanto, considera que os valores dos gastos calóricos das atividades por hora (cal/h) são os seguintes:

O dia da semana em que será comemorado o aniversário é', '2', 'medio', '["https://enem.dev/2023/questions/166/80863c14-e426-4ae6-9ff0-03f5b3c71160.png","https://enem.dev/2023/questions/166/e3d70b62-2929-4694-ba58-cf45c0ac1374.png"]'),
  (2438, 1, 'A cada bimestre, a diretora de uma escola compra uma quantidade de folhas de papel ofício proporcional ao número de alunos matriculados. No bimestre passado, ela comprou 6 000 folhas para serem utilizadas pelos 1 200 alunos matriculados. Neste bimestre, alguns alunos cancelaram suas matrículas e a escola tem, agora, 1 150 alunos. A diretora só pode gastar R$ 220,00 nessa compra, e sabe que o fornecedor da escola vende as folhas de papel ofício em embalagens de 100 unidades a R$ 4,00 a embalagem. Assim, será preciso convencer o fornecedor a dar um desconto à escola, de modo que seja possível comprar a quantidade total de papel ofício necessária para o bimestre.

O desconto necessário no preço final da compra, em porcentagem, pertence ao intervalo', '2', 'medio', NULL),
  (2441, 1, 'Analisando as vendas de uma empresa, o gerente concluiu que o montante diário arrecadado, em milhar de real, poderia ser calculado pela expressão  , em que os valores de x representam os dias do mês, variando de 1 a 30.

Um dos fatores para avaliar o desempenho mensal da empresa é verificar qual é o menor montante diário  arrecadado ao longo do mês e classificar o desempenho conforme as categorias apresentadas a seguir, em que as quantidades estão expressas em milhar de real.

No caso analisado, qual seria a classificação do desempenho da empresa?', '2', 'medio', '["https://enem.dev/2023/questions/170/369b24e4-258e-4faf-b7df-0c2e3da3c22a.png","https://enem.dev/2023/questions/170/b158b079-eaf5-4f8c-84b1-99db8076a950.png","https://enem.dev/2023/questions/170/e7404490-a2b4-46e1-b1e6-3a8c828050fe.png"]'),
  (2442, 1, 'O calendário maia apresenta duas contagens simultâneas de anos, o chamado ano Tzolkim, composto por 260 dias e que determinava o calendário religioso, e o ano Haab, composto por 365 dias e que determinava o calendário agrícola. Um historiador encontrou evidências de que gerações de uma mesma família governaram certa comunidade maia pelo período de 20 ciclos, sendo cada ciclo formado por 52 anos Haab.

Disponível em: www.suapesquisa.com. Acesso em: 20 ago. 2014.

De acordo com as informações fornecidas, durante quantos anos Tzolkim aquela comunidade maia foi governada por tal família?', '2', 'medio', NULL),
  (2443, 1, 'Sejam _a_, _b_ e _c_ as medidas dos lados de um triângulo retângulo, tendo a como medida da hipotenusa. Esses valores _a_, _b_ e _c_ são, respectivamente, os diâmetros dos círculos _C1_ , _C2_ e _C3_, como apresentados na figura.

Observe que essa construção assegura, pelo teorema de Pitágoras, que área (C1) = área (C2) + área (C3).

Um professor de matemática era conhecedor dessa construção e, confraternizando com dois amigos em uma pizzaria onde são vendidas pizzas somente em formato de círculo, lançou um desafio: mesmo sem usar um instrumento de medição, poderia afirmar com certeza se a área do círculo correspondente à pizza que ele pedisse era maior, igual ou menor do que a soma das áreas das pizzas dos dois amigos. Assim, foram pedidas três pizzas. O professor as dividiu ao meio e formou um triângulo com os diâmetros das pizzas, conforme indicado na figura.

A partir da medida do ângulo a, o professor afirmou que a área de sua pizza é maior do que a soma das áreas das outras duas pizzas.

A área da pizza do professor de matemática é maior do que a soma das áreas das outras duas pizzas, pois', '2', 'medio', '["https://enem.dev/2023/questions/172/dcdd2743-6ad6-44e8-94ae-d2adec3a3400.png","https://enem.dev/2023/questions/172/8bd02f79-d5fb-4b8d-9321-c57434be3374.png"]'),
  (2445, 1, 'O metrô de um município oferece dois tipos de tíquetes com colorações diferentes, azul e vermelha, sendo vendidos em cartelas, cada qual com nove tíquetes da mesma cor e mesmo valor unitário. Duas cartelas de tíquetes azuis e uma cartela de tíquetes vermelhos são vendidas por R$ 32,40. Sabe-se que o preço de um tíquete azul menos o preço de um tíquete vermelho é igual ao preço de um tíquete vermelho mais cinco centavos.

Qual o preço, em real, de uma cartela de tíquetes vermelhos?', '2', 'medio', NULL),
  (2446, 1, 'Os números figurados pentagonais provavelmente foram introduzidos pelos pitagóricos por volta do século V a.C. As figuras ilustram como obter os seis primeiros deles, sendo os demais obtidos seguindo o mesmo padrão geométrico.

O oitavo número pentagonal é', '2', 'medio', '["https://enem.dev/2023/questions/176/d21e916b-a5fc-441e-b782-d2d4aca3522b.png"]'),
  (2449, 1, 'As características culturais variam de povo para povo. Há notícias de um povo que possuía formas de contar diferentes das nossas, como indicado no quadrinho a seguir.

Segundo o padrão de contagem indicado na figura, as representações dos numerais cinco e sete, nessa cultura, devem ser, respectivamente,', '2', 'medio', '["https://enem.dev/2023/questions/179/d2b83dd3-33ef-40d6-944a-b98d17f6411b.png"]'),
  (2450, 1, 'Um tipo de semente necessita de bastante água nos dois primeiros meses após o plantio. Um produtor pretende estabelecer o melhor momento para o plantio desse tipo de semente, nos meses de outubro a março. Após consultar a previsão do índice mensal de precipitação de chuva (ImPC) da região onde ocorrerá o plantio, para o período chuvoso de 2020-2021, ele obteve os seguintes dados:  
• outubro/2020: ImPC = 250 mm;  
• novembro/2020: ImPC = 150 mm;  
• dezembro/2020: ImPC = 200 mm;  
• janeiro/2021: ImPC = 450 mm;  
• fevereiro/2021: ImPC = 100 mm;  
• março/2021: ImPC = 200 mm.

Com base nessas previsões, ele precisa escolher dois meses consecutivos em que a média mensal de precipitação seja a maior possível.

No início de qual desses meses o produtor deverá plantar esse tipo de semente?', '2', 'medio', NULL),
  (2451, 1, 'Um tipo de semente necessita de bastante água nos dois primeiros meses após o plantio. Um produtor pretende estabelecer o melhor momento para o plantio desse tipo de semente, nos meses de outubro a março. Após consultar a previsão do índice mensal de precipitação de chuva (ImPC) da região onde ocorrerá o plantio, para o período chuvoso de 2020-2021, ele obteve os seguintes dados:  
• outubro/2020: ImPC = 250 mm;  
• novembro/2020: ImPC = 150 mm;  
• dezembro/2020: ImPC = 200 mm;  
• janeiro/2021: ImPC = 450 mm;  
• fevereiro/2021: ImPC = 100 mm;  
• março/2021: ImPC = 200 mm.

Com base nessas previsões, ele precisa escolher dois meses consecutivos em que a média mensal de precipitação seja a maior possível.

No início de qual desses meses o produtor deverá plantar esse tipo de semente?', '2', 'medio', NULL);

-- ===== alternativa =====
INSERT INTO alternativa (id, id_quiz, texto, eh_correta, file) VALUES
  (8124, 1798, '355 milhões.', 1, NULL),
  (8125, 1798, '400 milhões.', 0, NULL),
  (8126, 1798, '426 milhões.', 0, NULL),
  (8127, 1798, '441 milhões.', 0, NULL),
  (8128, 1798, '477 milhões.', 0, NULL),
  (8129, 1799, '25 min.', 0, NULL),
  (8130, 1799, '15 min.', 0, NULL),
  (8131, 1799, '2,5 min.', 0, NULL),
  (8132, 1799, '1,5 min.', 1, NULL),
  (8133, 1799, '0,15 min.', 0, NULL),
  (8134, 1800, '490 e 510 milhões.', 0, NULL),
  (8135, 1800, '550 e 620 milhões.', 0, NULL),
  (8136, 1800, '780 e 800 milhões.', 0, NULL),
  (8137, 1800, '810 e 860 milhões.', 0, NULL),
  (8138, 1800, '870 e 910 milhões.', 1, NULL),
  (8139, 1801, '1/2.', 0, NULL),
  (8140, 1801, '7/20.', 0, NULL),
  (8141, 1801, '8/25.', 1, NULL),
  (8142, 1801, '1/5.', 0, NULL),
  (8143, 1801, '3/25.', 0, NULL),
  (8144, 1802, '27,75 milhões de litros.', 0, NULL),
  (8145, 1802, '37,00 milhões de litros.', 0, NULL),
  (8146, 1802, '231,25 milhões de litros.', 0, NULL),
  (8147, 1802, '693,75 milhões de litros.', 1, NULL),
  (8148, 1802, '888,00 milhões de litros.', 0, NULL),
  (8149, 1803, 'O consumo diário de cigarros e o número de casos de câncer de pulmão são grandezas inversamente proporcionais.', 0, NULL),
  (8150, 1803, 'O consumo diário de cigarros e o número de casos de câncer de pulmão são grandezas que não se relacionam.', 0, NULL),
  (8151, 1803, 'O consumo diário de cigarros e o número de casos de câncer de pulmão são grandezas diretamente proporcionais.', 0, NULL),
  (8152, 1803, 'Uma pessoa não fumante certamente nunca será diagnosticada com câncer de pulmão.', 0, NULL),
  (8153, 1803, 'O consumo diário de cigarros e o número de casos de câncer de pulmão são grandezas que estão relacionadas, mas sem proporcionalidade.', 1, NULL),
  (8154, 1804, '23.940.', 0, NULL),
  (8155, 1804, '32.228.', 0, NULL),
  (8156, 1804, '920.800.', 0, NULL),
  (8157, 1804, '23.940.800.', 1, NULL),
  (8158, 1804, '32.228.000.', 0, NULL),
  (8159, 1805, '24 fusas.', 0, NULL),
  (8160, 1805, '3 semínimas.', 0, NULL),
  (8161, 1805, '8 semínimas.', 0, NULL),
  (8162, 1805, '24 colcheias e 12 semínimas.', 1, NULL),
  (8163, 1805, '16 semínimas e 8 semicolcheias.', 0, NULL),
  (8164, 1806, '2 × (0,2%)4.', 0, NULL),
  (8165, 1806, '4 × (0,2%)2.', 0, NULL),
  (8166, 1806, '6 × (0,2%)2  × (99,8%)2.', 1, NULL),
  (8167, 1806, '4 × (0,2%).', 0, NULL),
  (8168, 1806, '6 × (0,2%) × (99,8%).', 0, NULL),
  (8169, 1807, 'R$ 90,00.', 1, NULL),
  (8170, 1807, 'R$ 110,00.', 0, NULL),
  (8171, 1807, 'R$ 130,00.', 0, NULL),
  (8172, 1807, 'R$ 150,00.', 0, NULL),
  (8173, 1807, 'R$ 170,00.', 0, NULL),
  (8174, 1808, '1 após girá-la 90° no sentido horário.', 0, NULL),
  (8175, 1808, '1 após girá-la 180° no sentido anti-horário.', 0, NULL),
  (8176, 1808, '2 após girá-la 90° no sentido anti-horário.', 1, NULL),
  (8177, 1808, '2 após girá-la 180° no sentido horário.', 0, NULL),
  (8178, 1808, '2 após girá-la 270° no sentido anti-horário.', 0, NULL),
  (8179, 1809, 'Inferior a 0,18.', 0, NULL),
  (8180, 1809, 'Superior a 0,18 e inferior a 0,50.', 0, NULL),
  (8181, 1809, 'Superior a 0,50 e inferior a 1,50.', 0, NULL),
  (8182, 1809, 'Superior a 1,50 e inferior a 2,80.', 1, NULL),
  (8183, 1809, 'Superior a 2,80.', 0, NULL),
  (8184, 1811, 'Inferior a 300 milhões de dólares.', 0, NULL),
  (8185, 1811, 'Superior a 300 milhões de dólares, mas inferior a 400 milhões de dólares.', 0, NULL),
  (8186, 1811, 'Superior a 400 milhões de dólares, mas inferior a 500 milhões de dólares.', 0, NULL),
  (8187, 1811, 'Superior a 500 milhões de dólares, mas inferior a 600 milhões de dólares.', 1, NULL),
  (8188, 1811, 'Superior a 600 milhões de dólares.', 0, NULL),
  (8189, 1812, 'R$ 14,00.', 0, NULL),
  (8190, 1812, 'R$ 17,00.', 0, NULL),
  (8191, 1812, 'R$ 22,00.', 0, NULL),
  (8192, 1812, 'R$ 32,00.', 1, NULL),
  (8193, 1812, 'R$ 57,00.', 0, NULL),
  (8194, 1813, '1,5 x 102 vezes a capacidade do reservatório novo.', 0, NULL),
  (8195, 1813, '1,5 x 103 vezes a capacidade do reservatório novo.', 0, NULL),
  (8196, 1813, '1,5 x 106 vezes a capacidade do reservatório novo.', 0, NULL),
  (8197, 1813, '1,5 x 108 vezes a capacidade do reservatório novo.', 0, NULL),
  (8198, 1813, '1,5 x 109 vezes a capacidade do reservatório novo.', 1, NULL),
  (8199, 1814, 'Dois triângulos congruentes com lados correspondentes paralelos.', 1, NULL),
  (8200, 1814, 'Dois retângulos congruentes e com lados correspondentes paralelos.', 0, NULL),
  (8201, 1814, 'Dois trapézios congruentes com lados correspondentes perpendiculares.', 0, NULL),
  (8202, 1814, 'Dois paralelogramos congruentes com lados correspondentes paralelos.', 0, NULL),
  (8203, 1814, 'Dois quadriláteros congruentes com lados correspondentes perpendiculares.', 0, NULL),
  (8204, 1815, '1,16 metros.', 0, NULL),
  (8205, 1815, '3,0 metros.', 0, NULL),
  (8206, 1815, '5,4 metros.', 0, NULL),
  (8207, 1815, '5,6 metros.', 1, NULL),
  (8208, 1815, '7,04 metros.', 0, NULL),
  (8209, 1816, 'V = 10.000 + 50x – x².', 0, NULL),
  (8210, 1816, 'V = 10.000 + 50x + x².', 0, NULL),
  (8211, 1816, 'V = 15.000 – 50x – x².', 0, NULL),
  (8212, 1816, 'V = 15.000 + 50x – x².', 1, NULL),
  (8213, 1816, 'V = 15.000 – 50x + x².', 0, NULL),
  (8214, 1817, '0 e 9.', 1, NULL),
  (8215, 1817, '1 e 4.', 0, NULL),
  (8216, 1817, '1 e 7.', 0, NULL),
  (8217, 1817, '9 e 1.', 0, NULL),
  (8218, 1817, '0 e 1.', 0, NULL),
  (8219, 1818, '2,9 cm × 3,4 cm.', 0, NULL),
  (8220, 1818, '3,9 cm × 4,4 cm.', 0, NULL),
  (8221, 1818, '20 cm × 25 cm.', 0, NULL),
  (8222, 1818, '21 cm × 26 cm.', 1, NULL),
  (8223, 1818, '192 cm × 242 cm.', 0, NULL),
  (8224, 1819, 'Y = 30x.', 0, NULL),
  (8225, 1819, 'Y = 25x + 20,2.', 0, NULL),
  (8226, 1819, 'Y = 1,27x.', 0, NULL),
  (8227, 1819, 'Y = 0,7x.', 0, NULL),
  (8228, 1819, 'Y = 0,07x + 6.', 1, NULL),
  (8229, 1820, 'Manter sua proposta.', 0, NULL),
  (8230, 1820, 'Oferecer 4 máquinas a mais.', 0, NULL),
  (8231, 1820, 'Oferecer 6 trabalhadores a mais.', 0, NULL),
  (8232, 1820, 'Aumentar a jornada de trabalho para 9 horas diárias.', 1, NULL),
  (8233, 1820, 'Reduzir em R$ 400,00 o valor do aluguel diário de uma máquina.', 0, NULL),
  (8234, 1821, 'Teria a pontuação igual a 6,5 se ele obtivesse nota 0.', 0, NULL),
  (8235, 1821, 'Seria a vencedora se ele obtivesse nota 10.', 0, NULL),
  (8236, 1821, 'Seria a segunda colocada se ele obtivesse nota 8.', 0, NULL),
  (8237, 1821, 'Permaneceria na terceira posição, independentemente da nota obtida pelo aluno.', 1, NULL),
  (8238, 1821, 'Empataria com a equipe Ômega na primeira colocação se o aluno obtivesse nota 9.', 0, NULL),
  (8239, 1822, '920 kg.', 1, NULL),
  (8240, 1822, '800 kg.', 0, NULL),
  (8241, 1822, '720 kg.', 0, NULL),
  (8242, 1822, '600 kg.', 0, NULL),
  (8243, 1822, '570 kg.', 0, NULL),
  (8244, 1823, '617 kg.', 0, NULL),
  (8245, 1823, '668 kg.', 1, NULL),
  (8246, 1823, '680 kg.', 0, NULL),
  (8247, 1823, '689 kg.', 0, NULL),
  (8248, 1823, '717 kg.', 0, NULL),
  (8249, 1824, '50%.', 0, NULL),
  (8250, 1824, '43%', 0, NULL),
  (8251, 1824, '37%', 0, NULL),
  (8252, 1824, '33%', 0, NULL),
  (8253, 1824, '19%', 1, NULL),
  (8254, 1825, 'Uma combinação e um arranjo, respectivamente.', 1, NULL),
  (8255, 1825, 'Um arranjo e uma combinação, respectivamente.', 0, NULL),
  (8256, 1825, 'Um arranjo e uma permutação, respectivamente.', 0, NULL),
  (8257, 1825, 'Duas combinações.', 0, NULL),
  (8258, 1825, 'Dois arranjos.', 0, NULL),
  (8259, 1826, '1.400', 0, NULL),
  (8260, 1826, '14.000', 0, NULL),
  (8261, 1826, '140.000', 0, NULL),
  (8262, 1826, '1.400.000', 0, NULL),
  (8263, 1826, '14.000.000', 1, NULL),
  (8264, 1827, 'R$ 73,10.', 0, NULL),
  (8265, 1827, 'R$ 81,50.', 0, NULL),
  (8266, 1827, 'R$ 82,00.', 0, NULL),
  (8267, 1827, 'R$ 83,00.', 1, NULL),
  (8268, 1827, 'R$ 85,30.', 0, NULL),
  (8269, 1828, '90 m³/s.', 0, NULL),
  (8270, 1828, '750 m³/s.', 0, NULL),
  (8271, 1828, '1.050 m³/s.', 0, NULL),
  (8272, 1828, '1.512 m³/s.', 1, NULL),
  (8273, 1828, '2.009 m³/s.', 0, NULL),
  (8274, 1829, 'Um CD de 700 MB.', 0, NULL),
  (8275, 1829, 'Um pendrive de 1 GB.', 0, NULL),
  (8276, 1829, 'Um HD externo de 16 GB.', 0, NULL),
  (8277, 1829, 'Um memory stick de 16 MB.', 0, NULL),
  (8278, 1829, 'Um cartão de memória de 64 MB.', 1, NULL),
  (8279, 1830, '1 1/2 vez menor.', 0, NULL),
  (8280, 1830, '2 1/2 vezes menor.', 0, NULL),
  (8281, 1830, '4 vezes menor.', 1, NULL),
  (8282, 1830, '9 vezes menor.', 0, NULL),
  (8283, 1830, '14 vezes menor.', 0, NULL),
  (8284, 1831, '600 milhões de dólares.', 0, NULL),
  (8285, 1831, '840 milhões de dólares.', 0, NULL),
  (8286, 1831, '1,34 bilhão de dólares.', 1, NULL),
  (8287, 1831, '1,44 bilhão de dólares.', 0, NULL),
  (8288, 1831, '2,00 bilhões de dólares.', 0, NULL),
  (8289, 1832, '156 cm³.', 0, NULL),
  (8290, 1832, '189 cm³.', 1, NULL),
  (8291, 1832, '192 cm³.', 0, NULL),
  (8292, 1832, '216 cm³.', 0, NULL),
  (8293, 1832, '540 cm³.', 0, NULL),
  (8294, 1833, 'R( 1 - sen d/r ).', 0, NULL),
  (8295, 1833, 'R( 1 - cos d/r ).', 1, NULL),
  (8296, 1833, 'R( 1 - tag d/r ).', 0, NULL),
  (8297, 1833, 'Rsen (r/d).', 0, NULL),
  (8298, 1833, 'Rcos (r/d).', 0, NULL),
  (8299, 1834, '10.000.', 0, NULL),
  (8300, 1834, '7.500.', 0, NULL),
  (8301, 1834, '5.000.', 1, NULL),
  (8302, 1834, '4.500.', 0, NULL),
  (8303, 1834, '3.000.', 0, NULL),
  (8304, 1835, 'Não poderia fazer sequer a metade dos exercícios e dispor dos períodos de descanso especificados em seu programa.', 0, NULL),
  (8305, 1835, 'Poderia ter feito todos os exercícios e cumprido rigorosamente os períodos de descanso especificados em seu programa.', 1, NULL),
  (8306, 1835, 'Poderia ter feito todos os exercícios, mas teria de ter deixado de cumprir um dos períodos de descanso especificados em seu programa.', 0, NULL),
  (8307, 1835, 'Conseguiria fazer todos os exercícios e cumpriria todos os períodos de descanso especificados em seu programa, e ainda se permitiria uma pausa de 7 min.', 0, NULL),
  (8308, 1835, 'Não poderia fazer todas as 3 séries dos exercícios especificados em seu programa; em alguma dessas séries deveria ter feito uma série a menos e não deveria ter cumprido um dos períodos de descanso.', 0, NULL),
  (8309, 1836, 'Uma pirâmide de base quadrada tem 4 arestas laterais e a interseção de um plano com a pirâmide intercepta suas arestas laterais. Assim, esses pontos formam um polígono de 4 lados.', 0, NULL),
  (8310, 1836, 'Uma pirâmide de base quadrada tem 4 faces triangulares e, quando um plano intercepta essa pirâmide, divide cada face em um triângulo e um trapézio. Logo, um dos polígonos tem 4 lados.', 0, NULL),
  (8311, 1836, 'Uma pirâmide de base quadrada tem 5 faces e a interseção de uma face com um plano é um segmento de reta. Assim, se o plano interceptar todas as faces, o polígono obtido nessa interseção tem 5 lados.', 1, NULL),
  (8312, 1836, 'O número de lados de qualquer polígono obtido como interseção de uma pirâmide com um plano é igual ao número de faces da pirâmide. Como a pirâmide tem 5 faces, o polígono tem 5 lados.', 0, NULL),
  (8313, 1836, 'O número de lados de qualquer polígono obtido interceptando-se uma pirâmide por um plano é igual ao número de arestas laterais da pirâmide. Como a pirâmide tem 4 arestas laterais, o polígono tem 4 lados.', 0, NULL),
  (8314, 1837, 'Renegociar suas dívidas com o banco.', 0, NULL),
  (8315, 1837, 'Pegar emprestado de José o dinheiro referente à quitação das duas dívidas.', 0, NULL),
  (8316, 1837, 'Recusar o empréstimo de José e pagar todas as parcelas pendentes nos devidos prazos.', 0, NULL),
  (8317, 1837, 'Pegar emprestado de José o dinheiro referente à quitação do cheque especial e pagar as parcelas do cartão de crédito.', 0, NULL),
  (8318, 1837, 'Pegar emprestado de José o dinheiro referente à quitação do cartão de crédito e pagar as parcelas do cheque especial.', 1, NULL),
  (8319, 1838, '6 metros por 5 metros, pois assim teria uma área de 30 m² .', 0, NULL),
  (8320, 1838, '15 metros por 20 metros, pois assim teria uma área de 300 m² .', 1, NULL),
  (8321, 1838, '50 metros por 60 metros, pois assim teria uma área de 3.000 m² .', 0, NULL),
  (8322, 1838, '91 metros por 30 metros, pois assim teria uma área de 2.730 m² .', 0, NULL),
  (8323, 1838, '110 metros por 30 metros, pois assim teria uma área de 3.300 m² .', 0, NULL),
  (8324, 1839, '3 doses.', 0, NULL),
  (8325, 1839, '4 doses.', 1, NULL),
  (8326, 1839, '6 doses.', 0, NULL),
  (8327, 1839, '8 doses.', 0, NULL),
  (8328, 1839, '10 doses.', 0, NULL),
  (8329, 1841, '1 : 20', 0, NULL),
  (8330, 1841, '1 : 100', 0, NULL),
  (8331, 1841, '1 : 200', 0, NULL),
  (8332, 1841, '1 : 1 000', 0, NULL),
  (8333, 1841, '1 : 2 000', 1, NULL),
  (8334, 1843, '5 cm.', 1, NULL),
  (8335, 1843, '6 cm.', 0, NULL),
  (8336, 1843, '12 cm.', 0, NULL),
  (8337, 1843, '24 cm.', 0, NULL),
  (8338, 1843, '25 cm.', 0, NULL),
  (8339, 1844, '13º', 0, NULL),
  (8340, 1844, '12º', 1, NULL),
  (8341, 1844, '11º', 0, NULL),
  (8342, 1844, '10º', 0, NULL),
  (8343, 1844, '9º', 0, NULL),
  (8344, 1845, '5 513', 0, NULL),
  (8345, 1845, '6 556', 0, NULL),
  (8346, 1845, '7 450', 0, NULL),
  (8347, 1845, '8 344', 1, NULL),
  (8348, 1845, '9 536', 0, NULL),
  (8349, 1847, '100 km² e 900 km².', 0, NULL),
  (8350, 1847, '1 000 km² e 2 700 km².', 0, NULL),
  (8351, 1847, '2 800 km² e 3 200 km².', 1, NULL),
  (8352, 1847, '3 300 km² e 4 000 km².', 0, NULL),
  (8353, 1847, '4 100 km² e 5 800 km².', 0, NULL),
  (8354, 1848, 'Direta, direta e direta.', 0, NULL),
  (8355, 1848, 'Direta, direta e inversa.', 0, NULL),
  (8356, 1848, 'Direta, inversa e direta.', 1, NULL),
  (8357, 1848, 'Inversa, direta e direta.', 0, NULL),
  (8358, 1848, 'Inversa, direta e inversa.', 0, NULL),
  (8359, 1849, '24500', 1, NULL),
  (8360, 1849, '25000', 0, NULL),
  (8361, 1849, '220500', 0, NULL),
  (8362, 1849, '223000', 0, NULL),
  (8363, 1849, '227500', 0, NULL),
  (8364, 1850, 'Massa.', 0, NULL),
  (8365, 1850, 'Volume.', 1, NULL),
  (8366, 1850, 'Superfície.', 0, NULL),
  (8367, 1850, 'Capacidade.', 0, NULL),
  (8368, 1850, 'Comprimento.', 0, NULL),
  (8369, 1851, 'E1E3.', 0, NULL),
  (8370, 1851, 'E1E4.', 0, NULL),
  (8371, 1851, 'E2E4.', 0, NULL),
  (8372, 1851, 'E2E5.', 1, NULL),
  (8373, 1851, 'E2E6', 0, NULL),
  (8374, 1852, 'U$ 4.174.000,00.', 0, NULL),
  (8375, 1852, 'U$ 41.740.000,00.', 0, NULL),
  (8376, 1852, 'U$ 417.400.000,00.', 0, NULL),
  (8377, 1852, 'U$ 41.740.000.000,00.', 0, NULL),
  (8378, 1852, 'U$ 417.400.000.000,00.', 1, NULL),
  (8379, 1853, 'C = 4Q', 0, NULL),
  (8380, 1853, 'C = 3Q + 1', 1, NULL),
  (8381, 1853, 'C = 4Q + 1', 0, NULL),
  (8382, 1853, 'C = Q + 3', 0, NULL),
  (8383, 1853, 'C = 4Q – 2', 0, NULL),
  (8384, 1854, 'O dobro do valor da primeira encomenda, porque a altura e a largura dos quadros dobraram.', 0, NULL),
  (8385, 1854, 'Maior do que o valor da primeira encomenda, mas não o dobro.', 1, NULL),
  (8386, 1854, 'A metade do valor da primeira encomenda, porque a altura e a largura dos quadros dobraram.', 0, NULL),
  (8387, 1854, 'Menor do que o valor da primeira encomenda, mas não a metade.', 0, NULL),
  (8388, 1854, 'Igual ao valor da primeira encomenda, porque o custo de entrega será o mesmo.', 0, NULL),
  (8389, 1855, 'Encher a leiteira até a metade, pois ela tem um volume 20 vezes maior que o volume do copo.', 1, NULL),
  (8390, 1855, 'Encher a leiteira toda de água, pois ela tem um volume 20 vezes maior que o volume do copo.', 0, NULL),
  (8391, 1855, 'Encher a leiteira toda de água, pois ela tem um volume 10 vezes maior que o volume do copo.', 0, NULL),
  (8392, 1855, 'Encher duas leiteiras de água, pois ela tem um volume 10 vezes maior que o volume do copo.', 0, NULL),
  (8393, 1855, 'Encher cinco leiteiras de água, pois ela tem um volume 10 vezes maior que o volume do copo.', 0, NULL),
  (8394, 1856, '12 765 km.', 0, NULL),
  (8395, 1856, '12 000 km', 1, NULL),
  (8396, 1856, '11 730 km', 0, NULL),
  (8397, 1856, '10 965 km.', 0, NULL),
  (8398, 1856, '5 865 km', 0, NULL),
  (8399, 1857, 'I, pela relação área/capacidade de armazenamento de 1/3', 0, NULL),
  (8400, 1857, 'I, pela relação área/capacidade de armazenamento de 4/3', 0, NULL),
  (8401, 1857, 'II, pela relação área/capacidade de armazenamento de 3/4', 0, NULL),
  (8402, 1857, 'III, pela relação área/capacidade de armazenamento de 2/3', 1, NULL),
  (8403, 1857, 'III, pela relação área/capacidade de armazenamento de 7/12', 0, NULL),
  (8404, 1858, 'Insuficiente.', 0, NULL),
  (8405, 1858, 'Regular.', 0, NULL),
  (8406, 1858, 'Bom.', 1, NULL),
  (8407, 1858, 'Ótimo.', 0, NULL),
  (8408, 1858, 'Excelente.', 0, NULL),
  (8409, 1859, '476', 0, NULL),
  (8410, 1859, '675', 0, NULL),
  (8411, 1859, '923', 1, NULL),
  (8412, 1859, '965', 0, NULL),
  (8413, 1859, '1538', 0, NULL),
  (8414, 1860, 'Menor ou igual a 200 m.', 1, NULL),
  (8415, 1860, 'Maior que 200 m e menor ou igual a 400 m.', 0, NULL),
  (8416, 1860, 'Maior que 400 m e menor ou igual a 600 m', 0, NULL),
  (8417, 1860, 'Maior que 600 m e menor ou igual a 800 m.', 0, NULL),
  (8418, 1860, 'Maior que 800 m.', 0, NULL),
  (8419, 1861, 'R$ 230,40.', 0, NULL),
  (8420, 1861, 'R$ 124,00.', 0, NULL),
  (8421, 1861, 'R$ 104,16.', 0, NULL),
  (8422, 1861, 'R$ 54,56.', 1, NULL),
  (8423, 1861, 'R$ 49,60.', 0, NULL),
  (8424, 1862, '29,9 toneladas.', 1, NULL),
  (8425, 1862, '31,1 toneladas.', 0, NULL),
  (8426, 1862, '32,4 toneladas.', 0, NULL),
  (8427, 1862, '35,3 toneladas.', 0, NULL),
  (8428, 1862, '41,8 toneladas.', 0, NULL),
  (8429, 1863, '0,4 cm/kg1/3.', 0, NULL),
  (8430, 1863, '2,5 cm/kg1/3.', 0, NULL),
  (8431, 1863, '8 cm/kg1/3.', 0, NULL),
  (8432, 1863, '20 cm/kg1/3.', 0, NULL),
  (8433, 1863, '40 cm/kg1/3.', 1, NULL),
  (8434, 1864, '1,8 km', 0, NULL),
  (8435, 1864, '1,9 km', 0, NULL),
  (8436, 1864, '3,1 km', 1, NULL),
  (8437, 1864, '3,7 km', 0, NULL),
  (8438, 1864, '5,5 km', 0, NULL),
  (8439, 1865, 'À mesma área do triângulo AMC.', 0, NULL),
  (8440, 1865, 'À mesma área do triângulo BNC.', 0, NULL),
  (8441, 1865, 'À metade da área formada pelo triângulo ABC.', 0, NULL),
  (8442, 1865, 'Ao dobro da área do triângulo MNC.', 0, NULL),
  (8443, 1865, 'Ao triplo da área do triângulo MNC.', 1, NULL),
  (8444, 1866, '1 mm.', 0, NULL),
  (8445, 1866, '10 mm.', 0, NULL),
  (8446, 1866, '17 mm.', 0, NULL),
  (8447, 1866, '160 mm.', 1, NULL),
  (8448, 1866, '167 mm.', 0, NULL),
  (8449, 1867, 'Y = R.', 0, NULL),
  (8450, 1867, 'Y = 2R.', 0, NULL),
  (8451, 1867, 'Y = πR.', 0, NULL),
  (8452, 1867, 'Y = 2πR.', 0, NULL),
  (8453, 1867, 'Y = 4πR.', 1, NULL),
  (8454, 1868, '1 cm.', 0, NULL),
  (8455, 1868, '2 cm.', 1, NULL),
  (8456, 1868, '3 cm.', 0, NULL),
  (8457, 1868, '4 cm.', 0, NULL),
  (8458, 1868, '5 cm.', 0, NULL),
  (8459, 1869, '100.', 0, NULL),
  (8460, 1869, '108.', 0, NULL),
  (8461, 1869, '128.', 0, NULL),
  (8462, 1869, '130.', 1, NULL),
  (8463, 1869, '150.', 0, NULL),
  (8464, 1870, 'Menor que 1 150.', 0, NULL),
  (8465, 1870, '218 unidades maior que em 2004.', 0, NULL),
  (8466, 1870, 'Maior que 1 150 e menor que 1 200.', 1, NULL),
  (8467, 1870, '177 unidades maior que em 2010.', 0, NULL),
  (8468, 1870, 'Maior que 1 200.', 0, NULL),
  (8469, 1871, '6 gols', 0, NULL),
  (8470, 1871, '6,5 gols', 1, NULL),
  (8471, 1871, '7 gols', 0, NULL),
  (8472, 1871, '7,3 gols', 0, NULL),
  (8473, 1871, '8,5 gols', 0, NULL),
  (8474, 1872, '1,33', 0, NULL),
  (8475, 1872, '6,00', 1, NULL),
  (8476, 1872, '12,00', 0, NULL),
  (8477, 1872, '56,52', 0, NULL),
  (8478, 1872, '113,04', 0, NULL),
  (8479, 1873, '4,0 m e 5,0 m.', 0, NULL),
  (8480, 1873, '5,0 m e 6,0 m.', 0, NULL),
  (8481, 1873, '6,0 m e 7,0 m.', 0, NULL),
  (8482, 1873, '7,0 m e 8,0 m.', 1, NULL),
  (8483, 1873, '8,0 m e 9,0 m.', 0, NULL),
  (8484, 1874, 'Marco, pois a média e a mediana são iguais.', 0, NULL),
  (8485, 1874, 'Marco, pois obteve menor desvio padrão.', 1, NULL),
  (8486, 1874, 'Paulo, pois obteve a maior pontuação da tabela, 19 em Português.', 0, NULL),
  (8487, 1874, 'Paulo, pois obteve maior mediana.', 0, NULL),
  (8488, 1874, 'Paulo, pois obteve maior desvio padrão.', 0, NULL),
  (8489, 1875, '16%', 0, NULL),
  (8490, 1875, '24%', 1, NULL),
  (8491, 1875, '32%', 0, NULL),
  (8492, 1875, '48%', 0, NULL),
  (8493, 1875, '64%', 0, NULL),
  (8494, 1876, '22,5%.', 0, NULL),
  (8495, 1876, '50,0%.', 0, NULL),
  (8496, 1876, '52,3%.', 1, NULL),
  (8497, 1876, '65,5%.', 0, NULL),
  (8498, 1876, '77,5%.', 0, NULL),
  (8499, 1877, '60 min.', 0, NULL),
  (8500, 1877, '90 min.', 1, NULL),
  (8501, 1877, '120 min.', 0, NULL),
  (8502, 1877, '180 min.', 0, NULL),
  (8503, 1877, '360 min.', 0, NULL),
  (8504, 1878, '1/3', 0, NULL),
  (8505, 1878, '1/5', 0, NULL),
  (8506, 1878, '2/5', 0, NULL),
  (8507, 1878, '5/7', 1, NULL),
  (8508, 1878, '5/14', 0, NULL),
  (8509, 1879, 'X = Y < Z.', 0, NULL),
  (8510, 1879, 'Z < X = Y.', 0, NULL),
  (8511, 1879, 'Y < Z < X.', 0, NULL),
  (8512, 1879, 'Z < X < Y.', 0, NULL),
  (8513, 1879, 'Z < Y < X.', 1, NULL),
  (8514, 1880, '406', 0, NULL),
  (8515, 1880, '1 334', 1, NULL),
  (8516, 1880, '4 002', 0, NULL),
  (8517, 1880, '9 338', 0, NULL),
  (8518, 1880, '28 014', 0, NULL),
  (8519, 1881, '10 -²', 0, NULL),
  (8520, 1881, '10³', 0, NULL),
  (8521, 1881, '10^4', 0, NULL),
  (8522, 1881, '10^6', 0, NULL),
  (8523, 1881, '10^9', 1, NULL),
  (8524, 1882, '12 cm³', 0, NULL),
  (8525, 1882, '64 cm³', 0, NULL),
  (8526, 1882, '96 cm³', 0, NULL),
  (8527, 1882, '1216 cm³', 1, NULL),
  (8528, 1882, '1728 cm³', 0, NULL),
  (8529, 1883, '9', 0, NULL),
  (8530, 1883, '45', 0, NULL),
  (8531, 1883, '64', 0, NULL),
  (8532, 1883, '81', 1, NULL),
  (8533, 1883, '285', 0, NULL),
  (8534, 1884, '2004-2005', 0, NULL),
  (8535, 1884, '2005-2006', 0, NULL),
  (8536, 1884, '2006-2007', 0, NULL),
  (8537, 1884, '2007-2008', 0, NULL),
  (8538, 1884, '2008-2009', 1, NULL),
  (8539, 1885, '2004-2005', 0, NULL),
  (8540, 1885, '2005-2006', 0, NULL),
  (8541, 1885, '2006-2007', 0, NULL),
  (8542, 1885, '2007-2008', 0, NULL),
  (8543, 1885, '2008-2009', 1, NULL),
  (8544, 1886, '68,21 mm.', 0, NULL),
  (8545, 1886, '68,102 mm.', 0, NULL),
  (8546, 1886, '68,02 mm.', 0, NULL),
  (8547, 1886, '68,012 mm.', 0, NULL),
  (8548, 1886, '68,001 mm.', 1, NULL),
  (8549, 1887, '10-5,10', 0, NULL),
  (8550, 1887, '10-0,73', 0, NULL),
  (8551, 1887, '1012,00', 0, NULL),
  (8552, 1887, '1021,65', 0, NULL),
  (8553, 1887, '1027,00', 1, NULL),
  (8554, 1888, '0,23 e 0,16.', 0, NULL),
  (8555, 1888, '2,3 e 1,6.', 1, NULL),
  (8556, 1888, '23 e 16.', 0, NULL),
  (8557, 1888, '230 e 160.', 0, NULL),
  (8558, 1888, '2 300 e 1 600.', 0, NULL),
  (8559, 1889, '2 614.', 1, NULL),
  (8560, 1889, '2 624.', 0, NULL),
  (8561, 1889, '2 715.', 0, NULL),
  (8562, 1889, '2 725.', 0, NULL),
  (8563, 1889, '4 162.', 0, NULL),
  (8564, 1890, '1.', 0, NULL),
  (8565, 1890, '2.', 0, NULL),
  (8566, 1890, '3.', 1, NULL),
  (8567, 1890, '4.', 0, NULL),
  (8568, 1890, '5.', 0, NULL),
  (8569, 1891, '50 minutos.', 0, NULL),
  (8570, 1891, '60 minutos.', 1, NULL),
  (8571, 1891, '80 minutos.', 0, NULL),
  (8572, 1891, '120 minutos.', 0, NULL),
  (8573, 1891, '170 minutos.', 0, NULL),
  (8574, 1892, '17°C, 17°C e 13,5°C.', 0, NULL),
  (8575, 1892, '17°C, 18°C e 13,5°C.', 1, NULL),
  (8576, 1892, '17°C, 13,5°C e 18°C.', 0, NULL),
  (8577, 1892, '17°C, 18°C e 21,5°C.', 0, NULL),
  (8578, 1892, '17°C, 13,5°C e 21,5°C.', 0, NULL),
  (8579, 1893, '4,8 e 11,2', 0, NULL),
  (8580, 1893, '7,0 e 3,0', 0, NULL),
  (8581, 1893, '11,2 e 4,8', 1, NULL),
  (8582, 1893, '28,0 e 12,0', 0, NULL),
  (8583, 1893, '30,0 e 70,0', 0, NULL),
  (8584, 1894, 'Todos iguais.', 0, NULL),
  (8585, 1894, 'Todos diferentes.', 0, NULL),
  (8586, 1894, 'Três iguais e um diferente.', 0, NULL),
  (8587, 1894, 'Apenas dois iguais.', 0, NULL),
  (8588, 1894, 'Iguais dois a dois.', 1, NULL),
  (8589, 1895, '8 bilhões de litros.', 0, NULL),
  (8590, 1895, '16 bilhões de litros.', 0, NULL),
  (8591, 1895, '32 bilhões de litros.', 0, NULL),
  (8592, 1895, '40 bilhões de litros.', 0, NULL),
  (8593, 1895, '48 bilhões de litros.', 1, NULL),
  (8594, 1896, '1 : 250.', 0, NULL),
  (8595, 1896, '1 : 2 500.', 0, NULL),
  (8596, 1896, '1 : 25 000.', 0, NULL),
  (8597, 1896, '1 : 250 000.', 0, NULL),
  (8598, 1896, '1 : 25 000 000.', 1, NULL),
  (8599, 1897, '3 390 pés', 0, NULL),
  (8600, 1897, '9 390 pés', 0, NULL),
  (8601, 1897, '11 200 pés', 1, NULL),
  (8602, 1897, '19 800 pés', 0, NULL),
  (8603, 1897, '50 800 pés', 0, NULL),
  (8604, 1898, '(–5, 0).', 0, NULL),
  (8605, 1898, '(–3, 1).', 1, NULL),
  (8606, 1898, '(–2, 1).', 0, NULL),
  (8607, 1898, '(0, 4).', 0, NULL),
  (8608, 1898, '(2, 6).', 0, NULL),
  (8609, 1899, '14,6%', 0, NULL),
  (8610, 1899, '18,2%', 0, NULL),
  (8611, 1899, '18,4%', 1, NULL),
  (8612, 1899, '19,0%', 0, NULL),
  (8613, 1899, '21,0%', 0, NULL),
  (8614, 1900, '1 000 m.', 0, NULL),
  (8615, 1900, '1 000 √3 m.', 1, NULL),
  (8616, 1900, '2 000 √3/3 m.', 0, NULL),
  (8617, 1900, '2 000 m', 0, NULL),
  (8618, 1900, '2 000 √3 m.', 0, NULL),
  (8619, 1901, 'Y = 4 300x', 0, NULL),
  (8620, 1901, 'Y = 884 905x', 0, NULL),
  (8621, 1901, 'Y = 872 005 + 4 300x', 1, NULL),
  (8622, 1901, 'Y = 876 305 + 4 300x', 0, NULL),
  (8623, 1901, 'Y = 880 605 + 4 300x', 0, NULL),
  (8624, 1902, 'R$ 0,27.', 0, NULL),
  (8625, 1902, 'R$ 0,29.', 1, NULL),
  (8626, 1902, 'R$ 0,32.', 0, NULL),
  (8627, 1902, 'R$ 0,34.', 0, NULL),
  (8628, 1902, 'R$ 0,61.', 0, NULL),
  (8629, 1903, '100n + 350 = 120n + 150', 1, NULL),
  (8630, 1903, '100n + 150 = 120n + 350', 0, NULL),
  (8631, 1903, '100(n + 350) = 120(n + 150)', 0, NULL),
  (8632, 1903, '100(n + 350 000) = 120(n + 150 000)', 0, NULL),
  (8633, 1903, '350(n + 100 000) = 150(n + 120 000)', 0, NULL),
  (8634, 1904, 'R$ 4 222,22.', 0, NULL),
  (8635, 1904, 'R$ 4 523,80.', 0, NULL),
  (8636, 1904, 'R$ 5 000,00.', 1, NULL),
  (8637, 1904, 'D R$ 13 300,00.', 0, NULL),
  (8638, 1904, 'R$ 17 100,00.', 0, NULL),
  (8639, 1905, '250.', 0, NULL),
  (8640, 1905, '25.', 1, NULL),
  (8641, 1905, '2,5.', 0, NULL),
  (8642, 1905, '0,25.', 0, NULL),
  (8643, 1905, '0,025.', 0, NULL),
  (8644, 1906, '38 000', 0, NULL),
  (8645, 1906, '40 500', 0, NULL),
  (8646, 1906, '41 000', 0, NULL),
  (8647, 1906, '42 000', 1, NULL),
  (8648, 1906, '48 000', 0, NULL),
  (8649, 1907, '1/5', 0, NULL),
  (8650, 1907, '1/4', 0, NULL),
  (8651, 1907, '2/5', 0, NULL),
  (8652, 1907, '3/5', 0, NULL),
  (8653, 1907, '3/4', 1, NULL),
  (8654, 1908, '0,8', 0, NULL),
  (8655, 1908, '1,6', 0, NULL),
  (8656, 1908, '5,6', 0, NULL),
  (8657, 1908, '11,2', 1, NULL),
  (8658, 1908, '33,6', 0, NULL),
  (8659, 1909, '1', 1, NULL),
  (8660, 1909, '4', 0, NULL),
  (8661, 1909, '5', 0, NULL),
  (8662, 1909, '7', 0, NULL),
  (8663, 1909, '8', 0, NULL),
  (8664, 1910, '4 mil.', 0, NULL),
  (8665, 1910, '9 mil.', 0, NULL),
  (8666, 1910, '21 mil.', 0, NULL),
  (8667, 1910, '35 mil.', 1, NULL),
  (8668, 1910, '39 mil.', 0, NULL),
  (8669, 1911, '20 mL.', 0, NULL),
  (8670, 1911, '24 mL.', 0, NULL),
  (8671, 1911, '100 mL.', 1, NULL),
  (8672, 1911, '120 mL.', 0, NULL),
  (8673, 1911, '600 mL.', 0, NULL),
  (8674, 1912, 'Arthur, pois a soma que escolheu é a menor.', 0, NULL),
  (8675, 1912, 'Bernardo, pois há 7 possibilidades de compor a soma escolhida por ele, contra 4 possibilidades para a escolha de Arthur e 4 possibilidades para a escolha de Caio.', 0, NULL),
  (8676, 1912, 'Bernardo, pois há 7 possibilidades de compor a soma escolhida por ele, contra 5 possibilidades para a escolha de Arthur e 4 possibilidades para a escolha de Caio.', 1, NULL),
  (8677, 1912, 'Caio, pois há 10 possibilidades de compor a soma escolhida por ele, contra 5 possibilidades para a escolha de Arthur e 8 possibilidades para a escolha de Bernardo.', 0, NULL),
  (8678, 1912, 'Caio, pois a soma que escolheu é a maior.', 0, NULL),
  (8679, 1913, 'Duílio tem o IMC 26,7 e Sandra tem o IMC 26,6, estando ambos na categoria de sobrepeso.', 0, NULL),
  (8680, 1913, 'Duílio tem o IMC 27,3 e Sandra tem o IMC 29,1estando ambos na categoria de sobrepeso.', 1, NULL),
  (8681, 1913, 'Duílio tem o IMC 27,3 e Sandra tem o IMC 26,6, estando ambos na categoria de sobrepeso.', 0, NULL),
  (8682, 1913, 'Duílio tem o IMC 25,6, estando na categoria de sobrepeso, e Sandra tem o IMC 24,7, estando na categoria de peso normal.', 0, NULL),
  (8683, 1913, 'Duílio tem o IMC 25,1, estando na categoria de sobrepeso, e Sandra tem o IMC 22,6, estando na categoria de peso normal.', 0, NULL),
  (8684, 1914, '8%.', 0, NULL),
  (8685, 1914, '9%.', 0, NULL),
  (8686, 1914, '11%.', 1, NULL),
  (8687, 1914, '12%.', 0, NULL),
  (8688, 1914, '22%.', 0, NULL),
  (8689, 1915, 'K, I e F.', 0, NULL),
  (8690, 1915, 'K, J, I, G, L e F.', 0, NULL),
  (8691, 1915, 'K, L, G, I, J, H e F.', 1, NULL),
  (8692, 1915, 'K, J, H, I, G, L e F.', 0, NULL),
  (8693, 1915, 'K, L, G, I, H, J e F.', 0, NULL),
  (8694, 1916, '1998 e 2001', 0, NULL),
  (8695, 1916, '2001 e 2003', 0, NULL),
  (8696, 1916, '2003 e 2006', 1, NULL),
  (8697, 1916, '2003 e 2007', 0, NULL),
  (8698, 1916, '2003 e 2008', 0, NULL),
  (8699, 1917, '24', 0, NULL),
  (8700, 1917, '31', 0, NULL),
  (8701, 1917, '32', 0, NULL),
  (8702, 1917, '88', 0, NULL),
  (8703, 1917, '89', 1, NULL),
  (8704, 1918, 'Menos de 23.', 0, NULL),
  (8705, 1918, 'Mais de 23 e menos de 25.', 0, NULL),
  (8706, 1918, 'Mais de 50 e menos de 75.', 1, NULL),
  (8707, 1918, 'Mais de 100 e menos de 190.', 0, NULL),
  (8708, 1918, 'Mais de 200.', 0, NULL),
  (8709, 1919, '20 000 vezes a luminosidade do Sol.', 1, NULL),
  (8710, 1919, '28 000 vezes a luminosidade do Sol.', 0, NULL),
  (8711, 1919, '28 850 vezes a luminosidade do Sol.', 0, NULL),
  (8712, 1919, '30 000 vezes a luminosidade do Sol.', 0, NULL),
  (8713, 1919, '50 000 vezes a luminosidade do Sol.', 0, NULL),
  (8714, 1920, 'Escolher qualquer um dos investimentos A, B ou C, pois as suas rentabilidades anuais são iguais a 36%.', 0, NULL),
  (8715, 1920, 'Escolher os investimentos A ou C, pois suas rentabilidades anuais são iguais a 39%.', 0, NULL),
  (8716, 1920, 'Escolher o investimento A, pois a sua rentabilidade anual é maior que as rentabilidades anuais dos investimentos B e C.', 1, NULL),
  (8717, 1920, 'Escolher o investimento B, pois sua rentabilidade de 36% é maior que as rentabilidades de 3% do investimento A e de 18% do investimento C.', 0, NULL),
  (8718, 1920, 'Escolher o investimento C, pois sua rentabilidade de 39% ao ano é maior que a rentabilidade de 36% ao ano dos investimentos A e B.', 0, NULL),
  (8719, 1921, 'S = k . b . d', 0, NULL),
  (8720, 1921, 'S = b . d²', 0, NULL),
  (8721, 1921, 'S = k . b . d²', 1, NULL),
  (8722, 1921, 'S = (k . b)/d', 0, NULL),
  (8723, 1921, 'S = (k . d²)/b', 0, NULL),
  (8724, 1923, '1', 0, NULL),
  (8725, 1923, '3', 0, NULL),
  (8726, 1923, '4', 0, NULL),
  (8727, 1923, '5', 1, NULL),
  (8728, 1924, '1', 0, NULL),
  (8729, 1924, '3', 0, NULL),
  (8730, 1924, '4', 0, NULL),
  (8731, 1924, '5', 1, NULL),
  (8732, 1925, '1:700', 0, NULL),
  (8733, 1925, '1:7 000', 0, NULL),
  (8734, 1925, '1:70 000', 0, NULL),
  (8735, 1925, '1:700 000', 1, NULL),
  (8736, 1925, '1:7 000 000', 0, NULL),
  (8737, 1926, '300%.', 0, NULL),
  (8738, 1926, '200%.', 0, NULL),
  (8739, 1926, '150%.', 0, NULL),
  (8740, 1926, '100%.', 0, NULL),
  (8741, 1926, '50%.', 1, NULL),
  (8742, 1927, '600, 550, 350', 0, NULL),
  (8743, 1927, '300, 300, 150', 1, NULL),
  (8744, 1927, '300, 250, 200', 0, NULL),
  (8745, 1927, '200, 200, 100', 0, NULL),
  (8746, 1927, '100, 100, 50', 0, NULL),
  (8747, 1928, '0,09.', 0, NULL),
  (8748, 1928, '0,12.', 0, NULL),
  (8749, 1928, '0,14.', 0, NULL),
  (8750, 1928, '0,15.', 1, NULL),
  (8751, 1928, '0,18.', 0, NULL),
  (8752, 1929, '2xy', 0, NULL),
  (8753, 1929, '15 − 3x', 0, NULL),
  (8754, 1929, '15 − 5y', 0, NULL),
  (8755, 1929, '−5y − 3x', 0, NULL),
  (8756, 1929, '5y + 3x − xy', 1, NULL),
  (8757, 1930, '12 000.', 0, NULL),
  (8758, 1930, '12 600.', 0, NULL),
  (8759, 1930, '13 200.', 0, NULL),
  (8760, 1930, '13 800.', 1, NULL),
  (8761, 1930, '15 000.', 0, NULL),
  (8762, 1932, '10 alunos a mais do que possíveis respostas distintas.', 1, NULL),
  (8763, 1932, '20 alunos a mais do que possíveis respostas distintas.', 0, NULL),
  (8764, 1932, '119 alunos a mais do que possíveis respostas distintas.', 0, NULL),
  (8765, 1932, '260 alunos a mais do que possíveis respostas distintas.', 0, NULL),
  (8766, 1932, '270 alunos a mais do que possíveis respostas distintas.', 0, NULL),
  (8767, 1933, 'I', 0, NULL),
  (8768, 1933, 'II', 0, NULL),
  (8769, 1933, 'III', 0, NULL),
  (8770, 1933, 'IV', 1, NULL),
  (8771, 1933, 'V', 0, NULL),
  (8772, 1934, 'Azul.', 0, NULL),
  (8773, 1934, 'Amarela.', 0, NULL),
  (8774, 1934, 'Branca.', 0, NULL),
  (8775, 1934, 'Verde.', 0, NULL),
  (8776, 1934, 'Vermelha.', 1, NULL),
  (8777, 1935, '3 534,85.', 0, NULL),
  (8778, 1935, '3 544,20.', 0, NULL),
  (8779, 1935, '3 534 850,00.', 0, NULL),
  (8780, 1935, '3 534 859,35.', 1, NULL),
  (8781, 1935, '3 534 850,39.', 0, NULL),
  (8782, 1936, 'Março e abril.', 0, NULL),
  (8783, 1936, 'Março e agosto.', 0, NULL),
  (8784, 1936, 'Agosto e setembro.', 0, NULL),
  (8785, 1936, 'Junho e setembro.', 0, NULL),
  (8786, 1936, 'Junho e agosto.', 1, NULL),
  (8787, 1937, 'Cilindro, prisma de base pentagonal e pirâmide.', 1, NULL),
  (8788, 1937, 'Cone, prisma de base pentagonal e pirâmide.', 0, NULL),
  (8789, 1937, 'Cone, tronco de pirâmide e pirâmide.', 0, NULL),
  (8790, 1937, 'Cilindro, tronco de pirâmide e prisma.', 0, NULL),
  (8791, 1937, 'Cilindro, prisma e tronco de cone.', 0, NULL),
  (8792, 1938, '21.', 0, NULL),
  (8793, 1938, '24.', 1, NULL),
  (8794, 1938, '26.', 0, NULL),
  (8795, 1938, '28.', 0, NULL),
  (8796, 1938, '31.', 0, NULL),
  (8797, 1939, '1995.', 0, NULL),
  (8798, 1939, '1998.', 0, NULL),
  (8799, 1939, '2000.', 0, NULL),
  (8800, 1939, '2005.', 0, NULL),
  (8801, 1939, '2007.', 1, NULL),
  (8802, 1942, '0,20 m e 1,45 m.', 0, NULL),
  (8803, 1942, '0,20 m e 1,40 m.', 0, NULL),
  (8804, 1942, '0,25 m e 1,35 m.', 0, NULL),
  (8805, 1942, '0,25 m e 1,30 m.', 0, NULL),
  (8806, 1942, '0,45 m e 1,20 m.', 1, NULL),
  (8807, 1943, '20', 0, NULL),
  (8808, 1943, '21', 0, NULL),
  (8809, 1943, '24', 0, NULL),
  (8810, 1943, '25', 0, NULL),
  (8811, 1943, '27', 1, NULL),
  (8812, 1945, '37', 0, NULL),
  (8813, 1945, '51', 0, NULL),
  (8814, 1945, '88', 1, NULL),
  (8815, 1945, '89', 0, NULL),
  (8816, 1945, '91', 0, NULL),
  (8817, 1946, 'O nível subiria 0,2 cm, fazendo a água ficar com 20,2 cm de altura.', 0, NULL),
  (8818, 1946, 'O nível subiria 1 cm, fazendo a água ficar com 21 cm de altura.', 0, NULL),
  (8819, 1946, 'O nível subiria 2 cm, fazendo a água ficar com 22 cm de altura.', 1, NULL),
  (8820, 1946, 'O nível subiria 8 cm, fazendo a água transbordar.', 0, NULL),
  (8821, 1946, 'O nível subiria 20 cm, fazendo a água transbordar.', 0, NULL),
  (8822, 1947, 'Quatro unidades do tipo A e nenhuma unidade do tipo B.', 0, NULL),
  (8823, 1947, 'Três unidades do tipo A e uma unidade do tipo B.', 0, NULL),
  (8824, 1947, 'Duas unidades do tipo A e duas unidades do tipo B.', 1, NULL),
  (8825, 1947, 'Uma unidade do tipo A e três unidades do tipo B.', 0, NULL),
  (8826, 1947, 'Nenhuma unidade do tipo A e quatro unidades do tipo B.', 0, NULL),
  (8827, 1948, 'R$ 22,50', 0, NULL),
  (8828, 1948, 'R$ 35,00', 1, NULL),
  (8829, 1948, 'R$ 40,00', 0, NULL),
  (8830, 1948, 'R$ 42,50', 0, NULL),
  (8831, 1948, 'R$ 45,00', 0, NULL),
  (8832, 1949, 'Centena.', 0, NULL),
  (8833, 1949, 'Dezena de milhar.', 0, NULL),
  (8834, 1949, 'Centena de milhar.', 1, NULL),
  (8835, 1949, 'Milhão.', 0, NULL),
  (8836, 1949, 'Centena de milhão.', 0, NULL),
  (8837, 1950, 'Segunda e na terça-feira.', 0, NULL),
  (8838, 1950, 'Terça e na quarta-feira.', 1, NULL),
  (8839, 1950, 'Terça e na quinta-feira.', 0, NULL),
  (8840, 1950, 'Quinta-feira, no sábado e no domingo.', 0, NULL),
  (8841, 1950, 'Segunda, na quinta e na sexta-feira.', 0, NULL),
  (8842, 1952, '5', 0, NULL),
  (8843, 1952, '11', 1, NULL),
  (8844, 1952, '13', 0, NULL),
  (8845, 1952, '23', 0, NULL),
  (8846, 1952, '33', 0, NULL),
  (8847, 1953, '153.', 0, NULL),
  (8848, 1953, '460.', 0, NULL),
  (8849, 1953, '1 218.', 0, NULL),
  (8850, 1953, '1 380.', 1, NULL),
  (8851, 1953, '3 066.', 0, NULL),
  (8852, 1954, '∛16', 0, NULL),
  (8853, 1954, '4', 1, NULL),
  (8854, 1954, '√24', 0, NULL),
  (8855, 1954, '8', 0, NULL),
  (8856, 1954, '64', 0, NULL),
  (8857, 1957, '124,02°.', 0, NULL),
  (8858, 1957, '124,05°.', 1, NULL),
  (8859, 1957, '124,20°.', 0, NULL),
  (8860, 1957, '124,30°.', 0, NULL),
  (8861, 1957, '124,50°.', 0, NULL),
  (8862, 1958, '3,25 × 102 km.', 0, NULL),
  (8863, 1958, '3,25 × 103 km.', 0, NULL),
  (8864, 1958, '3,25 × 104 km.', 0, NULL),
  (8865, 1958, '3,25 × 105 km.', 1, NULL),
  (8866, 1958, '3,25 × 106 km.', 0, NULL),
  (8867, 1959, '24 litros', 0, NULL),
  (8868, 1959, '36 litros', 1, NULL),
  (8869, 1959, '40 litros', 0, NULL),
  (8870, 1959, '42 litros', 0, NULL),
  (8871, 1959, '50 litros', 0, NULL),
  (8872, 1960, 'Balas W e Pizzaria Y.', 0, NULL),
  (8873, 1960, 'Chocolates X e Tecelagem Z.', 0, NULL),
  (8874, 1960, 'Pizzaria Y e Alfinetes V.', 0, NULL),
  (8875, 1960, 'Pizzaria Y e Chocolates X.', 1, NULL),
  (8876, 1960, 'Tecelagem Z e Alfinetes V.', 0, NULL),
  (8877, 1961, 'Hipoglicemia.', 0, NULL),
  (8878, 1961, 'Normal.', 0, NULL),
  (8879, 1961, 'Pré-diabetes.', 0, NULL),
  (8880, 1961, 'Diabetes melito.', 1, NULL),
  (8881, 1961, 'Hiperglicemia.', 0, NULL),
  (8882, 1962, '20,25.', 0, NULL),
  (8883, 1962, '4,50.', 0, NULL),
  (8884, 1962, '0,71.', 0, NULL),
  (8885, 1962, '0,50.', 0, NULL),
  (8886, 1962, '0,25.', 1, NULL),
  (8887, 1963, '14', 0, NULL),
  (8888, 1963, '18', 0, NULL),
  (8889, 1963, '20', 1, NULL),
  (8890, 1963, '21', 0, NULL),
  (8891, 1963, '23', 0, NULL),
  (8892, 1964, 'Antônio, já que sua soma é a maior de todas as escolhidas.', 0, NULL),
  (8893, 1964, 'José e Antônio, já que há 6 possibilidades tanto para a escolha de José quanto para a escolha de Antônio, e há apenas 4 possibilidades para a escolha de Paulo.', 0, NULL),
  (8894, 1964, 'José e Antônio, já que há 3 possibilidades tanto para a escolha de José quanto para a escolha de Antônio, e há apenas 2 possibilidades para a escolha de Paulo.', 0, NULL),
  (8895, 1964, 'José, já que há 6 possibilidades para formar sua soma, 5 possibilidades para formar a soma de Antônio e apenas 3 possibilidades para formar a soma de Paulo.', 1, NULL),
  (8896, 1964, 'Paulo, já que sua soma é a menor de todas.', 0, NULL),
  (8897, 1965, '212 952.', 0, NULL),
  (8898, 1965, '229 913.', 1, NULL),
  (8899, 1965, '240 621.', 0, NULL),
  (8900, 1965, '255 496.', 0, NULL),
  (8901, 1965, '298 041.', 0, NULL),
  (8902, 1966, '20% menor que V, uma vez que o volume do cubo é diretamente proporcional ao comprimento de seu lado.', 0, NULL),
  (8903, 1966, '36% menor que V, porque a área da base diminui de a2 para ((1 − 0,2)a)².', 0, NULL),
  (8904, 1966, '48,8% menor que V, porque o volume diminui de a3 para (0,8a)³.', 1, NULL),
  (8905, 1966, '51,2% menor que V, porque cada lado diminui para 80% do comprimento original.', 0, NULL),
  (8906, 1966, '60% menor que V, porque cada lado diminui 20%.', 0, NULL),
  (8907, 1967, '20% menor que V, uma vez que o volume do cubo é diretamente proporcional ao comprimento de seu lado.', 0, NULL),
  (8908, 1967, '36% menor que V, porque a área da base diminui de a2 para ((1 − 0,2)a)².', 0, NULL),
  (8909, 1967, '48,8% menor que V, porque o volume diminui de a3 para (0,8a)³.', 1, NULL),
  (8910, 1967, '51,2% menor que V, porque cada lado diminui para 80% do comprimento original.', 0, NULL),
  (8911, 1967, '60% menor que V, porque cada lado diminui 20%.', 0, NULL),
  (8912, 1968, 'Menor que 100 m²', 0, NULL),
  (8913, 1968, 'Entre 100 m² e 300 m²', 0, NULL),
  (8914, 1968, 'Entre 300 m² e 500 m²', 0, NULL),
  (8915, 1968, 'Entre 500 m² e 700 m²', 0, NULL),
  (8916, 1968, 'Maior que 700 m²', 1, NULL),
  (8917, 1969, '0,25 ponto maior.', 0, NULL),
  (8918, 1969, '1,00 ponto maior.', 1, NULL),
  (8919, 1969, '1,00 ponto menor.', 0, NULL),
  (8920, 1969, '1,25 ponto maior.', 0, NULL),
  (8921, 1969, '2,00 pontos menor.', 0, NULL),
  (8922, 1971, '0,2', 0, NULL),
  (8923, 1971, '1,2', 0, NULL),
  (8924, 1971, '1,4', 1, NULL),
  (8925, 1971, '12,9', 0, NULL),
  (8926, 1971, '64,8', 0, NULL),
  (8927, 1972, 'A, A, A, A.', 0, NULL),
  (8928, 1972, 'A, B, A, B.', 0, NULL),
  (8929, 1972, 'A, B, B, A.', 0, NULL),
  (8930, 1972, 'B, A, A, B.', 1, NULL),
  (8931, 1972, 'B, B, B, B.', 0, NULL),
  (8932, 1973, '64,0', 0, NULL),
  (8933, 1973, '65,5', 0, NULL),
  (8934, 1973, '74,0', 1, NULL),
  (8935, 1973, '81,0', 0, NULL),
  (8936, 1973, '91,0', 0, NULL),
  (8937, 1974, 'Malhada', 0, NULL),
  (8938, 1974, 'Mamona', 0, NULL),
  (8939, 1974, 'Maravilha', 0, NULL),
  (8940, 1974, 'Mateira', 1, NULL),
  (8941, 1974, 'Mimosa', 0, NULL),
  (8942, 1975, '4', 0, NULL),
  (8943, 1975, '8', 0, NULL),
  (8944, 1975, '16', 0, NULL),
  (8945, 1975, '20', 0, NULL),
  (8946, 1975, '40', 1, NULL),
  (8947, 1976, '75,28', 0, NULL),
  (8948, 1976, '64,09', 0, NULL),
  (8949, 1976, '56,95', 1, NULL),
  (8950, 1976, '45,76', 0, NULL),
  (8951, 1976, '30,07', 0, NULL),
  (8952, 1977, '17/10', 1, NULL),
  (8953, 1977, '17/53', 0, NULL),
  (8954, 1977, '53/70', 0, NULL),
  (8955, 1977, '53/17', 0, NULL),
  (8956, 1977, '70/17', 0, NULL),
  (8957, 1978, '1/20', 1, NULL),
  (8958, 1978, '3/242', 0, NULL),
  (8959, 1978, '5/22', 0, NULL),
  (8960, 1978, '6/25', 0, NULL),
  (8961, 1978, '7/15', 0, NULL),
  (8962, 1979, '6', 0, NULL),
  (8963, 1979, '7', 0, NULL),
  (8964, 1979, '8', 1, NULL),
  (8965, 1979, '11', 0, NULL),
  (8966, 1979, '12', 0, NULL),
  (8967, 1980, '300 tijolos', 0, NULL),
  (8968, 1980, '360 tijolos', 0, NULL),
  (8969, 1980, '400 tijolos', 0, NULL),
  (8970, 1980, '480 tijolos', 1, NULL),
  (8971, 1980, '600 tijolos', 0, NULL),
  (8972, 1981, '497,25.', 0, NULL),
  (8973, 1981, '500,85.', 0, NULL),
  (8974, 1981, '502,87.', 0, NULL),
  (8975, 1981, '558,75.', 1, NULL),
  (8976, 1981, '563,25.', 0, NULL),
  (8977, 1982, '1/2', 1, NULL),
  (8978, 1982, '5/8', 0, NULL),
  (8979, 1982, '1/4', 0, NULL),
  (8980, 1982, '5/6', 0, NULL),
  (8981, 1982, '5/14', 0, NULL),
  (8982, 1986, 'N/9', 1, NULL),
  (8983, 1986, 'N/6', 0, NULL),
  (8984, 1986, 'N/3', 0, NULL),
  (8985, 1986, '3N', 0, NULL),
  (8986, 1986, '9N', 0, NULL),
  (8987, 1987, '1,6', 1, NULL),
  (8988, 1987, '1,7', 0, NULL),
  (8989, 1987, '2,0', 0, NULL),
  (8990, 1987, '3,0', 0, NULL),
  (8991, 1987, '3,8', 0, NULL),
  (8992, 1988, 'R$ 900,00.', 0, NULL),
  (8993, 1988, 'R$ 1 200,00.', 1, NULL),
  (8994, 1988, 'R$ 2 100,00.', 0, NULL),
  (8995, 1988, 'R$ 3 900,00.', 0, NULL),
  (8996, 1988, 'R$ 5 100,00.', 0, NULL),
  (8997, 1989, '1,75', 0, NULL),
  (8998, 1989, '2,00', 1, NULL),
  (8999, 1989, '2,33', 0, NULL),
  (9000, 1989, '4,00', 0, NULL),
  (9001, 1989, '8,00', 0, NULL),
  (9002, 1990, 'F', 0, NULL),
  (9003, 1990, 'G', 1, NULL),
  (9004, 1990, 'H', 0, NULL),
  (9005, 1990, 'M', 0, NULL),
  (9006, 1990, 'P', 0, NULL),
  (9007, 1991, '8,35', 0, NULL),
  (9008, 1991, '12,50', 0, NULL),
  (9009, 1991, '14,40', 0, NULL),
  (9010, 1991, '15,35', 1, NULL),
  (9011, 1991, '18,05', 0, NULL),
  (9012, 1992, '300,00.', 0, NULL),
  (9013, 1992, '345,00.', 0, NULL),
  (9014, 1992, '350,00.', 1, NULL),
  (9015, 1992, '375,00.', 0, NULL),
  (9016, 1992, '400,00.', 0, NULL),
  (9017, 1993, '15,00', 0, NULL),
  (9018, 1993, '14,00', 0, NULL),
  (9019, 1993, '10,00', 0, NULL),
  (9020, 1993, '5,00', 0, NULL),
  (9021, 1993, '4,00', 1, NULL),
  (9022, 1995, '6', 0, NULL),
  (9023, 1995, '12', 1, NULL),
  (9024, 1995, '18', 0, NULL),
  (9025, 1995, '24', 0, NULL),
  (9026, 1995, '36', 0, NULL),
  (9027, 1996, '27', 0, NULL),
  (9028, 1996, '36', 0, NULL),
  (9029, 1996, '50', 0, NULL),
  (9030, 1996, '54', 0, NULL),
  (9031, 1996, '100', 1, NULL),
  (9032, 1997, '4%', 0, NULL),
  (9033, 1997, '20%', 0, NULL),
  (9034, 1997, '36%', 1, NULL),
  (9035, 1997, '64%', 0, NULL),
  (9036, 1997, '96%', 0, NULL),
  (9037, 1998, 'Excelente.', 0, NULL),
  (9038, 1998, 'Bom.', 1, NULL),
  (9039, 1998, 'Regular.', 0, NULL),
  (9040, 1998, 'Ruim.', 0, NULL),
  (9041, 1998, 'Péssimo.', 0, NULL),
  (9042, 1999, 'Caio e Eduardo.', 1, NULL),
  (9043, 1999, 'Arthur e Eduardo.', 0, NULL),
  (9044, 1999, 'Bruno e Caio.', 0, NULL),
  (9045, 1999, 'Arthur e Bruno.', 0, NULL),
  (9046, 1999, 'Douglas e Eduardo.', 0, NULL),
  (9047, 2000, '0,83', 0, NULL),
  (9048, 2000, '1,20', 0, NULL),
  (9049, 2000, '12,03', 1, NULL),
  (9050, 2000, '104,73', 0, NULL),
  (9051, 2000, '120,34', 0, NULL),
  (9052, 2001, '5X − 3Y + 15 = 0', 0, NULL),
  (9053, 2001, '5X − 2Y + 10 = 0', 1, NULL),
  (9054, 2001, '3X − 3Y + 15 = 0', 0, NULL),
  (9055, 2001, '3X − 2Y + 15 = 0', 0, NULL),
  (9056, 2001, '3X − 2Y + 10 = 0', 0, NULL),
  (9057, 2002, '19,0', 0, NULL),
  (9058, 2002, '19,8', 0, NULL),
  (9059, 2002, '20,0', 0, NULL),
  (9060, 2002, '38,0', 1, NULL),
  (9061, 2002, '39,0', 0, NULL),
  (9062, 2003, '32', 1, NULL),
  (9063, 2003, '34', 0, NULL),
  (9064, 2003, '33', 0, NULL),
  (9065, 2003, '35', 0, NULL),
  (9066, 2003, '31', 0, NULL),
  (9067, 2004, 'Menor que 10.', 0, NULL),
  (9068, 2004, 'Maior que 10 e menor que 20.', 0, NULL),
  (9069, 2004, 'Maior que 20 e menor que 30.', 0, NULL),
  (9070, 2004, 'Maior que 30 e menor que 40.', 1, NULL),
  (9071, 2004, 'Maior que 40.', 0, NULL),
  (9072, 2005, '(65 ; 35).', 0, NULL),
  (9073, 2005, '(53 ; 30).', 0, NULL),
  (9074, 2005, '(45 ; 35).', 0, NULL),
  (9075, 2005, '(50 ; 20).', 0, NULL),
  (9076, 2005, '(50 ; 30).', 1, NULL),
  (9077, 2006, 'Um tronco de cone e um cilindro.', 0, NULL),
  (9078, 2006, 'Um cone e um cilindro.', 0, NULL),
  (9079, 2006, 'Um tronco de pirâmide e um cilindro.', 0, NULL),
  (9080, 2006, 'Dois troncos de cone.', 1, NULL),
  (9081, 2006, 'Dois cilindros.', 0, NULL),
  (9082, 2007, 'Finlândia.', 0, NULL),
  (9083, 2007, 'Holanda.', 0, NULL),
  (9084, 2007, 'Israel.', 1, NULL),
  (9085, 2007, 'México.', 0, NULL),
  (9086, 2007, 'Rússia.', 0, NULL),
  (9087, 2008, '2', 0, NULL),
  (9088, 2008, '14/5', 0, NULL),
  (9089, 2008, '4', 0, NULL),
  (9090, 2008, '24/5', 1, NULL),
  (9091, 2008, '28/5', 0, NULL),
  (9092, 2009, '1 m', 0, NULL),
  (9093, 2009, '2 m', 0, NULL),
  (9094, 2009, '2,4 m', 1, NULL),
  (9095, 2009, '3 m', 0, NULL),
  (9096, 2009, '2√6 m', 0, NULL),
  (9097, 2010, '1,1.', 0, NULL),
  (9098, 2010, '3,5.', 0, NULL),
  (9099, 2010, '4,5.', 0, NULL),
  (9100, 2010, '6,8.', 0, NULL),
  (9101, 2010, '7,9.', 1, NULL),
  (9102, 2011, '1,14.', 0, NULL),
  (9103, 2011, '1,42.', 0, NULL),
  (9104, 2011, '1,52.', 1, NULL),
  (9105, 2011, '1,70.', 0, NULL),
  (9106, 2011, '1,80.', 0, NULL),
  (9107, 2012, 'Norte, Centro-Oeste e Sul.', 0, NULL),
  (9108, 2012, 'Norte, Nordeste e Sudeste.', 1, NULL),
  (9109, 2012, 'Nordeste, Norte e Sul.', 0, NULL),
  (9110, 2012, 'Nordeste, Sudeste e Sul.', 0, NULL),
  (9111, 2012, 'Centro-Oeste, Sul e Sudeste.', 0, NULL),
  (9112, 2013, '1/8', 0, NULL),
  (9113, 2013, '7/8', 0, NULL),
  (9114, 2013, '8/7', 0, NULL),
  (9115, 2013, '8/9', 1, NULL),
  (9116, 2013, '9/8', 0, NULL),
  (9117, 2014, '30,0.', 0, NULL),
  (9118, 2014, '69,6.', 0, NULL),
  (9119, 2014, '100,4.', 1, NULL),
  (9120, 2014, '130,4.', 0, NULL),
  (9121, 2014, '170,0.', 0, NULL),
  (9122, 2015, 'K.', 0, NULL),
  (9123, 2015, 'L.', 0, NULL),
  (9124, 2015, 'M.', 0, NULL),
  (9125, 2015, 'N.', 1, NULL),
  (9126, 2015, 'P.', 0, NULL),
  (9127, 2016, '110.', 1, NULL),
  (9128, 2016, '125.', 0, NULL),
  (9129, 2016, '130.', 0, NULL),
  (9130, 2016, '220.', 0, NULL),
  (9131, 2016, '260.', 0, NULL),
  (9132, 2020, 'X. y. z', 0, NULL),
  (9133, 2020, '(x+ 1).(y + 1)', 0, NULL),
  (9134, 2020, 'X . y . z - 1', 0, NULL),
  (9135, 2020, '(x + 1).(y + 1).z', 0, NULL),
  (9136, 2020, '(x + 1).(y + 1).(z + 1) - 1', 1, NULL),
  (9137, 2021, '3.', 1, NULL),
  (9138, 2021, '5.', 0, NULL),
  (9139, 2021, '6.', 0, NULL),
  (9140, 2021, '8.', 0, NULL),
  (9141, 2021, '10.', 0, NULL),
  (9142, 2023, '1 hora.', 0, NULL),
  (9143, 2023, '1 hora e 15 minutos.', 1, NULL),
  (9144, 2023, '5 horas.', 0, NULL),
  (9145, 2023, '6 horas.', 0, NULL),
  (9146, 2023, '6 horas e 15 minutos.', 0, NULL),
  (9147, 2024, '25.', 0, NULL),
  (9148, 2024, '33.', 0, NULL),
  (9149, 2024, '42.', 0, NULL),
  (9150, 2024, '45.', 0, NULL),
  (9151, 2024, '49.', 1, NULL),
  (9152, 2025, '14,4%', 0, NULL),
  (9153, 2025, '20,0%', 0, NULL),
  (9154, 2025, '32,0%', 0, NULL),
  (9155, 2025, '36,0%', 1, NULL),
  (9156, 2025, '64,0%', 0, NULL),
  (9157, 2026, '72%', 0, NULL),
  (9158, 2026, '68%', 1, NULL),
  (9159, 2026, '64%', 0, NULL),
  (9160, 2026, '54%', 0, NULL),
  (9161, 2026, '18%', 0, NULL),
  (9162, 2027, 'R$ 114 285,00', 0, NULL),
  (9163, 2027, 'R$ 130 000,00', 1, NULL),
  (9164, 2027, 'R$ 160 000,00', 0, NULL),
  (9165, 2027, 'R$ 210 000,00', 0, NULL),
  (9166, 2027, 'R$ 213 333,00', 0, NULL),
  (9167, 2028, 'I', 0, NULL),
  (9168, 2028, 'II', 0, NULL),
  (9169, 2028, 'III', 0, NULL),
  (9170, 2028, 'IV', 1, NULL),
  (9171, 2028, 'V', 0, NULL),
  (9172, 2029, '18.', 1, NULL),
  (9173, 2029, '19.', 0, NULL),
  (9174, 2029, '22.', 0, NULL),
  (9175, 2029, '25.', 0, NULL),
  (9176, 2029, '26.', 0, NULL),
  (9177, 2030, '6.', 0, NULL),
  (9178, 2030, '600.', 0, NULL),
  (9179, 2030, '6 000.', 0, NULL),
  (9180, 2030, '60 000.', 0, NULL),
  (9181, 2030, '6 000 000.', 1, NULL),
  (9182, 2031, 'Branca e os de número 38.', 1, NULL),
  (9183, 2031, 'Branca e os de número 37.', 0, NULL),
  (9184, 2031, 'Branca e os de número 36.', 0, NULL),
  (9185, 2031, 'Preta e os de número 38.', 0, NULL),
  (9186, 2031, 'Preta e os de número 37.', 0, NULL),
  (9187, 2032, '47,5%.', 0, NULL),
  (9188, 2032, '85,0%.', 0, NULL),
  (9189, 2032, '86,3%.', 0, NULL),
  (9190, 2032, '94,4%.', 0, NULL),
  (9191, 2032, '95,0%.', 1, NULL),
  (9192, 2033, '4.', 0, NULL),
  (9193, 2033, '8.', 0, NULL),
  (9194, 2033, '9.', 1, NULL),
  (9195, 2033, '12.', 0, NULL),
  (9196, 2033, '20.', 0, NULL),
  (9197, 2035, '1.', 0, NULL),
  (9198, 2035, '2.', 1, NULL),
  (9199, 2035, '3.', 0, NULL),
  (9200, 2035, '4.', 0, NULL),
  (9201, 2035, '5.', 0, NULL),
  (9202, 2036, '134,1', 0, NULL),
  (9203, 2036, '135,0', 0, NULL),
  (9204, 2036, '137,1', 1, NULL),
  (9205, 2036, '138,6', 0, NULL),
  (9206, 2036, '143,1', 0, NULL),
  (9207, 2038, '0,02048.', 0, NULL),
  (9208, 2038, '0,08192.', 1, NULL),
  (9209, 2038, '0,24000.', 0, NULL),
  (9210, 2038, '0,40960.', 0, NULL),
  (9211, 2038, '0,49152.', 0, NULL),
  (9212, 2040, 'A', 0, NULL),
  (9213, 2040, 'B', 0, NULL),
  (9214, 2040, 'C', 1, NULL),
  (9215, 2040, 'D', 0, NULL),
  (9216, 2040, 'E', 0, NULL),
  (9217, 2041, '168.', 0, NULL),
  (9218, 2041, '304.', 0, NULL),
  (9219, 2041, '306.', 0, NULL),
  (9220, 2041, '378.', 0, NULL),
  (9221, 2041, '514.', 1, NULL),
  (9222, 2042, '32,8%', 0, NULL),
  (9223, 2042, '28,6%', 0, NULL),
  (9224, 2042, '10,7%', 0, NULL),
  (9225, 2042, '9,4%', 1, NULL),
  (9226, 2042, '8,0%', 0, NULL),
  (9227, 2043, '1 : 3.', 0, NULL),
  (9228, 2043, '1 : 4.', 0, NULL),
  (9229, 2043, '1 : 20.', 0, NULL),
  (9230, 2043, '1 : 25.', 1, NULL),
  (9231, 2043, '1 : 32.', 0, NULL),
  (9232, 2044, 'Π d', 0, NULL),
  (9233, 2044, '2π d', 0, NULL),
  (9234, 2044, '4π d', 0, NULL),
  (9235, 2044, '5π d', 1, NULL),
  (9236, 2044, '10π d', 0, NULL),
  (9237, 2045, '1,8 t; 8,4 t; 1,8 t.', 0, NULL),
  (9238, 2045, '3,0 t; 6,0 t; 3,0 t.', 0, NULL),
  (9239, 2045, '2,4 t; 7,2 t; 2,4 t.', 1, NULL),
  (9240, 2045, '3,6 t; 4,8 t; 3,6 t.', 0, NULL),
  (9241, 2045, '4,2 t; 3,6 t; 4,2 t.', 0, NULL),
  (9242, 2046, '364.', 0, NULL),
  (9243, 2046, '463.', 0, NULL),
  (9244, 2046, '3 064.', 1, NULL),
  (9245, 2046, '3 640.', 0, NULL),
  (9246, 2046, '4 603.', 0, NULL),
  (9247, 2047, '8', 0, NULL),
  (9248, 2047, '80', 0, NULL),
  (9249, 2047, '800', 0, NULL),
  (9250, 2047, '8 000', 0, NULL),
  (9251, 2047, '80 000', 1, NULL),
  (9252, 2048, 'I', 0, NULL),
  (9253, 2048, 'II', 0, NULL),
  (9254, 2048, 'III', 1, NULL),
  (9255, 2048, 'IV', 0, NULL),
  (9256, 2048, 'V', 0, NULL),
  (9257, 2049, '[35 ; 63].', 1, NULL),
  (9258, 2049, '[40 ; 63].', 0, NULL),
  (9259, 2049, '[50 ; 70].', 0, NULL),
  (9260, 2049, '[50 ; 90].', 0, NULL),
  (9261, 2049, '[70 ; 90].', 0, NULL),
  (9262, 2050, 'Terça-feira.', 1, NULL),
  (9263, 2050, 'Quarta-feira.', 0, NULL),
  (9264, 2050, 'Quinta-feira.', 0, NULL),
  (9265, 2050, 'Sexta-feira.', 0, NULL),
  (9266, 2050, 'Domingo.', 0, NULL),
  (9267, 2051, '8', 0, NULL),
  (9268, 2051, '10', 1, NULL),
  (9269, 2051, '16', 0, NULL),
  (9270, 2051, '18', 0, NULL),
  (9271, 2051, '24', 0, NULL),
  (9272, 2052, 'Retirar 16 células.', 1, NULL),
  (9273, 2052, 'Retirar 40 células.', 0, NULL),
  (9274, 2052, 'Acrescentar 5 células.', 0, NULL),
  (9275, 2052, 'Acrescentar 20 células.', 0, NULL),
  (9276, 2052, 'Acrescentar 40 células.', 0, NULL),
  (9277, 2053, 'R$ 166,00.', 0, NULL),
  (9278, 2053, 'R$ 156,00.', 1, NULL),
  (9279, 2053, 'R$ 84,00.', 0, NULL),
  (9280, 2053, 'R$ 46,00.', 0, NULL),
  (9281, 2053, 'R$ 24,00.', 0, NULL),
  (9282, 2054, '16h.', 0, NULL),
  (9283, 2054, '10h.', 0, NULL),
  (9284, 2054, '7h.', 0, NULL),
  (9285, 2054, '4h.', 1, NULL),
  (9286, 2054, '1h.', 0, NULL),
  (9287, 2055, '16h.', 0, NULL),
  (9288, 2055, '10h.', 0, NULL),
  (9289, 2055, '7h.', 0, NULL),
  (9290, 2055, '4h.', 1, NULL),
  (9291, 2055, '1h.', 0, NULL),
  (9292, 2056, '3', 0, NULL),
  (9293, 2056, '4', 1, NULL),
  (9294, 2056, '5', 0, NULL),
  (9295, 2056, '6', 0, NULL),
  (9296, 2056, '7', 0, NULL),
  (9297, 2057, '18', 1, NULL),
  (9298, 2057, '26', 0, NULL),
  (9299, 2057, '30', 0, NULL),
  (9300, 2057, '35', 0, NULL),
  (9301, 2057, '60', 0, NULL),
  (9302, 2058, 'De 20 a 100.', 0, NULL),
  (9303, 2058, 'De 80 a 130.', 0, NULL),
  (9304, 2058, 'De 100 a 160.', 0, NULL),
  (9305, 2058, 'De 0 a 20 e de 100 a 160.', 1, NULL),
  (9306, 2058, 'De 40 a 80 e de 130 a 160.', 0, NULL),
  (9307, 2059, '9', 0, NULL),
  (9308, 2059, '7', 0, NULL),
  (9309, 2059, '5', 0, NULL),
  (9310, 2059, '4', 0, NULL),
  (9311, 2059, '3', 1, NULL),
  (9312, 2060, 'Correios e SMS.', 0, NULL),
  (9313, 2060, 'Internet e Correios.', 1, NULL),
  (9314, 2060, 'Internet e internet.', 0, NULL),
  (9315, 2060, 'Internet e mídias sociais.', 0, NULL),
  (9316, 2060, 'Rádio/TV e rádio/TV.', 0, NULL),
  (9317, 2061, '450.', 0, NULL),
  (9318, 2061, '500.', 0, NULL),
  (9319, 2061, '600.', 1, NULL),
  (9320, 2061, '750.', 0, NULL),
  (9321, 2061, '1 000.', 0, NULL),
  (9322, 2062, '1/100', 0, NULL),
  (9323, 2062, '19/100', 0, NULL),
  (9324, 2062, '20/100', 1, NULL),
  (9325, 2062, '21/100', 0, NULL),
  (9326, 2062, '80/100', 0, NULL),
  (9327, 2063, '20,70.', 0, NULL),
  (9328, 2063, '20,77.', 0, NULL),
  (9329, 2063, '20,80.', 0, NULL),
  (9330, 2063, '20,85.', 1, NULL),
  (9331, 2063, '20,90.', 0, NULL),
  (9332, 2064, 'Aumento de 5 800 cm².', 1, NULL),
  (9333, 2064, 'Aumento de 75 400 cm².', 0, NULL),
  (9334, 2064, 'Aumento de 214 600 cm².', 0, NULL),
  (9335, 2064, 'Diminuição de 63 800 cm².', 0, NULL),
  (9336, 2064, 'Diminuição de 272 600 cm².', 0, NULL),
  (9337, 2065, '0,5', 0, NULL),
  (9338, 2065, '1,0', 0, NULL),
  (9339, 2065, '2,0', 1, NULL),
  (9340, 2065, '3,5', 0, NULL),
  (9341, 2065, '8,0', 0, NULL),
  (9342, 2066, '21', 0, NULL),
  (9343, 2066, '90', 0, NULL),
  (9344, 2066, '750', 1, NULL),
  (9345, 2066, '1 250', 0, NULL),
  (9346, 2066, '3 125', 0, NULL),
  (9347, 2067, '12,5 m.', 1, NULL),
  (9348, 2067, '17,5 m.', 0, NULL),
  (9349, 2067, '25,0 m.', 0, NULL),
  (9350, 2067, '22,5 m.', 0, NULL),
  (9351, 2067, '32,5 m.', 0, NULL),
  (9352, 2068, '6', 0, NULL),
  (9353, 2068, '8', 0, NULL),
  (9354, 2068, '14', 1, NULL),
  (9355, 2068, '24', 0, NULL),
  (9356, 2068, '30', 0, NULL),
  (9357, 2069, 'R$ 0,50 ≤ p < R$ 1,50', 1, NULL),
  (9358, 2069, 'R$ 1,50 ≤ p < R$ 2,50', 0, NULL),
  (9359, 2069, 'R$ 2,50 ≤ p < R$ 3,50', 0, NULL),
  (9360, 2069, 'R$ 3,50 ≤ p < R$ 4,50', 0, NULL),
  (9361, 2069, 'R$ 4,50 ≤ p < R$ 5,50', 0, NULL),
  (9362, 2070, 'I.', 1, NULL),
  (9363, 2070, 'II.', 0, NULL),
  (9364, 2070, 'III.', 0, NULL),
  (9365, 2070, 'IV.', 0, NULL),
  (9366, 2070, 'V.', 0, NULL),
  (9367, 2071, 'P(t) = 0,5 · t-1 + 8 000', 0, NULL),
  (9368, 2071, 'P(t) = 50 · t-1 + 8 000', 0, NULL),
  (9369, 2071, 'P(t) = 4 000 · t-1 + 8 000', 0, NULL),
  (9370, 2071, 'P(t) = 8 000 · (0,5)t - 1', 0, NULL),
  (9371, 2071, 'P(t) = 8 000 · (1,5)t - 1', 1, NULL),
  (9372, 2072, 'Triângulo.', 0, NULL),
  (9373, 2072, 'Losango.', 0, NULL),
  (9374, 2072, 'Pentágono.', 1, NULL),
  (9375, 2072, 'Hexágono.', 0, NULL),
  (9376, 2072, 'Octógono.', 0, NULL),
  (9377, 2074, '8π.', 1, NULL),
  (9378, 2074, '12π.', 0, NULL),
  (9379, 2074, '16π.', 0, NULL),
  (9380, 2074, '32π.', 0, NULL),
  (9381, 2074, '64π.', 0, NULL),
  (9382, 2075, '2 075,00.', 0, NULL),
  (9383, 2075, '2 093,00.', 0, NULL),
  (9384, 2075, '2 138,00.', 0, NULL),
  (9385, 2075, '2 255,00.', 1, NULL),
  (9386, 2075, '2 300,00.', 0, NULL),
  (9387, 2076, '4,129 x 10³', 0, NULL),
  (9388, 2076, '4,129 x 106', 0, NULL),
  (9389, 2076, '4,129 x 109', 1, NULL),
  (9390, 2076, '4,129 x 1012', 0, NULL),
  (9391, 2076, '4,129 x 1015', 0, NULL),
  (9392, 2077, '15.', 0, NULL),
  (9393, 2077, '20.', 1, NULL),
  (9394, 2077, '30.', 0, NULL),
  (9395, 2077, '36.', 0, NULL),
  (9396, 2077, '40.', 0, NULL),
  (9397, 2078, '240,40', 0, NULL),
  (9398, 2078, '548,11', 0, NULL),
  (9399, 2078, '1 723,67', 0, NULL),
  (9400, 2078, '4 026,70', 0, NULL),
  (9401, 2078, '5 216,68', 1, NULL),
  (9402, 2079, '4,9 e 7,6.', 0, NULL),
  (9403, 2079, '8,6 e 9,8.', 0, NULL),
  (9404, 2079, '14,2 e 15,4.', 0, NULL),
  (9405, 2079, '26,4 e 40,8.', 1, NULL),
  (9406, 2079, '27,5 e 42,5.', 0, NULL),
  (9407, 2080, '2', 1, NULL),
  (9408, 2080, '1', 0, NULL),
  (9409, 2080, '11/3', 0, NULL),
  (9410, 2080, '4/3', 0, NULL),
  (9411, 2080, '2/3', 0, NULL),
  (9412, 2081, '105 peças.', 0, NULL),
  (9413, 2081, '120 peças.', 0, NULL),
  (9414, 2081, '210 peças.', 0, NULL),
  (9415, 2081, '243 peças.', 0, NULL),
  (9416, 2081, '420 peças.', 1, NULL),
  (9417, 2082, '25', 1, NULL),
  (9418, 2082, '15', 0, NULL),
  (9419, 2082, '13', 0, NULL),
  (9420, 2082, '12', 0, NULL),
  (9421, 2082, '8', 0, NULL),
  (9422, 2084, '16.', 0, NULL),
  (9423, 2084, '28.', 1, NULL),
  (9424, 2084, '29.', 0, NULL),
  (9425, 2084, '31.', 0, NULL),
  (9426, 2084, '49.', 0, NULL),
  (9427, 2085, 'I', 0, NULL),
  (9428, 2085, 'II', 0, NULL),
  (9429, 2085, 'III', 0, NULL),
  (9430, 2085, 'IV', 1, NULL),
  (9431, 2085, 'V', 0, NULL),
  (9432, 2087, '23,7%', 0, NULL),
  (9433, 2087, '30,0%', 0, NULL),
  (9434, 2087, '44,1%', 0, NULL),
  (9435, 2087, '65,7%', 1, NULL),
  (9436, 2087, '90,0%', 0, NULL),
  (9437, 2088, '16,0.', 0, NULL),
  (9438, 2088, '22,9.', 0, NULL),
  (9439, 2088, '32,0.', 1, NULL),
  (9440, 2088, '84,6.', 0, NULL),
  (9441, 2088, '106,6.', 0, NULL),
  (9442, 2089, 'A, B, C, E, D.', 0, NULL),
  (9443, 2089, 'B, A, C, E, D.', 1, NULL),
  (9444, 2089, 'C, B, E, A, D.', 0, NULL),
  (9445, 2089, 'C, B, E, D, A.', 0, NULL),
  (9446, 2089, 'E, C, D, B, A.', 0, NULL),
  (9447, 2090, '10,8.', 0, NULL),
  (9448, 2090, '12,0.', 0, NULL),
  (9449, 2090, '32,4.', 0, NULL),
  (9450, 2090, '108,0.', 1, NULL),
  (9451, 2090, '324,0.', 0, NULL),
  (9452, 2091, '(290 ; 20).', 0, NULL),
  (9453, 2091, '(410 ; 0).', 0, NULL),
  (9454, 2091, '(410 ; 20).', 0, NULL),
  (9455, 2091, '(440 ; 0).', 0, NULL),
  (9456, 2091, '(440 ; 20).', 1, NULL),
  (9457, 2092, '2,099.', 0, NULL),
  (9458, 2092, '2,96.', 0, NULL),
  (9459, 2092, '3,021.', 1, NULL),
  (9460, 2092, '3,07.', 0, NULL),
  (9461, 2092, '3,10', 0, NULL),
  (9462, 2093, 'Muito baixa.', 0, NULL),
  (9463, 2093, 'Baixa.', 0, NULL),
  (9464, 2093, 'Média.', 0, NULL),
  (9465, 2093, 'Alta.', 1, NULL),
  (9466, 2093, 'Muito alta.', 0, NULL),
  (9467, 2094, '8b³', 0, NULL),
  (9468, 2094, '6b³', 1, NULL),
  (9469, 2094, '5b³', 0, NULL),
  (9470, 2094, '4b³', 0, NULL),
  (9471, 2094, '2b³', 0, NULL),
  (9472, 2096, '16.', 0, NULL),
  (9473, 2096, '800.', 0, NULL),
  (9474, 2096, '1 600.', 0, NULL),
  (9475, 2096, '8 000.', 0, NULL),
  (9476, 2096, '16 000.', 1, NULL),
  (9477, 2097, 'Janeiro.', 0, NULL),
  (9478, 2097, 'Abril.', 0, NULL),
  (9479, 2097, 'Junho.', 0, NULL),
  (9480, 2097, 'Julho.', 1, NULL),
  (9481, 2097, 'Outubro.', 0, NULL),
  (9482, 2098, 'Janeiro.', 0, NULL),
  (9483, 2098, 'Abril.', 0, NULL),
  (9484, 2098, 'Junho.', 0, NULL),
  (9485, 2098, 'Julho.', 1, NULL),
  (9486, 2098, 'Outubro.', 0, NULL),
  (9487, 2099, '6', 0, NULL),
  (9488, 2099, '16', 0, NULL),
  (9489, 2099, '17', 0, NULL),
  (9490, 2099, '18', 1, NULL),
  (9491, 2099, '21', 0, NULL),
  (9492, 2100, '22,00 cm, 12,00 cm e 5,00 cm.', 1, NULL),
  (9493, 2100, '27,50 cm, 15,00 cm e 6,25 cm.', 0, NULL),
  (9494, 2100, '34,37 cm, 18,75 cm e 7,81 cm.', 0, NULL),
  (9495, 2100, '35,20 cm, 19,20 cm e 8,00 cm.', 0, NULL),
  (9496, 2100, '44,00 cm, 24,00 cm e 10,00 cm.', 0, NULL),
  (9497, 2101, '53', 0, NULL),
  (9498, 2101, '94', 0, NULL),
  (9499, 2101, '113', 0, NULL),
  (9500, 2101, '135', 1, NULL),
  (9501, 2101, '145', 0, NULL),
  (9502, 2102, '1 000', 0, NULL),
  (9503, 2102, '1 250', 0, NULL),
  (9504, 2102, '1 500', 1, NULL),
  (9505, 2102, '2 000', 0, NULL),
  (9506, 2102, '2 500', 0, NULL),
  (9507, 2103, 'I e III', 0, NULL),
  (9508, 2103, 'I e IV', 0, NULL),
  (9509, 2103, 'II e III', 1, NULL),
  (9510, 2103, 'II e IV', 0, NULL),
  (9511, 2103, 'III e IV', 0, NULL),
  (9512, 2104, '205/55R15.', 0, NULL),
  (9513, 2104, '175/65R15.', 0, NULL),
  (9514, 2104, '175/75R15.', 0, NULL),
  (9515, 2104, '175/80R15.', 0, NULL),
  (9516, 2104, '185/60R15', 1, NULL),
  (9517, 2105, '3 e C', 0, NULL),
  (9518, 2105, '4 e C', 0, NULL),
  (9519, 2105, '4 e D', 1, NULL),
  (9520, 2105, '4 e E', 0, NULL),
  (9521, 2105, '5 e C', 0, NULL),
  (9522, 2106, '7,5 e 14,5.', 0, NULL),
  (9523, 2106, '9,0 e 16,0.', 1, NULL),
  (9524, 2106, '9,3 e 16,3.', 0, NULL),
  (9525, 2106, '10,0 e 17,0.', 0, NULL),
  (9526, 2106, '13,5 e 20,5.', 0, NULL),
  (9527, 2107, 'I', 0, NULL),
  (9528, 2107, 'II', 0, NULL),
  (9529, 2107, 'IV', 0, NULL),
  (9530, 2107, 'V', 1, NULL),
  (9531, 2107, 'VII', 0, NULL),
  (9532, 2108, '74', 0, NULL),
  (9533, 2108, '70', 0, NULL),
  (9534, 2108, '64', 0, NULL),
  (9535, 2108, '60', 0, NULL),
  (9536, 2108, '53', 1, NULL),
  (9537, 2109, 'R$ 0,96', 0, NULL),
  (9538, 2109, 'R$ 1,00', 0, NULL),
  (9539, 2109, 'R$ 1,40', 1, NULL),
  (9540, 2109, 'R$ 1,50', 0, NULL),
  (9541, 2109, 'R$ 1,56', 0, NULL),
  (9542, 2111, '46 171.', 0, NULL),
  (9543, 2111, '147 016', 0, NULL),
  (9544, 2111, '171 064.', 0, NULL),
  (9545, 2111, '460 171.', 1, NULL),
  (9546, 2111, '610 741.', 0, NULL),
  (9547, 2112, 'Diminuir em 2 unidades', 0, NULL),
  (9548, 2112, 'Diminuir em 4 unidades', 0, NULL),
  (9549, 2112, 'Aumentar em 2 unidades.', 1, NULL),
  (9550, 2112, 'Aumentar em 4 unidades.', 0, NULL),
  (9551, 2112, 'Aumentar em 8 unidades.', 0, NULL),
  (9552, 2114, '23,5%', 1, NULL),
  (9553, 2114, '21,2%', 0, NULL),
  (9554, 2114, '19,0%', 0, NULL),
  (9555, 2114, '11,8%', 0, NULL),
  (9556, 2114, '10,0%', 0, NULL),
  (9557, 2115, '1/96', 0, NULL),
  (9558, 2115, '1/64', 0, NULL),
  (9559, 2115, '5/24', 1, NULL),
  (9560, 2115, '1/4', 0, NULL),
  (9561, 2115, '5/12', 0, NULL),
  (9562, 2116, '59', 0, NULL),
  (9563, 2116, '65', 0, NULL),
  (9564, 2116, '68', 0, NULL),
  (9565, 2116, '71', 1, NULL),
  (9566, 2116, '80', 0, NULL),
  (9567, 2117, 'A', 0, NULL),
  (9568, 2117, 'B', 1, NULL),
  (9569, 2117, 'C', 0, NULL),
  (9570, 2117, 'D', 0, NULL),
  (9571, 2117, 'E', 0, NULL),
  (9572, 2119, '360', 0, NULL),
  (9573, 2119, '485', 0, NULL),
  (9574, 2119, '560', 0, NULL),
  (9575, 2119, '740', 0, NULL),
  (9576, 2119, '860', 1, NULL),
  (9577, 2120, '26', 0, NULL),
  (9578, 2120, '29', 0, NULL),
  (9579, 2120, '30', 0, NULL),
  (9580, 2120, '31', 0, NULL),
  (9581, 2120, '35', 1, NULL),
  (9582, 2121, '2 meses e meio.', 1, NULL),
  (9583, 2121, '3 meses e meio.', 0, NULL),
  (9584, 2121, '1 mês e meio.', 0, NULL),
  (9585, 2121, '4 meses.', 0, NULL),
  (9586, 2121, '1 mês.', 0, NULL),
  (9587, 2122, '156', 0, NULL),
  (9588, 2122, '180', 1, NULL),
  (9589, 2122, '192', 0, NULL),
  (9590, 2122, '264', 0, NULL),
  (9591, 2122, '288', 0, NULL),
  (9592, 2123, '22', 0, NULL),
  (9593, 2123, '50', 0, NULL),
  (9594, 2123, '100', 0, NULL),
  (9595, 2123, '200', 1, NULL),
  (9596, 2123, '400', 0, NULL),
  (9597, 2124, '1,4 × 10³  m³', 0, NULL),
  (9598, 2124, '1,8 × 10³  m³', 0, NULL),
  (9599, 2124, '2,0 × 10³  m³', 0, NULL),
  (9600, 2124, '3,2 × 10³  m³', 1, NULL),
  (9601, 2124, '6,0 × 10³  m³', 0, NULL),
  (9602, 2125, 'Janeiro', 1, NULL),
  (9603, 2125, 'Fevereiro', 0, NULL),
  (9604, 2125, 'Agosto', 0, NULL),
  (9605, 2125, 'Novembro', 0, NULL),
  (9606, 2125, 'Dezembro', 0, NULL),
  (9607, 2126, 'DB < dA < dC', 1, NULL),
  (9608, 2126, 'DB = dA < dC', 0, NULL),
  (9609, 2126, 'DC < dB = dA', 0, NULL),
  (9610, 2126, 'DB < dC < dA', 0, NULL),
  (9611, 2126, 'DC < dB < dA', 0, NULL),
  (9612, 2127, '570', 0, NULL),
  (9613, 2127, '500', 1, NULL),
  (9614, 2127, '450', 0, NULL),
  (9615, 2127, '187', 0, NULL),
  (9616, 2127, '150', 0, NULL),
  (9617, 2128, '40', 0, NULL),
  (9618, 2128, '60', 0, NULL),
  (9619, 2128, '100', 0, NULL),
  (9620, 2128, '115', 1, NULL),
  (9621, 2128, '120', 0, NULL),
  (9622, 2129, '1 260.', 0, NULL),
  (9623, 2129, '2 520.', 1, NULL),
  (9624, 2129, '2 800.', 0, NULL),
  (9625, 2129, '3 600.', 0, NULL),
  (9626, 2129, '4 000.', 0, NULL),
  (9627, 2130, '18', 0, NULL),
  (9628, 2130, '20', 0, NULL),
  (9629, 2130, '36', 1, NULL),
  (9630, 2130, '45', 0, NULL),
  (9631, 2130, '54', 0, NULL),
  (9632, 2132, '40%', 1, NULL),
  (9633, 2132, '20%', 0, NULL),
  (9634, 2132, '60%', 0, NULL),
  (9635, 2132, '30%', 0, NULL),
  (9636, 2132, '70%', 0, NULL),
  (9637, 2133, '2', 0, NULL),
  (9638, 2133, '3', 0, NULL),
  (9639, 2133, '4', 0, NULL),
  (9640, 2133, '5', 1, NULL),
  (9641, 2133, '6', 0, NULL),
  (9642, 2134, '125%', 0, NULL),
  (9643, 2134, '231%', 0, NULL),
  (9644, 2134, '331%', 0, NULL),
  (9645, 2134, '700%', 1, NULL),
  (9646, 2134, '800%', 0, NULL),
  (9647, 2135, 'I', 0, NULL),
  (9648, 2135, 'II', 1, NULL),
  (9649, 2135, 'III', 0, NULL),
  (9650, 2135, 'IV', 0, NULL),
  (9651, 2135, 'V', 0, NULL),
  (9652, 2136, '28', 0, NULL),
  (9653, 2136, '21', 0, NULL),
  (9654, 2136, '2', 0, NULL),
  (9655, 2136, '7', 0, NULL),
  (9656, 2136, '14', 1, NULL),
  (9657, 2137, '16', 0, NULL),
  (9658, 2137, '20', 0, NULL),
  (9659, 2137, '24', 1, NULL),
  (9660, 2137, '34', 0, NULL),
  (9661, 2137, '40', 0, NULL),
  (9662, 2138, 'Quadrados, apenas', 0, NULL),
  (9663, 2138, 'Triângulos e quadrados, apenas', 0, NULL),
  (9664, 2138, 'Triângulos, quadrados e trapézios, apenas', 0, NULL),
  (9665, 2138, 'Triângulos, quadrados, trapézios e quadriláteros irregulares, apenas.', 0, NULL),
  (9666, 2138, 'Triângulos, quadrados, trapézios, quadriláteros irregulares e pentágonos, apenas.', 1, NULL),
  (9667, 2139, 'De 0 a 10.', 0, NULL),
  (9668, 2139, 'De 5 a 10.', 1, NULL),
  (9669, 2139, 'De 5 a 15.', 0, NULL),
  (9670, 2139, 'De 15 a 25.', 0, NULL),
  (9671, 2139, 'De 0 a 25.', 0, NULL),
  (9672, 2140, 'I', 1, NULL),
  (9673, 2140, 'II', 0, NULL),
  (9674, 2140, 'III', 0, NULL),
  (9675, 2140, 'IV', 0, NULL),
  (9676, 2140, 'V', 0, NULL),
  (9677, 2142, 'F1.', 0, NULL),
  (9678, 2142, 'F2.', 1, NULL),
  (9679, 2142, 'F3.', 0, NULL),
  (9680, 2142, 'F4.', 0, NULL),
  (9681, 2142, 'F5.', 0, NULL),
  (9682, 2143, 'E1 = E2 + 2', 0, NULL),
  (9683, 2143, 'E1 = 10².E2', 0, NULL),
  (9684, 2143, 'E1 = 10³.E2', 1, NULL),
  (9685, 2143, 'E1 = 109/7.E2', 0, NULL),
  (9686, 2143, 'E1 = 9/7.E2', 0, NULL),
  (9687, 2144, 'E1 = E2 + 2', 0, NULL),
  (9688, 2144, 'E1 = 10².E2', 0, NULL),
  (9689, 2144, 'E1 = 10³.E2', 1, NULL),
  (9690, 2144, 'E1 = 109/7.E2', 0, NULL),
  (9691, 2144, 'E1 = 9/7.E2', 0, NULL),
  (9692, 2146, '12', 0, NULL),
  (9693, 2146, '14', 0, NULL),
  (9694, 2146, '15', 0, NULL),
  (9695, 2146, '16', 1, NULL),
  (9696, 2146, '17', 0, NULL),
  (9697, 2147, '33%', 0, NULL),
  (9698, 2147, '50%', 1, NULL),
  (9699, 2147, '57%', 0, NULL),
  (9700, 2147, '70%', 0, NULL),
  (9701, 2147, '86%', 0, NULL),
  (9702, 2148, '4.', 0, NULL),
  (9703, 2148, '3.', 0, NULL),
  (9704, 2148, '2.', 1, NULL),
  (9705, 2148, '1.', 0, NULL),
  (9706, 2148, '0.', 0, NULL),
  (9707, 2149, '192.', 0, NULL),
  (9708, 2149, '300.', 0, NULL),
  (9709, 2149, '304.', 1, NULL),
  (9710, 2149, '320.', 0, NULL),
  (9711, 2149, '400.', 0, NULL),
  (9712, 2150, '1.', 0, NULL),
  (9713, 2150, '2.', 0, NULL),
  (9714, 2150, '3.', 1, NULL),
  (9715, 2150, '4.', 0, NULL),
  (9716, 2150, '5.', 0, NULL),
  (9717, 2151, 'C6,4', 0, NULL),
  (9718, 2151, 'C9,3', 1, NULL),
  (9719, 2151, 'C10,4', 0, NULL),
  (9720, 2151, '64', 0, NULL),
  (9721, 2151, '46', 0, NULL),
  (9722, 2152, '11,25.', 0, NULL),
  (9723, 2152, '27,00.', 1, NULL),
  (9724, 2152, '28,80.', 0, NULL),
  (9725, 2152, '32,25.', 0, NULL),
  (9726, 2152, '49,50.', 0, NULL),
  (9727, 2153, 'P1.', 0, NULL),
  (9728, 2153, 'P2.', 0, NULL),
  (9729, 2153, 'P3.', 0, NULL),
  (9730, 2153, 'P4.', 1, NULL),
  (9731, 2153, 'P5.', 0, NULL),
  (9732, 2154, '18.', 1, NULL),
  (9733, 2154, '20.', 0, NULL),
  (9734, 2154, '24.', 0, NULL),
  (9735, 2154, '36.', 0, NULL),
  (9736, 2154, '40.', 0, NULL),
  (9737, 2155, 'Tetraedro.', 0, NULL),
  (9738, 2155, 'Pirâmide retangular.', 0, NULL),
  (9739, 2155, 'Tronco de pirâmide retangular.', 0, NULL),
  (9740, 2155, 'Prisma quadrangular reto.', 0, NULL),
  (9741, 2155, 'Prisma triangular reto.', 1, NULL),
  (9742, 2156, 'P.', 0, NULL),
  (9743, 2156, 'Q.', 1, NULL),
  (9744, 2156, 'R.', 0, NULL),
  (9745, 2156, 'S.', 0, NULL),
  (9746, 2156, 'T.', 0, NULL),
  (9747, 2157, '90° no sentido horário.', 0, NULL),
  (9748, 2157, '135° no sentido horário.', 1, NULL),
  (9749, 2157, '180° no sentido anti-horário.', 0, NULL),
  (9750, 2157, '270° no sentido anti-horário', 0, NULL),
  (9751, 2157, '315° no sentido horário.', 0, NULL),
  (9752, 2158, '7,00.', 0, NULL),
  (9753, 2158, '7,38.', 0, NULL),
  (9754, 2158, '7,50.', 0, NULL),
  (9755, 2158, '8,25.', 1, NULL),
  (9756, 2158, '9,00.', 0, NULL),
  (9757, 2160, '2,82.', 0, NULL),
  (9758, 2160, '3,52.', 0, NULL),
  (9759, 2160, '3,70.', 0, NULL),
  (9760, 2160, '4,02.', 1, NULL),
  (9761, 2160, '4,20.', 0, NULL),
  (9762, 2161, '1.', 1, NULL),
  (9763, 2161, '2.', 0, NULL),
  (9764, 2161, '3.', 0, NULL),
  (9765, 2161, '4.', 0, NULL),
  (9766, 2161, '5.', 0, NULL),
  (9767, 2162, 'Apenas o aluno Y', 0, NULL),
  (9768, 2162, 'Apenas o aluno Z', 1, NULL),
  (9769, 2162, 'Apenas os alunos x e y', 0, NULL),
  (9770, 2162, 'Apenas os alunos x e z', 0, NULL),
  (9771, 2162, 'Os alunos x, y, z', 0, NULL),
  (9772, 2163, 'I', 0, NULL),
  (9773, 2163, 'II', 0, NULL),
  (9774, 2163, 'III', 0, NULL),
  (9775, 2163, 'IV', 1, NULL),
  (9776, 2163, 'V', 0, NULL),
  (9777, 2164, '3,099.', 0, NULL),
  (9778, 2164, '3,970.', 0, NULL),
  (9779, 2164, '4,025.', 1, NULL),
  (9780, 2164, '4,080.', 0, NULL),
  (9781, 2164, '4,100.', 0, NULL),
  (9782, 2165, '100', 0, NULL),
  (9783, 2165, '400', 0, NULL),
  (9784, 2165, '1600', 1, NULL),
  (9785, 2165, '6250', 0, NULL),
  (9786, 2165, '10000', 0, NULL),
  (9787, 2166, 'I', 0, NULL),
  (9788, 2166, 'II', 0, NULL),
  (9789, 2166, 'III', 0, NULL),
  (9790, 2166, 'IV', 1, NULL),
  (9791, 2166, 'V', 0, NULL),
  (9792, 2167, '15', 0, NULL),
  (9793, 2167, '30', 0, NULL),
  (9794, 2167, '108', 0, NULL),
  (9795, 2167, '360', 0, NULL),
  (9796, 2167, '972', 1, NULL),
  (9797, 2168, '1 e 49', 0, NULL),
  (9798, 2168, '1 e 99', 0, NULL),
  (9799, 2168, '10 e 10', 0, NULL),
  (9800, 2168, '25 E 25', 1, NULL),
  (9801, 2168, '50 E 50', 0, NULL),
  (9802, 2169, 'Semirreta oblíqua.', 0, NULL),
  (9803, 2169, 'Semirreta horizontal.', 0, NULL),
  (9804, 2169, 'Ramo de parábola.', 0, NULL),
  (9805, 2169, 'Arco de circunferência.', 0, NULL),
  (9806, 2169, 'Ramo de hipérbole.', 1, NULL),
  (9807, 2170, '2,25', 0, NULL),
  (9808, 2170, '3,90', 0, NULL),
  (9809, 2170, '4,35', 1, NULL),
  (9810, 2170, '4,40', 0, NULL),
  (9811, 2170, '4,45', 0, NULL),
  (9812, 2171, '5/4', 0, NULL),
  (9813, 2171, '1/4', 1, NULL),
  (9814, 2171, '4/3', 0, NULL),
  (9815, 2171, '4/1', 0, NULL),
  (9816, 2171, '3/4', 0, NULL),
  (9817, 2172, '0.', 0, NULL),
  (9818, 2172, '1/2.', 0, NULL),
  (9819, 2172, '1/5.', 0, NULL),
  (9820, 2172, '2/15.', 0, NULL),
  (9821, 2172, '8/35.', 1, NULL),
  (9822, 2173, 'P(t) = 99 + 21cos(3πt)', 1, NULL),
  (9823, 2173, 'P(t) = 78 + 42cos(3πt)', 0, NULL),
  (9824, 2173, 'P(t) = 99 + 21cos(2πt)', 0, NULL),
  (9825, 2173, 'P(t) = 99 + 21cos(t)', 0, NULL),
  (9826, 2173, 'P(t) = 78 + 42cos(t)', 0, NULL),
  (9827, 2174, '5 - √91/2', 0, NULL),
  (9828, 2174, '10 - √91', 0, NULL),
  (9829, 2174, '1', 1, NULL),
  (9830, 2174, '4', 0, NULL),
  (9831, 2174, '5', 0, NULL),
  (9832, 2175, '16/3', 0, NULL),
  (9833, 2175, '31/5', 0, NULL),
  (9834, 2175, '25/4', 0, NULL),
  (9835, 2175, '25/3', 1, NULL),
  (9836, 2175, '75/2', 0, NULL),
  (9837, 2176, 'X.', 1, NULL),
  (9838, 2176, 'Y.', 0, NULL),
  (9839, 2176, 'Z.', 0, NULL),
  (9840, 2176, 'W.', 0, NULL),
  (9841, 2176, 'U.', 0, NULL),
  (9842, 2177, '5 °C', 0, NULL),
  (9843, 2177, '7 °C', 0, NULL),
  (9844, 2177, '13 °C', 0, NULL),
  (9845, 2177, '15 °C', 0, NULL),
  (9846, 2177, '19 °C', 1, NULL),
  (9847, 2178, '12, 24 e 36.', 1, NULL),
  (9848, 2178, '6, 12 e 18.', 0, NULL),
  (9849, 2178, '2, 4 e 6.', 0, NULL),
  (9850, 2178, '300, 1200 e 2700.', 0, NULL),
  (9851, 2178, '600, 2400 e 5400.', 0, NULL),
  (9852, 2179, '1.', 1, NULL),
  (9853, 2179, '2.', 0, NULL),
  (9854, 2179, '4.', 0, NULL),
  (9855, 2179, '5.', 0, NULL),
  (9856, 2179, '6.', 0, NULL),
  (9857, 2180, '20/0,075', 0, NULL),
  (9858, 2180, '20/0,75', 1, NULL),
  (9859, 2180, '20/7,5', 0, NULL),
  (9860, 2180, '20 x 0,075', 0, NULL),
  (9861, 2180, '20 x 0,75', 0, NULL),
  (9862, 2181, '8,1%', 0, NULL),
  (9863, 2181, '8,0%', 1, NULL),
  (9864, 2181, '7,9%', 0, NULL),
  (9865, 2181, '7,7%', 0, NULL),
  (9866, 2181, '7,6%', 0, NULL),
  (9867, 2183, '231.', 0, NULL),
  (9868, 2183, '431.', 0, NULL),
  (9869, 2183, '472.', 1, NULL),
  (9870, 2183, '523.', 0, NULL),
  (9871, 2183, '672.', 0, NULL),
  (9872, 2184, 'I.', 0, NULL),
  (9873, 2184, 'II.', 0, NULL),
  (9874, 2184, 'III.', 0, NULL),
  (9875, 2184, 'IV.', 0, NULL),
  (9876, 2184, 'V.', 1, NULL),
  (9877, 2185, '64', 0, NULL),
  (9878, 2185, '56', 0, NULL),
  (9879, 2185, '49', 0, NULL),
  (9880, 2185, '36', 0, NULL),
  (9881, 2185, '28', 1, NULL),
  (9882, 2186, '0,075', 0, NULL),
  (9883, 2186, '0,150', 0, NULL),
  (9884, 2186, '0,325', 1, NULL),
  (9885, 2186, '0,600', 0, NULL),
  (9886, 2186, '0,800', 0, NULL),
  (9887, 2187, '19 h 30 min e 20 h 10 min.', 0, NULL),
  (9888, 2187, '19 h 20 min e 19 h 30 min.', 0, NULL),
  (9889, 2187, '19 h 10 min e 19 h 20 min.', 0, NULL),
  (9890, 2187, '19 h e 19 h 10 min.', 1, NULL),
  (9891, 2187, '18 h 40 min e 19 h.', 0, NULL),
  (9892, 2188, '19 h 30 min e 20 h 10 min.', 0, NULL),
  (9893, 2188, '19 h 20 min e 19 h 30 min.', 0, NULL),
  (9894, 2188, '19 h 10 min e 19 h 20 min.', 0, NULL),
  (9895, 2188, '19 h e 19 h 10 min.', 1, NULL),
  (9896, 2188, '18 h 40 min e 19 h.', 0, NULL),
  (9897, 2189, '56ª', 0, NULL),
  (9898, 2189, '55ª', 0, NULL),
  (9899, 2189, '52ª', 1, NULL),
  (9900, 2189, '51ª', 0, NULL),
  (9901, 2189, '45ª', 0, NULL),
  (9902, 2190, 'X = 0', 0, NULL),
  (9903, 2190, 'Y = 0', 0, NULL),
  (9904, 2190, 'X² + y² =16', 0, NULL),
  (9905, 2190, 'X² + (y-2)² = 4', 0, NULL),
  (9906, 2190, '(x -2 )² + ( y - 2 )² = 8', 1, NULL),
  (9907, 2192, 'R$512 000,00.', 0, NULL),
  (9908, 2192, 'R$520 000,00.', 0, NULL),
  (9909, 2192, 'R$528 000,00.', 1, NULL),
  (9910, 2192, 'R$552 000,00.', 0, NULL),
  (9911, 2192, 'R$584 000,00.', 0, NULL),
  (9912, 2193, '29,25 e 0,75', 0, NULL),
  (9913, 2193, '28,75 e 1,25', 1, NULL),
  (9914, 2193, '28,50 e 1,50', 0, NULL),
  (9915, 2193, '27,75 e 2,25', 0, NULL),
  (9916, 2193, '25,00 e 5,00', 0, NULL),
  (9917, 2194, '1.', 0, NULL),
  (9918, 2194, '2.', 1, NULL),
  (9919, 2194, '3.', 0, NULL),
  (9920, 2194, '4.', 0, NULL),
  (9921, 2194, '5.', 0, NULL),
  (9922, 2195, '0,15.', 0, NULL),
  (9923, 2195, '0,30.', 0, NULL),
  (9924, 2195, '0,50.', 0, NULL),
  (9925, 2195, '1,11.', 1, NULL),
  (9926, 2195, '2,22.', 0, NULL),
  (9927, 2197, 'Ótima.', 0, NULL),
  (9928, 2197, 'Próxima de ótima.', 0, NULL),
  (9929, 2197, 'Limite', 0, NULL),
  (9930, 2197, 'Alta.', 1, NULL),
  (9931, 2197, 'Muito alta.', 0, NULL),
  (9932, 2199, 'Elevado em 40 cm.', 1, NULL),
  (9933, 2199, 'Elevado em 50 cm.', 0, NULL),
  (9934, 2199, 'Mantido no mesmo nível.', 0, NULL),
  (9935, 2199, 'Rebaixado em 40 cm.', 0, NULL),
  (9936, 2199, 'Rebaixado em 50 cm.', 0, NULL),
  (9937, 2200, '1.', 0, NULL),
  (9938, 2200, '2.', 0, NULL),
  (9939, 2200, '3.', 0, NULL),
  (9940, 2200, '4.', 0, NULL),
  (9941, 2200, '5.', 1, NULL),
  (9942, 2201, '64.', 0, NULL),
  (9943, 2201, '48.', 1, NULL),
  (9944, 2201, '24.', 0, NULL),
  (9945, 2201, '21.', 0, NULL),
  (9946, 2201, '12.', 0, NULL),
  (9947, 2203, '4π.', 0, NULL),
  (9948, 2203, '8π.', 0, NULL),
  (9949, 2203, '48π.', 0, NULL),
  (9950, 2203, '64π.', 1, NULL),
  (9951, 2203, '192π.', 0, NULL),
  (9952, 2204, '4 x 4.', 0, NULL),
  (9953, 2204, '6 x 6.', 0, NULL),
  (9954, 2204, '9 x 9.', 0, NULL),
  (9955, 2204, '10 x 10.', 1, NULL),
  (9956, 2204, '11 x 11.', 0, NULL),
  (9957, 2205, 'Retângulo escaleno.', 0, NULL),
  (9958, 2205, 'Acutângulo escaleno.', 0, NULL),
  (9959, 2205, 'Acutângulo isósceles.', 0, NULL),
  (9960, 2205, 'Obtusângulo escaleno.', 0, NULL),
  (9961, 2205, 'Obtusângulo isósceles.', 1, NULL),
  (9962, 2206, '4/21', 0, NULL),
  (9963, 2206, '5/21', 0, NULL),
  (9964, 2206, '6/21', 0, NULL),
  (9965, 2206, '7/21', 1, NULL),
  (9966, 2206, '8/21', 0, NULL),
  (9967, 2207, '4 408.', 1, NULL),
  (9968, 2207, '7 632.', 0, NULL),
  (9969, 2207, '44 080.', 0, NULL),
  (9970, 2207, '76 316.', 0, NULL),
  (9971, 2207, '440 800.', 0, NULL),
  (9972, 2208, '36', 0, NULL),
  (9973, 2208, '33', 1, NULL),
  (9974, 2208, '27', 0, NULL),
  (9975, 2208, '24', 0, NULL),
  (9976, 2208, '21', 0, NULL),
  (9977, 2210, '192.', 0, NULL),
  (9978, 2210, '240.', 0, NULL),
  (9979, 2210, '252.', 0, NULL),
  (9980, 2210, '320.', 1, NULL),
  (9981, 2210, '420.', 0, NULL),
  (9982, 2211, '30.', 0, NULL),
  (9983, 2211, '40.', 1, NULL),
  (9984, 2211, '45.', 0, NULL),
  (9985, 2211, '60.', 0, NULL),
  (9986, 2211, '68.', 0, NULL),
  (9987, 2212, '2 X 128', 0, NULL),
  (9988, 2212, '64 + 32 + 16 + 8 + 4 + 2', 0, NULL),
  (9989, 2212, '128 + 64 + 32 + 16 + 8 + 4 + 2 + 1', 0, NULL),
  (9990, 2212, '128 + 64 + 32 + 16 + 8 + 4 + 2', 0, NULL),
  (9991, 2212, '64 + 32 + 16 + 8+ 4 + 2+ 1', 1, NULL),
  (9992, 2213, '1 ano e 8 meses a 12 anos e 6 meses.', 1, NULL),
  (9993, 2213, '1 ano e 8 meses a 5 anos.', 0, NULL),
  (9994, 2213, '3 anos e 4 meses a 10 anos.', 0, NULL),
  (9995, 2213, '4 anos e 2 meses a 5 anos.', 0, NULL),
  (9996, 2213, '4 anos e 2 meses a 12 anos e 6 meses.', 0, NULL),
  (9997, 2214, '16º', 0, NULL),
  (9998, 2214, '22º', 0, NULL),
  (9999, 2214, '23º', 1, NULL),
  (10000, 2214, '25º', 0, NULL),
  (10001, 2214, '32º', 0, NULL),
  (10002, 2216, '29,8.', 0, NULL),
  (10003, 2216, '71,0.', 0, NULL),
  (10004, 2216, '74,5.', 1, NULL),
  (10005, 2216, '75,5.', 0, NULL),
  (10006, 2216, '84,0.', 0, NULL),
  (10007, 2217, '10.', 0, NULL),
  (10008, 2217, '15.', 0, NULL),
  (10009, 2217, '35.', 0, NULL),
  (10010, 2217, '40.', 1, NULL),
  (10011, 2217, '45.', 0, NULL),
  (10012, 2218, '62,3%', 0, NULL),
  (10013, 2218, '63,0%', 1, NULL),
  (10014, 2218, '63,5%', 0, NULL),
  (10015, 2218, '64,0%', 0, NULL),
  (10016, 2218, '65,5%', 0, NULL),
  (10017, 2219, 'X > 1 500.', 0, NULL),
  (10018, 2219, 'X < 3 000.', 0, NULL),
  (10019, 2219, '1 500 < X < 2 250.', 1, NULL),
  (10020, 2219, '1 500 < X < 3 000.', 0, NULL),
  (10021, 2219, '2 250 < X < 3 000.', 0, NULL),
  (10022, 2220, 'F(t) = 80sen(t) + 88', 1, NULL),
  (10023, 2220, 'F(t) = 80cos(t) + 8 8', 0, NULL),
  (10024, 2220, 'F(t) = 88cos(t) + 168', 0, NULL),
  (10025, 2220, 'F(t) = 168sen(t) + 88cos(t)', 0, NULL),
  (10026, 2220, 'F(t) = 88sen(t) + 168cos(t)', 0, NULL),
  (10027, 2221, '75° no sentido horário.', 0, NULL),
  (10028, 2221, '105° no sentido anti-horário.', 0, NULL),
  (10029, 2221, '120° no sentido anti-horário.', 0, NULL),
  (10030, 2221, '135° no sentido anti-horário.', 0, NULL),
  (10031, 2221, '165° no sentido horário.', 1, NULL),
  (10032, 2222, 'Edu.', 0, NULL),
  (10033, 2222, 'Dani.', 0, NULL),
  (10034, 2222, 'Caio.', 0, NULL),
  (10035, 2222, 'Bia.', 0, NULL),
  (10036, 2222, 'Ana.', 1, NULL),
  (10037, 2224, '1999', 0, NULL),
  (10038, 2224, '2002', 0, NULL),
  (10039, 2224, '2022', 1, NULL),
  (10040, 2224, '2026', 0, NULL),
  (10041, 2224, '2146', 0, NULL),
  (10042, 2225, '20', 0, NULL),
  (10043, 2225, '24', 1, NULL),
  (10044, 2225, '29', 0, NULL),
  (10045, 2225, '40', 0, NULL),
  (10046, 2225, '58', 0, NULL),
  (10047, 2226, 'T1.', 0, NULL),
  (10048, 2226, 'T2.', 0, NULL),
  (10049, 2226, 'T3.', 1, NULL),
  (10050, 2226, 'T4.', 0, NULL),
  (10051, 2226, 'T5.', 0, NULL),
  (10052, 2227, '12', 0, NULL),
  (10053, 2227, '18', 0, NULL),
  (10054, 2227, '30', 0, NULL),
  (10055, 2227, '40', 1, NULL),
  (10056, 2227, '50', 0, NULL),
  (10057, 2228, '34', 0, NULL),
  (10058, 2228, '42', 0, NULL),
  (10059, 2228, '47', 0, NULL),
  (10060, 2228, '48', 1, NULL),
  (10061, 2228, '79', 0, NULL),
  (10062, 2233, 'Qualquer valor acima de 10^{-8}10​−8    	​​.', 0, NULL),
  (10063, 2233, 'Qualquer valor positivo inferior a 10^{-7}10​−7​​.', 0, NULL),
  (10064, 2233, 'Valores maiores que 7 e menores que 8.', 0, NULL),
  (10065, 2233, 'Valores maiores que 70 e menores que 80.', 0, NULL),
  (10066, 2233, 'Valores maiores que 10^{-8}10​−8​​ e menores que 10^{-7}10​−7​​.', 1, NULL),
  (10067, 2234, '20%', 0, NULL),
  (10068, 2234, '25%', 0, NULL),
  (10069, 2234, '40%', 0, NULL),
  (10070, 2234, '60%', 0, NULL),
  (10071, 2234, '80%', 1, NULL),
  (10072, 2236, '1,1x10​−1​​', 0, NULL),
  (10073, 2236, '1,1x10​−2​​', 0, NULL),
  (10074, 2236, '1,1x10​−3​​', 0, NULL),
  (10075, 2236, '1,1x10​−4​​', 1, NULL),
  (10076, 2236, '1,1x10​−5​​', 0, NULL),
  (10077, 2237, 'Será suficiente, pois a área da nova região a ser pavimentada mede 21 m².', 0, NULL),
  (10078, 2237, 'Será suficiente, pois a área da nova região a ser pavimentada mede 24 m².', 0, NULL),
  (10079, 2237, 'Será suficiente, pois a área da nova região a ser pavimentada mede 48 m².', 0, NULL),
  (10080, 2237, 'Não será suficiente, pois a área da nova região a ser pavimentada mede 108 m².', 0, NULL),
  (10081, 2237, 'Não será suficiente, pois a área da nova região a ser pavimentada mede 120 m².', 1, NULL),
  (10082, 2238, 'I', 0, NULL),
  (10083, 2238, 'II', 1, NULL),
  (10084, 2238, 'III', 0, NULL),
  (10085, 2238, 'IV', 0, NULL),
  (10086, 2238, 'V', 0, NULL),
  (10087, 2239, 'Segunda-feira.', 1, NULL),
  (10088, 2239, 'Terça-feira.', 0, NULL),
  (10089, 2239, 'Quarta-feira.', 0, NULL),
  (10090, 2239, 'Quinta-feira.', 0, NULL),
  (10091, 2239, 'Sexta-feira.', 0, NULL),
  (10092, 2240, '2,3.', 0, NULL),
  (10093, 2240, '3,5.', 0, NULL),
  (10094, 2240, '4,7.', 1, NULL),
  (10095, 2240, '5,3.', 0, NULL),
  (10096, 2240, '10,5.', 0, NULL),
  (10097, 2241, '1.', 1, NULL),
  (10098, 2241, '12.', 0, NULL),
  (10099, 2241, '1 e 12.', 0, NULL),
  (10100, 2241, '1 e 13.', 0, NULL),
  (10101, 2241, '1, 12 e 13.', 0, NULL),
  (10102, 2242, '16 628', 0, NULL),
  (10103, 2242, '22 280', 1, NULL),
  (10104, 2242, '28 560', 0, NULL),
  (10105, 2242, '41 120', 0, NULL),
  (10106, 2242, '66 240', 0, NULL),
  (10107, 2243, '9.', 0, NULL),
  (10108, 2243, '12.', 0, NULL),
  (10109, 2243, '89.', 1, NULL),
  (10110, 2243, '112.', 0, NULL),
  (10111, 2243, '134.', 0, NULL),
  (10112, 2244, '150', 0, NULL),
  (10113, 2244, '450', 0, NULL),
  (10114, 2244, '550', 0, NULL),
  (10115, 2244, '700', 1, NULL),
  (10116, 2244, '800', 0, NULL),
  (10117, 2245, '398,02', 0, NULL),
  (10118, 2245, '400,00', 1, NULL),
  (10119, 2245, '401,94', 0, NULL),
  (10120, 2245, '404,00', 0, NULL),
  (10121, 2245, '406,02', 0, NULL),
  (10122, 2246, '29,60 e 11,11.', 1, NULL),
  (10123, 2246, '28,70 e 13,89.', 0, NULL),
  (10124, 2246, '25,00 e 25,00.', 0, NULL),
  (10125, 2246, '18,52 e 11,11.', 0, NULL),
  (10126, 2246, '12,96 e 13,89.', 0, NULL),
  (10127, 2247, 'R$ 3.100,00', 0, NULL),
  (10128, 2247, 'R$ 6.000,00', 1, NULL),
  (10129, 2247, 'R$ 6.200,00', 0, NULL),
  (10130, 2247, 'R$ 15.000,00', 0, NULL),
  (10131, 2247, 'R$ 15.500,00', 0, NULL),
  (10132, 2248, 'R$ 1.340,00.', 0, NULL),
  (10133, 2248, 'R$ 1.349,00', 0, NULL),
  (10134, 2248, 'R$ 1.375,00', 0, NULL),
  (10135, 2248, 'R$ 1.465,00', 0, NULL),
  (10136, 2248, 'R$ 1.474,00.', 1, NULL),
  (10137, 2249, 'Pequeno.', 0, NULL),
  (10138, 2249, 'Ligeiro.', 0, NULL),
  (10139, 2249, 'Moderado.', 1, NULL),
  (10140, 2249, 'Grande.', 0, NULL),
  (10141, 2249, 'Extremo.', 0, NULL),
  (10142, 2250, 'Rolamento.', 0, NULL),
  (10143, 2250, 'Catalisador.', 0, NULL),
  (10144, 2250, 'Amortecedor.', 0, NULL),
  (10145, 2250, 'Pastilha de freio.', 0, NULL),
  (10146, 2250, 'Caixa de direção.', 1, NULL),
  (10147, 2251, '69', 0, NULL),
  (10148, 2251, '70', 0, NULL),
  (10149, 2251, '90', 1, NULL),
  (10150, 2251, '104', 0, NULL),
  (10151, 2251, '105', 0, NULL),
  (10152, 2252, '4 hexágonos regulares e 4 triângulos equiláteros.', 1, NULL),
  (10153, 2252, '2 hexágonos regulares e 4 triângulos equiláteros.', 0, NULL),
  (10154, 2252, '4 quadriláteros e 4 triângulos isósceles.', 0, NULL),
  (10155, 2252, '3 quadriláteros e 4 triângulos isósceles.', 0, NULL),
  (10156, 2252, '3 hexágonos regulares e 4 triângulos equiláteros.', 0, NULL),
  (10157, 2253, '30', 0, NULL),
  (10158, 2253, '15', 0, NULL),
  (10159, 2253, '12', 1, NULL),
  (10160, 2253, '6', 0, NULL),
  (10161, 2253, '3', 0, NULL),
  (10162, 2254, '99', 0, NULL),
  (10163, 2254, '51', 0, NULL),
  (10164, 2254, '50', 0, NULL),
  (10165, 2254, '6', 1, NULL),
  (10166, 2254, '1', 0, NULL),
  (10167, 2255, '1,60.', 0, NULL),
  (10168, 2255, '1,78.', 0, NULL),
  (10169, 2255, '1,79.', 1, NULL),
  (10170, 2255, '1,81.', 0, NULL),
  (10171, 2255, '1,82.', 0, NULL),
  (10172, 2256, '0,1', 0, NULL),
  (10173, 2256, '0,2', 1, NULL),
  (10174, 2256, '1,5', 0, NULL),
  (10175, 2256, '2,0', 0, NULL),
  (10176, 2256, '3,0', 0, NULL),
  (10177, 2257, '0,1200.', 0, NULL),
  (10178, 2257, '0,3048.', 0, NULL),
  (10179, 2257, '1,0800.', 0, NULL),
  (10180, 2257, '12,0000.', 1, NULL),
  (10181, 2257, '36,0000.', 0, NULL),
  (10182, 2258, 'O primeiro.', 0, NULL),
  (10183, 2258, 'O segundo.', 0, NULL),
  (10184, 2258, 'O terceiro.', 1, NULL),
  (10185, 2258, 'O quarto.', 0, NULL),
  (10186, 2258, 'O quinto.', 0, NULL),
  (10187, 2259, 'Dez caminhões com capacidade máxima de 10 m³.', 0, NULL),
  (10188, 2259, 'Cinco caminhões com capacidade máxima de 10 m³.', 0, NULL),
  (10189, 2259, 'Um caminhão com capacidade máxima de 5 m³.', 1, NULL),
  (10190, 2259, 'Dez caminhões com capacidade máxima de 2 m³.', 0, NULL),
  (10191, 2259, 'Um caminhão com capacidade máxima de 2 m³.', 0, NULL),
  (10192, 2261, '2√22 ​cm', 0, NULL),
  (10193, 2261, '6√3 ​cm', 0, NULL),
  (10194, 2261, '12cm.', 0, NULL),
  (10195, 2261, '6√​5​​ cm', 1, NULL),
  (10196, 2261, '12√​2 ​cm', 0, NULL),
  (10197, 2262, 'Basquete, basquete, basquete, basquete.', 0, NULL),
  (10198, 2262, 'Futebol, basquete, basquete, basquete.', 0, NULL),
  (10199, 2262, 'Futebol, futebol, basquete, basquete.', 1, NULL),
  (10200, 2262, 'Futebol, futebol, futebol, basquete.', 0, NULL),
  (10201, 2262, 'Futebol, futebol, futebol, futebol.', 0, NULL),
  (10202, 2263, 'Y = 80X + 920.', 0, NULL),
  (10203, 2263, 'Y = 80X + 1000.', 0, NULL),
  (10204, 2263, 'Y = 80X + 1080.', 0, NULL),
  (10205, 2263, 'Y = 160X + 840.', 1, NULL),
  (10206, 2263, 'Y = 160X + 1000.', 0, NULL),
  (10207, 2264, 'I.', 1, NULL),
  (10208, 2264, 'II.', 0, NULL),
  (10209, 2264, 'III.', 0, NULL),
  (10210, 2264, 'IV.', 0, NULL),
  (10211, 2264, 'V.', 0, NULL),
  (10212, 2265, '10', 0, NULL),
  (10213, 2265, '50', 1, NULL),
  (10214, 2265, '100', 0, NULL),
  (10215, 2265, '250', 0, NULL),
  (10216, 2265, '500', 0, NULL),
  (10217, 2266, 'C412 x C312 x C312 x C212', 0, NULL),
  (10218, 2266, 'C412 + C38 + C35 + C22', 0, NULL),
  (10219, 2266, 'C412 x 2 x C38 x C25', 0, NULL),
  (10220, 2266, 'C412 + 2 + C312 + C312', 0, NULL),
  (10221, 2266, 'C412 x C38 x C35 x C22', 1, NULL),
  (10222, 2267, 'Janeiro.', 0, NULL),
  (10223, 2267, 'Fevereiro.', 0, NULL),
  (10224, 2267, 'Março.', 0, NULL),
  (10225, 2267, 'Abril.', 1, NULL),
  (10226, 2267, 'Maio.', 0, NULL),
  (10227, 2268, '0,0500', 0, NULL),
  (10228, 2268, '0,1000', 0, NULL),
  (10229, 2268, '0,1125', 0, NULL),
  (10230, 2268, '0,3125', 0, NULL),
  (10231, 2268, '0,5000', 1, NULL),
  (10232, 2269, 'I.', 0, NULL),
  (10233, 2269, 'II.', 0, NULL),
  (10234, 2269, 'III.', 1, NULL),
  (10235, 2269, 'IV.', 0, NULL),
  (10236, 2269, 'V.', 0, NULL),
  (10237, 2270, '1,44.', 0, NULL),
  (10238, 2270, '1,16', 0, NULL),
  (10239, 2270, '1,10.', 0, NULL),
  (10240, 2270, '1,00.', 1, NULL),
  (10241, 2270, '0,95.', 0, NULL),
  (10242, 2271, '23,3%.', 0, NULL),
  (10243, 2271, '25,0%.', 0, NULL),
  (10244, 2271, '50,0%.', 0, NULL),
  (10245, 2271, '87,5%.', 1, NULL),
  (10246, 2271, '100,0%.', 0, NULL),
  (10247, 2272, '1.', 0, NULL),
  (10248, 2272, '2.', 0, NULL),
  (10249, 2272, '4.', 0, NULL),
  (10250, 2272, '5.', 1, NULL),
  (10251, 2272, '8.', 0, NULL),
  (10252, 2273, '20.', 0, NULL),
  (10253, 2273, '27.', 1, NULL),
  (10254, 2273, '44.', 0, NULL),
  (10255, 2273, '55.', 0, NULL),
  (10256, 2273, '71.', 0, NULL),
  (10257, 2274, '1 → 4 → 5 → 4 → 1 → 6 → 1 → 4', 1, NULL),
  (10258, 2274, '1 → 2 → 3 → 1 → 4 → 1 → 4 → 4', 0, NULL),
  (10259, 2274, '1 → 4 → 5 → 4 → 1 → 6 → 1 → 2 → 3', 0, NULL),
  (10260, 2274, '1 → 2 → 3 → 5 → 4 → 1 → 6 → 1 → 4', 0, NULL),
  (10261, 2274, '1 → 4 → 2 → 3 → 5 → 1 → 6 → 1 → 4', 0, NULL),
  (10262, 2275, 'Austrália.', 1, NULL),
  (10263, 2275, 'Canadá.', 0, NULL),
  (10264, 2275, 'EUA.', 0, NULL),
  (10265, 2275, 'França.', 0, NULL),
  (10266, 2275, 'Reino Unido.', 0, NULL),
  (10267, 2276, 'Austrália.', 1, NULL),
  (10268, 2276, 'Canadá.', 0, NULL),
  (10269, 2276, 'EUA.', 0, NULL),
  (10270, 2276, 'França.', 0, NULL),
  (10271, 2276, 'Reino Unido.', 0, NULL),
  (10272, 2277, '27', 0, NULL),
  (10273, 2277, '32', 0, NULL),
  (10274, 2277, '53', 0, NULL),
  (10275, 2277, '63', 1, NULL),
  (10276, 2277, '90', 0, NULL),
  (10277, 2279, '1 : 10', 0, NULL),
  (10278, 2279, '1 : 100', 1, NULL),
  (10279, 2279, '1 : 1 000', 0, NULL),
  (10280, 2279, '1 : 10 000', 0, NULL),
  (10281, 2279, '1 : 100 000', 0, NULL),
  (10282, 2280, '1', 0, NULL),
  (10283, 2280, '2', 0, NULL),
  (10284, 2280, '3', 1, NULL),
  (10285, 2280, '4', 0, NULL),
  (10286, 2280, '5', 0, NULL),
  (10287, 2281, '5 caixas do tipo A.', 0, NULL),
  (10288, 2281, '1 caixa do tipo A e 4 caixas do tipo B.', 0, NULL),
  (10289, 2281, '3 caixas do tipo A e 1 caixa do tipo B.', 1, NULL),
  (10290, 2281, '5 caixas do tipo A e 1 caixa do tipo B.', 0, NULL),
  (10291, 2281, '6 caixas do tipo B.', 0, NULL),
  (10292, 2282, '160', 1, NULL),
  (10293, 2282, '157', 0, NULL),
  (10294, 2282, '130', 0, NULL),
  (10295, 2282, '120', 0, NULL),
  (10296, 2282, '60', 0, NULL),
  (10297, 2284, '2018.', 0, NULL),
  (10298, 2284, '2023.', 0, NULL),
  (10299, 2284, '2031.', 0, NULL),
  (10300, 2284, '2035.', 1, NULL),
  (10301, 2284, '2043.', 0, NULL),
  (10302, 2285, '12.', 0, NULL),
  (10303, 2285, '14.', 1, NULL),
  (10304, 2285, '16.', 0, NULL),
  (10305, 2285, '18.', 0, NULL),
  (10306, 2285, '20.', 0, NULL),
  (10307, 2286, '30 ≤ b', 0, NULL),
  (10308, 2286, '30 ≤ b ≤ 31,5', 0, NULL),
  (10309, 2286, '30 ≤ b ≤ 33', 1, NULL),
  (10310, 2286, '31,5 ≤ b ≤ 33', 0, NULL),
  (10311, 2286, 'B ≤ 33', 0, NULL),
  (10312, 2288, '114 708.', 0, NULL),
  (10313, 2288, '164 076.', 0, NULL),
  (10314, 2288, '213 444.', 1, NULL),
  (10315, 2288, '284 592.', 0, NULL),
  (10316, 2288, '291 582.', 0, NULL),
  (10317, 2290, '2 quadrados e 4 retângulos.', 0, NULL),
  (10318, 2290, '1 retângulo e 4 triângulos isósceles.', 0, NULL),
  (10319, 2290, '2 quadrados e 4 trapézios isósceles.', 1, NULL),
  (10320, 2290, '1 quadrado, 3 retângulos e 2 trapézios retângulos.', 0, NULL),
  (10321, 2290, '2 retângulos, 2 quadrados e 2 trapézios retângulos.', 0, NULL),
  (10322, 2291, 'Às segundas, quintas e sextas-feiras.', 0, NULL),
  (10323, 2291, 'Às terças e quintas-feiras e aos sábados.', 0, NULL),
  (10324, 2291, 'Às segundas, quartas e sextas-feiras.', 1, NULL),
  (10325, 2291, 'Às terças, quartas e sextas-feiras.', 0, NULL),
  (10326, 2291, 'Às terças e quartas-feiras e aos sábados.', 0, NULL),
  (10327, 2292, '1,0 x 10-1', 0, NULL),
  (10328, 2292, '1,0 x 10-3', 0, NULL),
  (10329, 2292, '1,0 x 10-4', 1, NULL),
  (10330, 2292, '1,0 x 10-6', 0, NULL),
  (10331, 2292, '1,0 x 10-7', 0, NULL),
  (10332, 2294, 'I', 0, NULL),
  (10333, 2294, 'II', 0, NULL),
  (10334, 2294, 'III', 0, NULL),
  (10335, 2294, 'IV', 1, NULL),
  (10336, 2294, 'V', 0, NULL),
  (10337, 2296, '4', 0, NULL),
  (10338, 2296, '14', 0, NULL),
  (10339, 2296, '17', 1, NULL),
  (10340, 2296, '35', 0, NULL),
  (10341, 2296, '48', 0, NULL),
  (10342, 2297, 'A.', 0, NULL),
  (10343, 2297, 'B.', 0, NULL),
  (10344, 2297, 'C.', 1, NULL),
  (10345, 2297, 'D.', 0, NULL),
  (10346, 2297, 'E.', 0, NULL),
  (10347, 2298, '13.', 0, NULL),
  (10348, 2298, '14.', 0, NULL),
  (10349, 2298, '17.', 1, NULL),
  (10350, 2298, '18.', 0, NULL),
  (10351, 2298, '21.', 0, NULL),
  (10352, 2300, '1.', 0, NULL),
  (10353, 2300, '2.', 0, NULL),
  (10354, 2300, '3.', 0, NULL),
  (10355, 2300, '4.', 0, NULL),
  (10356, 2300, '5.', 1, NULL),
  (10357, 2302, '5', 0, NULL),
  (10358, 2302, '8', 0, NULL),
  (10359, 2302, '10', 0, NULL),
  (10360, 2302, '11', 0, NULL),
  (10361, 2302, '13', 1, NULL),
  (10362, 2303, '1,96', 0, NULL),
  (10363, 2303, '1,98', 0, NULL),
  (10364, 2303, '2,05', 0, NULL),
  (10365, 2303, '2,06', 1, NULL),
  (10366, 2303, '2,08', 0, NULL),
  (10367, 2305, '15,0', 0, NULL),
  (10368, 2305, '23,5', 1, NULL),
  (10369, 2305, '30,0', 0, NULL),
  (10370, 2305, '70,0', 0, NULL),
  (10371, 2305, '76,5', 0, NULL),
  (10372, 2306, '30.', 0, NULL),
  (10373, 2306, '60.', 0, NULL),
  (10374, 2306, '70.', 1, NULL),
  (10375, 2306, '90.', 0, NULL),
  (10376, 2306, '100.', 0, NULL),
  (10377, 2308, '1.', 0, NULL),
  (10378, 2308, '3.', 0, NULL),
  (10379, 2308, '1 e 2.', 0, NULL),
  (10380, 2308, '1 e 3.', 1, NULL),
  (10381, 2308, '2 e 3.', 0, NULL),
  (10382, 2309, '4,00.', 1, NULL),
  (10383, 2309, '4,87.', 0, NULL),
  (10384, 2309, '5,00.', 0, NULL),
  (10385, 2309, '5,83.', 0, NULL),
  (10386, 2309, '6,26.', 0, NULL),
  (10387, 2310, '9.', 0, NULL),
  (10388, 2310, '15.', 0, NULL),
  (10389, 2310, '26.', 1, NULL),
  (10390, 2310, '52.', 0, NULL),
  (10391, 2310, '60.', 0, NULL),
  (10392, 2311, '110.000', 0, NULL),
  (10393, 2311, '104.000', 1, NULL),
  (10394, 2311, '93.000', 0, NULL),
  (10395, 2311, '92.000', 0, NULL),
  (10396, 2311, '87.000', 0, NULL),
  (10397, 2315, 'I.', 1, NULL),
  (10398, 2315, 'II.', 0, NULL),
  (10399, 2315, 'III.', 0, NULL),
  (10400, 2315, 'IV.', 0, NULL),
  (10401, 2315, 'V.', 0, NULL),
  (10402, 2316, 'X.', 0, NULL),
  (10403, 2316, 'Y.', 0, NULL),
  (10404, 2316, 'Z.', 1, NULL),
  (10405, 2316, 'W.', 0, NULL),
  (10406, 2316, 'T.', 0, NULL),
  (10407, 2317, 'X.', 0, NULL),
  (10408, 2317, 'Y.', 0, NULL),
  (10409, 2317, 'Z.', 1, NULL),
  (10410, 2317, 'W.', 0, NULL),
  (10411, 2317, 'T.', 0, NULL),
  (10412, 2318, '30 m/s', 0, NULL),
  (10413, 2318, '35 m/s', 0, NULL),
  (10414, 2318, '40 m/s', 1, NULL),
  (10415, 2318, '45 m/s', 0, NULL),
  (10416, 2318, '50 m/s', 0, NULL),
  (10417, 2319, '5ρ+3', 0, NULL),
  (10418, 2319, '7ρ+2', 0, NULL),
  (10419, 2319, '9ρ+6', 0, NULL),
  (10420, 2319, '11ρ+7', 0, NULL),
  (10421, 2319, '13ρ+8', 1, NULL),
  (10422, 2321, 'I.', 1, NULL),
  (10423, 2321, 'II.', 0, NULL),
  (10424, 2321, 'III.', 0, NULL),
  (10425, 2321, 'IV.', 0, NULL),
  (10426, 2321, 'V.', 0, NULL),
  (10427, 2322, 'P=d.n + L + d.n.s', 1, NULL),
  (10428, 2322, 'P=d.n + L + d.s', 0, NULL),
  (10429, 2322, 'P= d+ L +s', 0, NULL),
  (10430, 2322, 'P= d.n.s + L', 0, NULL),
  (10431, 2322, 'P= d.n + L +s', 0, NULL),
  (10432, 2323, '2', 0, NULL),
  (10433, 2323, '4', 1, NULL),
  (10434, 2323, '6', 0, NULL),
  (10435, 2323, '9', 0, NULL),
  (10436, 2323, '10', 0, NULL),
  (10437, 2324, 'I.', 0, NULL),
  (10438, 2324, 'II.', 0, NULL),
  (10439, 2324, 'III.', 0, NULL),
  (10440, 2324, 'IV.', 1, NULL),
  (10441, 2324, 'V.', 0, NULL),
  (10442, 2325, '9', 0, NULL),
  (10443, 2325, '12', 0, NULL),
  (10444, 2325, '18', 0, NULL),
  (10445, 2325, '19', 1, NULL),
  (10446, 2325, '27', 0, NULL),
  (10447, 2326, '10 e 80.', 1, NULL),
  (10448, 2326, '10 e 90.', 0, NULL),
  (10449, 2326, '20 e 60.', 0, NULL),
  (10450, 2326, '20 e 80.', 0, NULL),
  (10451, 2326, '25 e 5', 0, NULL),
  (10452, 2327, '5,0.', 0, NULL),
  (10453, 2327, '9,5.', 0, NULL),
  (10454, 2327, '10,0.', 0, NULL),
  (10455, 2327, '10,5.', 0, NULL),
  (10456, 2327, '15,0.', 1, NULL),
  (10457, 2328, 'A,E,O e S.', 0, NULL),
  (10458, 2328, 'D, E, F e G.', 0, NULL),
  (10459, 2328, 'D, E, F e G.', 1, NULL),
  (10460, 2328, 'D,H,R e V.', 0, NULL),
  (10461, 2328, 'X, B L e P.', 0, NULL),
  (10462, 2329, '11.', 0, NULL),
  (10463, 2329, '15.', 0, NULL),
  (10464, 2329, '15,5.', 1, NULL),
  (10465, 2329, '15,7.', 0, NULL),
  (10466, 2329, '17,5.', 0, NULL),
  (10467, 2330, '45,4.', 0, NULL),
  (10468, 2330, '54,5.', 0, NULL),
  (10469, 2330, '120.', 1, NULL),
  (10470, 2330, '220.', 0, NULL),
  (10471, 2330, '283,2.', 0, NULL),
  (10472, 2331, '600.', 0, NULL),
  (10473, 2331, '700.', 0, NULL),
  (10474, 2331, '800.', 1, NULL),
  (10475, 2331, '900.', 0, NULL),
  (10476, 2331, '1000.', 0, NULL),
  (10477, 2333, '1 : 576', 0, NULL),
  (10478, 2333, '1 : 240', 0, NULL),
  (10479, 2333, '1 : 24', 1, NULL),
  (10480, 2333, '1 : 4,2', 0, NULL),
  (10481, 2333, '1 : 2,4', 0, NULL),
  (10482, 2334, '0,17', 0, NULL),
  (10483, 2334, '0,49', 0, NULL),
  (10484, 2334, '1,71', 0, NULL),
  (10485, 2334, '2,06', 1, NULL),
  (10486, 2334, '3,32', 0, NULL),
  (10487, 2335, '12,5', 0, NULL),
  (10488, 2335, '28,0', 0, NULL),
  (10489, 2335, '30,0', 1, NULL),
  (10490, 2335, '50,0', 0, NULL),
  (10491, 2335, '70,0', 0, NULL),
  (10492, 2336, '-3 cos (2t)', 1, NULL),
  (10493, 2336, '-3 sen (2t)', 0, NULL),
  (10494, 2336, '3 cos (2t)', 0, NULL),
  (10495, 2336, '-6 cos (2t)', 0, NULL),
  (10496, 2336, '6 cos (2t)', 0, NULL),
  (10497, 2337, '1', 0, NULL),
  (10498, 2337, '2', 0, NULL),
  (10499, 2337, '3', 0, NULL),
  (10500, 2337, '4', 0, NULL),
  (10501, 2337, '5', 1, NULL),
  (10502, 2338, '10% menor', 0, NULL),
  (10503, 2338, '1% menor', 1, NULL),
  (10504, 2338, 'Igual', 0, NULL),
  (10505, 2338, '1% maior', 0, NULL),
  (10506, 2338, '11% maior', 0, NULL),
  (10507, 2339, '6,0', 1, NULL),
  (10508, 2339, '5,7', 0, NULL),
  (10509, 2339, '5,0', 0, NULL),
  (10510, 2339, '4,5', 0, NULL),
  (10511, 2339, '4,4', 0, NULL),
  (10512, 2340, 'I', 0, NULL),
  (10513, 2340, 'II', 0, NULL),
  (10514, 2340, 'III', 0, NULL),
  (10515, 2340, 'IV', 1, NULL),
  (10516, 2340, 'V', 0, NULL),
  (10517, 2344, '22', 0, NULL),
  (10518, 2344, '24', 1, NULL),
  (10519, 2344, '26', 0, NULL),
  (10520, 2344, '33', 0, NULL),
  (10521, 2344, '39', 0, NULL),
  (10522, 2345, '15,9', 0, NULL),
  (10523, 2345, '16,1', 0, NULL),
  (10524, 2345, '16,4', 0, NULL),
  (10525, 2345, '17,4', 1, NULL),
  (10526, 2345, '18,0', 0, NULL),
  (10527, 2346, 'I', 0, NULL),
  (10528, 2346, 'II', 1, NULL),
  (10529, 2346, 'III', 0, NULL),
  (10530, 2346, 'IV', 0, NULL),
  (10531, 2346, 'V', 0, NULL),
  (10532, 2347, '1,12', 0, NULL),
  (10533, 2347, '3,10', 0, NULL),
  (10534, 2347, '4,35', 0, NULL),
  (10535, 2347, '4,48', 1, NULL),
  (10536, 2347, '5,60', 0, NULL),
  (10537, 2348, '1, 2, 3 e 4', 0, NULL),
  (10538, 2348, '1 e 3', 0, NULL),
  (10539, 2348, '1', 0, NULL),
  (10540, 2348, '2', 0, NULL),
  (10541, 2348, '4', 1, NULL),
  (10542, 2349, '9,07.', 0, NULL),
  (10543, 2349, '13,60.', 0, NULL),
  (10544, 2349, '20,40.', 0, NULL),
  (10545, 2349, '27,18.', 1, NULL),
  (10546, 2349, '36,24.', 0, NULL),
  (10547, 2350, '216', 0, NULL),
  (10548, 2350, '408', 0, NULL),
  (10549, 2350, '732', 1, NULL),
  (10550, 2350, '2196', 0, NULL),
  (10551, 2350, '2928', 0, NULL),
  (10552, 2351, 'Triângulo', 0, NULL),
  (10553, 2351, 'Quadrado', 0, NULL),
  (10554, 2351, 'Retângulo', 0, NULL),
  (10555, 2351, 'Hexágono', 0, NULL),
  (10556, 2351, 'Círculo', 1, NULL),
  (10557, 2352, 'Leve no plano, forte no plano, subida moderada e subida forte.', 0, NULL),
  (10558, 2352, 'Leve no plano, forte no plano e subida moderada.', 0, NULL),
  (10559, 2352, 'Forte no plano, subida moderada e subida forte.', 0, NULL),
  (10560, 2352, 'Forte no plano e subida moderada.', 1, NULL),
  (10561, 2352, 'Leve no plano e subida forte.', 0, NULL),
  (10562, 2353, '6', 0, NULL),
  (10563, 2353, '8', 0, NULL),
  (10564, 2353, '9', 1, NULL),
  (10565, 2353, '15', 0, NULL),
  (10566, 2353, '20', 0, NULL),
  (10567, 2354, 'X, Y e Z na Farmácia 1.', 0, NULL),
  (10568, 2354, 'X e Y na Farmácia 1, e Z na Farmácia 3.', 0, NULL),
  (10569, 2354, 'X e Y na Farmácia 2, e Z na Farmácia 3.', 1, NULL),
  (10570, 2354, 'X na Farmácia 2, e Y e Z na Farmácia 3.', 0, NULL),
  (10571, 2354, 'X, Y e Z na Farmácia 3.', 0, NULL),
  (10572, 2355, '12 trapézios isósceles e 12 quadrados.', 1, NULL),
  (10573, 2355, '24 trapézios isósceles e 12 quadrados.', 0, NULL),
  (10574, 2355, '12 paralelogramos e 12 quadrados.', 0, NULL),
  (10575, 2355, '8 trapézios isósceles', 0, NULL),
  (10576, 2356, '379', 0, NULL),
  (10577, 2356, '381', 0, NULL),
  (10578, 2356, '579', 0, NULL),
  (10579, 2356, '581', 1, NULL),
  (10580, 2356, '601', 0, NULL),
  (10581, 2357, '101', 0, NULL),
  (10582, 2357, '1101', 0, NULL),
  (10583, 2357, '1111', 0, NULL),
  (10584, 2357, '10101', 1, NULL),
  (10585, 2357, '11001', 0, NULL),
  (10586, 2358, '700 000', 0, NULL),
  (10587, 2358, '1 600 000', 0, NULL),
  (10588, 2358, '1 900 000', 1, NULL),
  (10589, 2358, '2 200 000', 0, NULL),
  (10590, 2358, '2 800 000', 0, NULL),
  (10591, 2360, '1,31 mil reais', 0, NULL),
  (10592, 2360, '1,90 mil reais', 1, NULL),
  (10593, 2360, '2,30 mil reais', 0, NULL),
  (10594, 2360, '2,36 mil reais', 0, NULL),
  (10595, 2360, '2,95 mil reais', 0, NULL),
  (10596, 2361, '1,31 mil reais', 0, NULL),
  (10597, 2361, '1,90 mil reais', 1, NULL),
  (10598, 2361, '2,30 mil reais', 0, NULL),
  (10599, 2361, '2,36 mil reais', 0, NULL),
  (10600, 2361, '2,95 mil reais', 0, NULL),
  (10601, 2362, '1', 0, NULL),
  (10602, 2362, '2', 0, NULL),
  (10603, 2362, '3', 0, NULL),
  (10604, 2362, '4', 0, NULL),
  (10605, 2362, '5', 1, NULL),
  (10606, 2364, '1,5', 0, NULL),
  (10607, 2364, '2,0', 0, NULL),
  (10608, 2364, '2,9', 0, NULL),
  (10609, 2364, '3,0', 1, NULL),
  (10610, 2364, '5,5', 0, NULL),
  (10611, 2365, '1,80 e 0,60.', 1, NULL),
  (10612, 2365, '1,80 e 0,70.', 0, NULL),
  (10613, 2365, '1,90 e 0,80.', 0, NULL),
  (10614, 2365, '2,00 e 0,90.', 0, NULL),
  (10615, 2365, '2,00 e 1,00.', 0, NULL),
  (10616, 2366, '22.', 0, NULL),
  (10617, 2366, '25.', 1, NULL),
  (10618, 2366, '28.', 0, NULL),
  (10619, 2366, '48.', 0, NULL),
  (10620, 2366, '64.', 0, NULL),
  (10621, 2368, '8.', 0, NULL),
  (10622, 2368, '9.', 1, NULL),
  (10623, 2368, '11.', 0, NULL),
  (10624, 2368, '18.', 0, NULL),
  (10625, 2368, '24.', 0, NULL),
  (10626, 2370, '50 000.', 0, NULL),
  (10627, 2370, '100 000.', 0, NULL),
  (10628, 2370, '200 000.', 0, NULL),
  (10629, 2370, '300 000.', 0, NULL),
  (10630, 2370, '400 000.', 1, NULL),
  (10631, 2371, '10.', 0, NULL),
  (10632, 2371, '13.', 0, NULL),
  (10633, 2371, '14.', 0, NULL),
  (10634, 2371, '15.', 0, NULL),
  (10635, 2371, '16', 1, NULL),
  (10636, 2372, 'Não satisfatório.', 0, NULL),
  (10637, 2372, 'Regular.', 0, NULL),
  (10638, 2372, 'Bom.', 1, NULL),
  (10639, 2372, 'Muito bom.', 0, NULL),
  (10640, 2372, 'Excelente.', 0, NULL),
  (10641, 2374, '1,0.', 0, NULL),
  (10642, 2374, '1,5.', 1, NULL),
  (10643, 2374, '1,9.', 0, NULL),
  (10644, 2374, '2,1.', 0, NULL),
  (10645, 2374, '2,5.', 0, NULL),
  (10646, 2375, 'Apenas no ginásio I.', 0, NULL),
  (10647, 2375, 'Apenas nos ginásios I e II.', 0, NULL),
  (10648, 2375, 'Apenas nos ginásios I, II e III.', 0, NULL),
  (10649, 2375, 'Apenas nos ginásios I, II, III e IV.', 1, NULL),
  (10650, 2375, 'Em todos os ginásios.', 0, NULL),
  (10651, 2376, '30 minutos ou menos.', 0, NULL),
  (10652, 2376, 'Mais de 35 e menos de 45 minutos.', 0, NULL),
  (10653, 2376, 'Mais de 45 e menos de 55 minutos.', 1, NULL),
  (10654, 2376, 'Mais de 60 e menos de 70 minutos.', 0, NULL),
  (10655, 2376, '70 minutos ou mais.', 0, NULL),
  (10656, 2377, '26', 0, NULL),
  (10657, 2377, '27', 0, NULL),
  (10658, 2377, '28', 1, NULL),
  (10659, 2377, '29', 0, NULL),
  (10660, 2377, '35', 0, NULL),
  (10661, 2378, '1,52.', 0, NULL),
  (10662, 2378, '3,24.', 0, NULL),
  (10663, 2378, '3,60.', 1, NULL),
  (10664, 2378, '6,48.', 0, NULL),
  (10665, 2378, '7,20.', 0, NULL),
  (10666, 2379, '16 514.', 0, NULL),
  (10667, 2379, '86 700.', 0, NULL),
  (10668, 2379, '115 600.', 1, NULL),
  (10669, 2379, '441 343.', 0, NULL),
  (10670, 2379, '448 568.', 0, NULL),
  (10671, 2383, 'I.', 0, NULL),
  (10672, 2383, 'II.', 0, NULL),
  (10673, 2383, 'III.', 1, NULL),
  (10674, 2383, 'IV.', 0, NULL),
  (10675, 2383, 'V.', 0, NULL),
  (10676, 2386, '33,40', 1, NULL),
  (10677, 2386, '66,80', 0, NULL),
  (10678, 2386, '89,24', 0, NULL),
  (10679, 2386, '133,60', 0, NULL),
  (10680, 2386, '534,40', 0, NULL),
  (10681, 2387, '5 000', 0, NULL),
  (10682, 2387, '7 000', 0, NULL),
  (10683, 2387, '11 000', 1, NULL),
  (10684, 2387, '18 000', 0, NULL),
  (10685, 2387, '29 000', 0, NULL),
  (10686, 2388, '14,4.', 0, NULL),
  (10687, 2388, '20,7.', 0, NULL),
  (10688, 2388, '22,0.', 0, NULL),
  (10689, 2388, '30,0.', 1, NULL),
  (10690, 2388, '37,5', 0, NULL),
  (10691, 2389, '0,125.', 0, NULL),
  (10692, 2389, '0,200.', 1, NULL),
  (10693, 2389, '4,800.', 0, NULL),
  (10694, 2389, '6,000.', 0, NULL),
  (10695, 2389, '12,000.', 0, NULL),
  (10696, 2390, '2,5', 1, NULL),
  (10697, 2390, '10,0', 0, NULL),
  (10698, 2390, '730,0', 0, NULL),
  (10699, 2390, '13 322,5', 0, NULL),
  (10700, 2390, '53 290,0', 0, NULL),
  (10701, 2391, '1', 1, NULL),
  (10702, 2391, '2', 0, NULL),
  (10703, 2391, '3', 0, NULL),
  (10704, 2391, '4', 0, NULL),
  (10705, 2392, 'R$ 2,00 menor.', 1, NULL),
  (10706, 2392, 'R$ 100,00 menor.', 0, NULL),
  (10707, 2392, 'R$ 200,00 menor.', 0, NULL),
  (10708, 2392, 'R$ 42,00 maior.', 0, NULL),
  (10709, 2392, 'R$ 80,00 maior.', 0, NULL),
  (10710, 2393, 'DDEFDDEEFFD.', 0, NULL),
  (10711, 2393, 'DFEFDDDEFFD.', 0, NULL),
  (10712, 2393, 'DFEFDDEEFFD.', 1, NULL),
  (10713, 2393, 'EFDFEEDDFFE.', 0, NULL),
  (10714, 2393, 'EFDFEEEDFFE.', 0, NULL),
  (10715, 2394, 'I.', 0, NULL),
  (10716, 2394, 'II.', 0, NULL),
  (10717, 2394, 'III.', 0, NULL),
  (10718, 2394, 'IV.', 0, NULL),
  (10719, 2394, 'V.', 1, NULL),
  (10720, 2395, '2005', 0, NULL),
  (10721, 2395, '2007', 1, NULL),
  (10722, 2395, '2009', 0, NULL),
  (10723, 2395, '2011', 0, NULL),
  (10724, 2395, '2013', 0, NULL),
  (10725, 2396, 'I.', 1, NULL),
  (10726, 2396, 'II.', 0, NULL),
  (10727, 2396, 'III.', 0, NULL),
  (10728, 2396, 'IV.', 0, NULL),
  (10729, 2396, 'V.', 0, NULL),
  (10730, 2397, 'I.', 0, NULL),
  (10731, 2397, 'II.', 1, NULL),
  (10732, 2397, 'III.', 0, NULL),
  (10733, 2397, 'IV.', 0, NULL),
  (10734, 2397, 'V.', 0, NULL),
  (10735, 2398, '200', 0, NULL),
  (10736, 2398, '400', 0, NULL),
  (10737, 2398, '1200', 0, NULL),
  (10738, 2398, '1235', 1, NULL),
  (10739, 2398, '7200', 0, NULL),
  (10740, 2399, '800', 0, NULL),
  (10741, 2399, '1200', 0, NULL),
  (10742, 2399, '2400', 0, NULL),
  (10743, 2399, '4800', 1, NULL),
  (10744, 2399, '6400', 0, NULL),
  (10745, 2400, '135 000,00.', 0, NULL),
  (10746, 2400, '1 350 000,00.', 0, NULL),
  (10747, 2400, '13 500 000,00.', 0, NULL),
  (10748, 2400, '135 000 000,00.', 0, NULL),
  (10749, 2400, '1 350 000 000,00', 1, NULL),
  (10750, 2401, 'I', 0, NULL),
  (10751, 2401, 'II', 0, NULL),
  (10752, 2401, 'III', 0, NULL),
  (10753, 2401, 'IV', 1, NULL),
  (10754, 2401, 'V', 0, NULL),
  (10755, 2402, 'I.', 1, NULL),
  (10756, 2402, 'II.', 0, NULL),
  (10757, 2402, 'III.', 0, NULL),
  (10758, 2402, 'IV.', 0, NULL),
  (10759, 2402, 'V.', 0, NULL),
  (10760, 2403, '2', 0, NULL),
  (10761, 2403, '3', 0, NULL),
  (10762, 2403, '6', 0, NULL),
  (10763, 2403, '12', 0, NULL),
  (10764, 2403, '24', 1, NULL),
  (10765, 2404, '74,23.', 0, NULL),
  (10766, 2404, '74,51.', 1, NULL),
  (10767, 2404, '75,07.', 0, NULL),
  (10768, 2404, '75,23.', 0, NULL),
  (10769, 2404, '78,49.', 0, NULL),
  (10770, 2407, 'Forem ambas audíveis.', 0, NULL),
  (10771, 2407, 'Tiverem a mesma potência.', 0, NULL),
  (10772, 2407, 'Tiverem a mesma frequência.', 1, NULL),
  (10773, 2407, 'Tiverem a mesma intensidade.', 0, NULL),
  (10774, 2407, 'Propagarem-se com velocidades diferentes.', 0, NULL),
  (10775, 2408, 'Saliva, por consequência da atividade de enzimas.', 0, NULL),
  (10776, 2408, 'Sangue, em função das hemácias e leucócitos.', 0, NULL),
  (10777, 2408, 'Lágrima, em razão da concentração de sais.', 0, NULL),
  (10778, 2408, 'Urina, pela presenca de moléculas de ureia.', 0, NULL),
  (10779, 2408, 'Leite, por causa do alto teor de gorduras.', 1, NULL),
  (10780, 2409, 'Ter a durabilidade de uma cerâmica e ser totalmente biodegradável.', 0, NULL),
  (10781, 2409, 'Ser tão durável quanto uma cerâmica e ter alta condutividade térmica.', 0, NULL),
  (10782, 2409, 'Ser um mau condutor térmico e aumentar o resíduo biodegradável na natureza.', 0, NULL),
  (10783, 2409, 'Ter baixa condutividade térmica e reduzir o resíduo não biodegradável na natureza.', 1, NULL),
  (10784, 2409, 'Ter alta condutividade térmica e possibilitar a degradação do material no meio ambiente.', 0, NULL),
  (10785, 2410, 'Maior densidade.', 1, NULL),
  (10786, 2410, 'Menor viscosidade.', 0, NULL),
  (10787, 2410, 'Maior volume de gás dissolvido.', 0, NULL),
  (10788, 2410, 'Menor massa de solutos dissolvidos.', 0, NULL),
  (10789, 2410, 'Maior temperatura de congelamento.', 0, NULL),
  (10790, 2411, '1.198,8', 0, NULL),
  (10791, 2411, '1.296,0', 1, NULL),
  (10792, 2411, '1.360,8', 0, NULL),
  (10793, 2411, '4.665,6', 0, NULL),
  (10794, 2411, '4.860,0', 0, NULL),
  (10795, 2412, '2.000,00.', 0, NULL),
  (10796, 2412, '2.500,00.', 0, NULL),
  (10797, 2412, '3.250,00.', 1, NULL),
  (10798, 2412, '4.500,00.', 0, NULL),
  (10799, 2412, '9.000,00.', 0, NULL),
  (10800, 2413, '20', 0, NULL),
  (10801, 2413, '60', 0, NULL),
  (10802, 2413, '64', 1, NULL),
  (10803, 2413, '68', 0, NULL),
  (10804, 2413, '80', 0, NULL),
  (10805, 2414, 'Junho.', 0, NULL),
  (10806, 2414, 'Julho.', 0, NULL),
  (10807, 2414, 'Agosto.', 0, NULL),
  (10808, 2414, 'Setembro.', 1, NULL),
  (10809, 2414, 'Outubro.', 0, NULL),
  (10810, 2415, 'Mediana = média < moda.', 0, NULL),
  (10811, 2415, 'Mediana = moda < média.', 0, NULL),
  (10812, 2415, 'Mediana < média < moda.', 0, NULL),
  (10813, 2415, 'Moda < média < mediana.', 0, NULL),
  (10814, 2415, 'Moda < mediana < média.', 1, NULL),
  (10815, 2417, '50', 1, NULL),
  (10816, 2417, '60', 0, NULL),
  (10817, 2417, '80', 0, NULL),
  (10818, 2417, '140', 0, NULL),
  (10819, 2417, '150', 0, NULL),
  (10820, 2418, '10', 0, NULL),
  (10821, 2418, '11', 1, NULL),
  (10822, 2418, '12', 0, NULL),
  (10823, 2418, '30', 0, NULL),
  (10824, 2418, '33', 0, NULL),
  (10825, 2419, '0,3', 0, NULL),
  (10826, 2419, '0,5', 0, NULL),
  (10827, 2419, '0,9', 1, NULL),
  (10828, 2419, '1,8', 0, NULL),
  (10829, 2419, '2,7', 0, NULL),
  (10830, 2421, 'Há somente uma solução possível, e as somas em cada lado do triângulo são iguais a 7.', 0, NULL),
  (10831, 2421, 'Há somente uma solução possível, e as somas em cada lado do triângulo são iguais a 9.', 0, NULL),
  (10832, 2421, 'Há somente duas soluções possíveis, uma em que as somas em cada lado do triângulo são iguais a 7 e outra em que as somas são iguais a 9.', 0, NULL),
  (10833, 2421, 'Há somente duas soluções possíveis, uma em que as somas em cada lado do triângulo são iguais a 9 e outra em que as somas são iguais a 12.', 0, NULL),
  (10834, 2421, 'Há somente duas soluções possíveis, uma em que as somas em cada lado do triângulo são iguais a 10 e outra em que as somas são iguais a 11.', 1, NULL),
  (10835, 2422, '1', 0, NULL),
  (10836, 2422, '4', 0, NULL),
  (10837, 2422, '6', 0, NULL),
  (10838, 2422, '7', 1, NULL),
  (10839, 2422, '8', 0, NULL),
  (10840, 2423, 'C = 0,9q', 1, NULL),
  (10841, 2423, 'C = 0,1q', 0, NULL),
  (10842, 2423, 'C = 1 − 0,1q', 0, NULL),
  (10843, 2423, 'C = 1 − 0,9q', 0, NULL),
  (10844, 2423, 'C = q − 10', 0, NULL),
  (10845, 2424, '3', 0, NULL),
  (10846, 2424, '4', 1, NULL),
  (10847, 2424, '6', 0, NULL),
  (10848, 2424, '7', 0, NULL),
  (10849, 2424, '9', 0, NULL),
  (10850, 2425, 'I.', 0, NULL),
  (10851, 2425, 'II.', 1, NULL),
  (10852, 2425, 'III.', 0, NULL),
  (10853, 2425, 'IV.', 0, NULL),
  (10854, 2425, 'V.', 0, NULL),
  (10855, 2426, '1.000', 0, NULL),
  (10856, 2426, '900', 0, NULL),
  (10857, 2426, '600', 0, NULL),
  (10858, 2426, '500', 1, NULL),
  (10859, 2426, '400', 0, NULL),
  (10860, 2427, '6', 1, NULL),
  (10861, 2427, '8', 0, NULL),
  (10862, 2427, '10', 0, NULL),
  (10863, 2427, '14', 0, NULL),
  (10864, 2427, '24', 0, NULL),
  (10865, 2428, '10', 0, NULL),
  (10866, 2428, '20', 1, NULL),
  (10867, 2428, '30', 0, NULL),
  (10868, 2428, '50', 0, NULL),
  (10869, 2428, '70', 0, NULL),
  (10870, 2429, '1', 0, NULL),
  (10871, 2429, '2', 0, NULL),
  (10872, 2429, '3', 0, NULL),
  (10873, 2429, '4', 1, NULL),
  (10874, 2429, '5', 0, NULL),
  (10875, 2430, '2', 0, NULL),
  (10876, 2430, '4', 0, NULL),
  (10877, 2430, '6', 0, NULL),
  (10878, 2430, '12', 1, NULL),
  (10879, 2430, '18', 0, NULL),
  (10880, 2431, 'Tipo I, pois p1 < p2 < p3.', 1, NULL),
  (10881, 2431, 'Tipo I, pois tem menor quantidade de caracteres.', 0, NULL),
  (10882, 2431, 'Tipo II, pois tem maior quantidade de letras.', 0, NULL),
  (10883, 2431, 'Tipo III, pois p3 < p2 < p1', 0, NULL),
  (10884, 2431, 'Tipo III, pois tem maior quantidade de caracteres.', 0, NULL),
  (10885, 2432, '6,7%', 0, NULL),
  (10886, 2432, '10%', 0, NULL),
  (10887, 2432, '20%', 0, NULL),
  (10888, 2432, '21,5%', 1, NULL),
  (10889, 2432, '23,3%', 0, NULL),
  (10890, 2433, 'Y = 250x', 0, NULL),
  (10891, 2433, 'Y = 500x', 0, NULL),
  (10892, 2433, 'Y = 750x', 0, NULL),
  (10893, 2433, 'Y = 250x + 500', 1, NULL),
  (10894, 2433, 'Y = 500x + 250', 0, NULL),
  (10895, 2435, 'Indígenas.', 0, NULL),
  (10896, 2435, 'Gestantes.', 0, NULL),
  (10897, 2435, 'Doentes crônicos.', 0, NULL),
  (10898, 2435, 'Adultos entre 20 e 29 anos.', 1, NULL),
  (10899, 2435, 'Crianças de 6 meses a 2 anos.', 0, NULL),
  (10900, 2436, '1,20.', 0, NULL),
  (10901, 2436, '1,35.', 0, NULL),
  (10902, 2436, '1,65.', 0, NULL),
  (10903, 2436, '1,80.', 0, NULL),
  (10904, 2436, '1,95.', 1, NULL),
  (10905, 2437, 'Segunda-feira.', 0, NULL),
  (10906, 2437, 'Terça-feira.', 0, NULL),
  (10907, 2437, 'Quarta-feira.', 1, NULL),
  (10908, 2437, 'Quinta-feira.', 0, NULL),
  (10909, 2437, 'Sexta-feira.', 0, NULL),
  (10910, 2438, '(5,0 ; 5,5).', 1, NULL),
  (10911, 2438, '(8,0 ; 8,5).', 0, NULL),
  (10912, 2438, '(11,5 ; 12,5).', 0, NULL),
  (10913, 2438, '(19,5 ; 20,5).', 0, NULL),
  (10914, 2438, '(3,5 ; 4,0).', 0, NULL),
  (10915, 2441, 'Ótimo.', 0, NULL),
  (10916, 2441, 'Bom.', 0, NULL),
  (10917, 2441, 'Normal.', 0, NULL),
  (10918, 2441, 'Ruim.', 1, NULL),
  (10919, 2441, 'Péssimo.', 0, NULL),
  (10920, 2442, '741', 0, NULL),
  (10921, 2442, '1 040', 0, NULL),
  (10922, 2442, '1 460', 1, NULL),
  (10923, 2442, '2 100', 0, NULL),
  (10924, 2442, '5 200', 0, NULL),
  (10925, 2443, '0° < a < 90°', 0, NULL),
  (10926, 2443, 'A = 90°', 0, NULL),
  (10927, 2443, '90° < a < 180°', 1, NULL),
  (10928, 2443, 'A = 180°', 0, NULL),
  (10929, 2443, '180° < a < 360°', 0, NULL),
  (10930, 2445, '4,68', 0, NULL),
  (10931, 2445, '6,30', 1, NULL),
  (10932, 2445, '9,30', 0, NULL),
  (10933, 2445, '10,50', 0, NULL),
  (10934, 2445, '10,65', 0, NULL),
  (10935, 2446, '59', 0, NULL),
  (10936, 2446, '83', 0, NULL),
  (10937, 2446, '86', 0, NULL),
  (10938, 2446, '89', 0, NULL),
  (10939, 2446, '92', 1, NULL),
  (10940, 2449, 'Okosa urapum urapum urapum e okosa okosa urapum urapum urapum.', 0, NULL),
  (10941, 2449, 'Okosa okosa urapum e okosa okosa okosa okosa urapum.', 0, NULL),
  (10942, 2449, 'Okosa okosa urapum e okosa okosa okosa urapum.', 1, NULL),
  (10943, 2449, 'Okosa urapum urapum e okosa urapum okosa urapum urapum.', 0, NULL),
  (10944, 2449, 'Okosa okosa urapum e okosa okosa okosa okosa.', 0, NULL),
  (10945, 2450, 'Outubro.', 0, NULL),
  (10946, 2450, 'Novembro.', 0, NULL),
  (10947, 2450, 'Dezembro.', 1, NULL),
  (10948, 2450, 'Janeiro.', 0, NULL),
  (10949, 2450, 'Fevereiro.', 0, NULL),
  (10950, 2451, 'Outubro.', 0, NULL),
  (10951, 2451, 'Novembro.', 0, NULL),
  (10952, 2451, 'Dezembro.', 1, NULL),
  (10953, 2451, 'Janeiro.', 0, NULL),
  (10954, 2451, 'Fevereiro.', 0, NULL);

-- ===== feedback =====
INSERT IGNORE INTO feedback (id_quiz, explicacao) VALUES
  (1798, 'Questão do ENEM — Questão 136 - ENEM 2009'),
  (1799, 'Questão do ENEM — Questão 137 - ENEM 2009'),
  (1800, 'Questão do ENEM — Questão 138 - ENEM 2009'),
  (1801, 'Questão do ENEM — Questão 139 - ENEM 2009'),
  (1802, 'Questão do ENEM — Questão 141 - ENEM 2009'),
  (1803, 'Questão do ENEM — Questão 142 - ENEM 2009'),
  (1804, 'Questão do ENEM — Questão 143 - ENEM 2009'),
  (1805, 'Questão do ENEM — Questão 144 - ENEM 2009'),
  (1806, 'Questão do ENEM — Questão 145 - ENEM 2009'),
  (1807, 'Questão do ENEM — Questão 146 - ENEM 2009'),
  (1808, 'Questão do ENEM — Questão 147 - ENEM 2009'),
  (1809, 'Questão do ENEM — Questão 148 - ENEM 2009'),
  (1811, 'Questão do ENEM — Questão 150 - ENEM 2009'),
  (1812, 'Questão do ENEM — Questão 151 - ENEM 2009'),
  (1813, 'Questão do ENEM — Questão 152 - ENEM 2009'),
  (1814, 'Questão do ENEM — Questão 153 - ENEM 2009'),
  (1815, 'Questão do ENEM — Questão 154 - ENEM 2009'),
  (1816, 'Questão do ENEM — Questão 155 - ENEM 2009'),
  (1817, 'Questão do ENEM — Questão 156 - ENEM 2009'),
  (1818, 'Questão do ENEM — Questão 158 - ENEM 2009'),
  (1819, 'Questão do ENEM — Questão 159 - ENEM 2009'),
  (1820, 'Questão do ENEM — Questão 160 - ENEM 2009'),
  (1821, 'Questão do ENEM — Questão 161 - ENEM 2009'),
  (1822, 'Questão do ENEM — Questão 162 - ENEM 2009'),
  (1823, 'Questão do ENEM — Questão 163 - ENEM 2009'),
  (1824, 'Questão do ENEM — Questão 164 - ENEM 2009'),
  (1825, 'Questão do ENEM — Questão 165 - ENEM 2009'),
  (1826, 'Questão do ENEM — Questão 167 - ENEM 2009'),
  (1827, 'Questão do ENEM — Questão 168 - ENEM 2009'),
  (1828, 'Questão do ENEM — Questão 169 - ENEM 2009'),
  (1829, 'Questão do ENEM — Questão 170 - ENEM 2009'),
  (1830, 'Questão do ENEM — Questão 171 - ENEM 2009'),
  (1831, 'Questão do ENEM — Questão 172 - ENEM 2009'),
  (1832, 'Questão do ENEM — Questão 173 - ENEM 2009'),
  (1833, 'Questão do ENEM — Questão 174 - ENEM 2009'),
  (1834, 'Questão do ENEM — Questão 175 - ENEM 2009'),
  (1835, 'Questão do ENEM — Questão 176 - ENEM 2009'),
  (1836, 'Questão do ENEM — Questão 177 - ENEM 2009'),
  (1837, 'Questão do ENEM — Questão 178 - ENEM 2009'),
  (1838, 'Questão do ENEM — Questão 179 - ENEM 2009'),
  (1839, 'Questão do ENEM — Questão 180 - ENEM 2009'),
  (1841, 'Questão do ENEM — Questão 137 - ENEM 2010'),
  (1843, 'Questão do ENEM — Questão 139 - ENEM 2010'),
  (1844, 'Questão do ENEM — Questão 140 - ENEM 2010'),
  (1845, 'Questão do ENEM — Questão 141 - ENEM 2010'),
  (1847, 'Questão do ENEM — Questão 143 - ENEM 2010'),
  (1848, 'Questão do ENEM — Questão 144 - ENEM 2010'),
  (1849, 'Questão do ENEM — Questão 145 - ENEM 2010'),
  (1850, 'Questão do ENEM — Questão 146 - ENEM 2010'),
  (1851, 'Questão do ENEM — Questão 147 - ENEM 2010'),
  (1852, 'Questão do ENEM — Questão 148 - ENEM 2010'),
  (1853, 'Questão do ENEM — Questão 149 - ENEM 2010'),
  (1854, 'Questão do ENEM — Questão 150 - ENEM 2010'),
  (1855, 'Questão do ENEM — Questão 151 - ENEM 2010'),
  (1856, 'Questão do ENEM — Questão 152 - ENEM 2010'),
  (1857, 'Questão do ENEM — Questão 153 - ENEM 2010'),
  (1858, 'Questão do ENEM — Questão 154 - ENEM 2010'),
  (1859, 'Questão do ENEM — Questão 155 - ENEM 2010'),
  (1860, 'Questão do ENEM — Questão 156 - ENEM 2010'),
  (1861, 'Questão do ENEM — Questão 157 - ENEM 2010'),
  (1862, 'Questão do ENEM — Questão 158 - ENEM 2010'),
  (1863, 'Questão do ENEM — Questão 159 - ENEM 2010'),
  (1864, 'Questão do ENEM — Questão 160 - ENEM 2010'),
  (1865, 'Questão do ENEM — Questão 161 - ENEM 2010'),
  (1866, 'Questão do ENEM — Questão 162 - ENEM 2010'),
  (1867, 'Questão do ENEM — Questão 163 - ENEM 2010'),
  (1868, 'Questão do ENEM — Questão 164 - ENEM 2010'),
  (1869, 'Questão do ENEM — Questão 165 - ENEM 2010'),
  (1870, 'Questão do ENEM — Questão 166 - ENEM 2010'),
  (1871, 'Questão do ENEM — Questão 167 - ENEM 2010'),
  (1872, 'Questão do ENEM — Questão 168 - ENEM 2010'),
  (1873, 'Questão do ENEM — Questão 169 - ENEM 2010'),
  (1874, 'Questão do ENEM — Questão 170 - ENEM 2010'),
  (1875, 'Questão do ENEM — Questão 171 - ENEM 2010'),
  (1876, 'Questão do ENEM — Questão 172 - ENEM 2010'),
  (1877, 'Questão do ENEM — Questão 173 - ENEM 2010'),
  (1878, 'Questão do ENEM — Questão 174 - ENEM 2010'),
  (1879, 'Questão do ENEM — Questão 175 - ENEM 2010'),
  (1880, 'Questão do ENEM — Questão 176 - ENEM 2010'),
  (1881, 'Questão do ENEM — Questão 177 - ENEM 2010'),
  (1882, 'Questão do ENEM — Questão 178 - ENEM 2010'),
  (1883, 'Questão do ENEM — Questão 179 - ENEM 2010'),
  (1884, 'Questão do ENEM — Questão 180 - ENEM 2010'),
  (1885, 'Questão do ENEM — Questão 180 - ENEM 2010'),
  (1886, 'Questão do ENEM — Questão 136 - ENEM 2011'),
  (1887, 'Questão do ENEM — Questão 137 - ENEM 2011'),
  (1888, 'Questão do ENEM — Questão 138 - ENEM 2011'),
  (1889, 'Questão do ENEM — Questão 139 - ENEM 2011'),
  (1890, 'Questão do ENEM — Questão 140 - ENEM 2011'),
  (1891, 'Questão do ENEM — Questão 141 - ENEM 2011'),
  (1892, 'Questão do ENEM — Questão 142 - ENEM 2011'),
  (1893, 'Questão do ENEM — Questão 143 - ENEM 2011'),
  (1894, 'Questão do ENEM — Questão 144 - ENEM 2011'),
  (1895, 'Questão do ENEM — Questão 145 - ENEM 2011'),
  (1896, 'Questão do ENEM — Questão 146 - ENEM 2011'),
  (1897, 'Questão do ENEM — Questão 148 - ENEM 2011'),
  (1898, 'Questão do ENEM — Questão 150 - ENEM 2011'),
  (1899, 'Questão do ENEM — Questão 154 - ENEM 2011'),
  (1900, 'Questão do ENEM — Questão 155 - ENEM 2011'),
  (1901, 'Questão do ENEM — Questão 156 - ENEM 2011'),
  (1902, 'Questão do ENEM — Questão 158 - ENEM 2011'),
  (1903, 'Questão do ENEM — Questão 159 - ENEM 2011'),
  (1904, 'Questão do ENEM — Questão 160 - ENEM 2011'),
  (1905, 'Questão do ENEM — Questão 161 - ENEM 2011'),
  (1906, 'Questão do ENEM — Questão 162 - ENEM 2011'),
  (1907, 'Questão do ENEM — Questão 163 - ENEM 2011'),
  (1908, 'Questão do ENEM — Questão 164 - ENEM 2011'),
  (1909, 'Questão do ENEM — Questão 165 - ENEM 2011'),
  (1910, 'Questão do ENEM — Questão 166 - ENEM 2011'),
  (1911, 'Questão do ENEM — Questão 167 - ENEM 2011'),
  (1912, 'Questão do ENEM — Questão 168 - ENEM 2011'),
  (1913, 'Questão do ENEM — Questão 169 - ENEM 2011'),
  (1914, 'Questão do ENEM — Questão 170 - ENEM 2011'),
  (1915, 'Questão do ENEM — Questão 172 - ENEM 2011'),
  (1916, 'Questão do ENEM — Questão 173 - ENEM 2011'),
  (1917, 'Questão do ENEM — Questão 174 - ENEM 2011'),
  (1918, 'Questão do ENEM — Questão 175 - ENEM 2011'),
  (1919, 'Questão do ENEM — Questão 176 - ENEM 2011'),
  (1920, 'Questão do ENEM — Questão 177 - ENEM 2011'),
  (1921, 'Questão do ENEM — Questão 178 - ENEM 2011'),
  (1923, 'Questão do ENEM — Questão 180 - ENEM 2011'),
  (1924, 'Questão do ENEM — Questão 180 - ENEM 2011'),
  (1925, 'Questão do ENEM — Questão 136 - ENEM 2012'),
  (1926, 'Questão do ENEM — Questão 137 - ENEM 2012'),
  (1927, 'Questão do ENEM — Questão 138 - ENEM 2012'),
  (1928, 'Questão do ENEM — Questão 139 - ENEM 2012'),
  (1929, 'Questão do ENEM — Questão 141 - ENEM 2012'),
  (1930, 'Questão do ENEM — Questão 142 - ENEM 2012'),
  (1932, 'Questão do ENEM — Questão 144 - ENEM 2012'),
  (1933, 'Questão do ENEM — Questão 145 - ENEM 2012'),
  (1934, 'Questão do ENEM — Questão 146 - ENEM 2012'),
  (1935, 'Questão do ENEM — Questão 147 - ENEM 2012'),
  (1936, 'Questão do ENEM — Questão 148 - ENEM 2012'),
  (1937, 'Questão do ENEM — Questão 149 - ENEM 2012'),
  (1938, 'Questão do ENEM — Questão 150 - ENEM 2012'),
  (1939, 'Questão do ENEM — Questão 151 - ENEM 2012'),
  (1942, 'Questão do ENEM — Questão 154 - ENEM 2012'),
  (1943, 'Questão do ENEM — Questão 155 - ENEM 2012'),
  (1945, 'Questão do ENEM — Questão 157 - ENEM 2012'),
  (1946, 'Questão do ENEM — Questão 158 - ENEM 2012'),
  (1947, 'Questão do ENEM — Questão 159 - ENEM 2012'),
  (1948, 'Questão do ENEM — Questão 160 - ENEM 2012'),
  (1949, 'Questão do ENEM — Questão 161 - ENEM 2012'),
  (1950, 'Questão do ENEM — Questão 163 - ENEM 2012'),
  (1952, 'Questão do ENEM — Questão 166 - ENEM 2012'),
  (1953, 'Questão do ENEM — Questão 167 - ENEM 2012'),
  (1954, 'Questão do ENEM — Questão 168 - ENEM 2012'),
  (1957, 'Questão do ENEM — Questão 171 - ENEM 2012'),
  (1958, 'Questão do ENEM — Questão 172 - ENEM 2012'),
  (1959, 'Questão do ENEM — Questão 173 - ENEM 2012'),
  (1960, 'Questão do ENEM — Questão 174 - ENEM 2012'),
  (1961, 'Questão do ENEM — Questão 175 - ENEM 2012'),
  (1962, 'Questão do ENEM — Questão 176 - ENEM 2012'),
  (1963, 'Questão do ENEM — Questão 177 - ENEM 2012'),
  (1964, 'Questão do ENEM — Questão 178 - ENEM 2012'),
  (1965, 'Questão do ENEM — Questão 179 - ENEM 2012'),
  (1966, 'Questão do ENEM — Questão 180 - ENEM 2012'),
  (1967, 'Questão do ENEM — Questão 180 - ENEM 2012'),
  (1968, 'Questão do ENEM — Questão 136 - ENEM 2013'),
  (1969, 'Questão do ENEM — Questão 137 - ENEM 2013'),
  (1971, 'Questão do ENEM — Questão 139 - ENEM 2013'),
  (1972, 'Questão do ENEM — Questão 140 - ENEM 2013'),
  (1973, 'Questão do ENEM — Questão 141 - ENEM 2013'),
  (1974, 'Questão do ENEM — Questão 142 - ENEM 2013'),
  (1975, 'Questão do ENEM — Questão 143 - ENEM 2013'),
  (1976, 'Questão do ENEM — Questão 144 - ENEM 2013'),
  (1977, 'Questão do ENEM — Questão 145 - ENEM 2013'),
  (1978, 'Questão do ENEM — Questão 146 - ENEM 2013'),
  (1979, 'Questão do ENEM — Questão 147 - ENEM 2013'),
  (1980, 'Questão do ENEM — Questão 148 - ENEM 2013'),
  (1981, 'Questão do ENEM — Questão 149 - ENEM 2013'),
  (1982, 'Questão do ENEM — Questão 150 - ENEM 2013'),
  (1986, 'Questão do ENEM — Questão 156 - ENEM 2013'),
  (1987, 'Questão do ENEM — Questão 157 - ENEM 2013'),
  (1988, 'Questão do ENEM — Questão 158 - ENEM 2013'),
  (1989, 'Questão do ENEM — Questão 159 - ENEM 2013'),
  (1990, 'Questão do ENEM — Questão 160 - ENEM 2013'),
  (1991, 'Questão do ENEM — Questão 161 - ENEM 2013'),
  (1992, 'Questão do ENEM — Questão 162 - ENEM 2013'),
  (1993, 'Questão do ENEM — Questão 163 - ENEM 2013'),
  (1995, 'Questão do ENEM — Questão 165 - ENEM 2013'),
  (1996, 'Questão do ENEM — Questão 166 - ENEM 2013'),
  (1997, 'Questão do ENEM — Questão 167 - ENEM 2013'),
  (1998, 'Questão do ENEM — Questão 168 - ENEM 2013'),
  (1999, 'Questão do ENEM — Questão 169 - ENEM 2013'),
  (2000, 'Questão do ENEM — Questão 170 - ENEM 2013'),
  (2001, 'Questão do ENEM — Questão 171 - ENEM 2013'),
  (2002, 'Questão do ENEM — Questão 172 - ENEM 2013'),
  (2003, 'Questão do ENEM — Questão 173 - ENEM 2013'),
  (2004, 'Questão do ENEM — Questão 174 - ENEM 2013'),
  (2005, 'Questão do ENEM — Questão 175 - ENEM 2013'),
  (2006, 'Questão do ENEM — Questão 176 - ENEM 2013'),
  (2007, 'Questão do ENEM — Questão 177 - ENEM 2013'),
  (2008, 'Questão do ENEM — Questão 178 - ENEM 2013'),
  (2009, 'Questão do ENEM — Questão 179 - ENEM 2013'),
  (2010, 'Questão do ENEM — Questão 136 - ENEM 2014'),
  (2011, 'Questão do ENEM — Questão 137 - ENEM 2014'),
  (2012, 'Questão do ENEM — Questão 138 - ENEM 2014'),
  (2013, 'Questão do ENEM — Questão 139 - ENEM 2014'),
  (2014, 'Questão do ENEM — Questão 140 - ENEM 2014'),
  (2015, 'Questão do ENEM — Questão 141 - ENEM 2014'),
  (2016, 'Questão do ENEM — Questão 142 - ENEM 2014'),
  (2020, 'Questão do ENEM — Questão 146 - ENEM 2014'),
  (2021, 'Questão do ENEM — Questão 147 - ENEM 2014'),
  (2023, 'Questão do ENEM — Questão 149 - ENEM 2014'),
  (2024, 'Questão do ENEM — Questão 150 - ENEM 2014'),
  (2025, 'Questão do ENEM — Questão 151 - ENEM 2014'),
  (2026, 'Questão do ENEM — Questão 152 - ENEM 2014'),
  (2027, 'Questão do ENEM — Questão 153 - ENEM 2014'),
  (2028, 'Questão do ENEM — Questão 154 - ENEM 2014'),
  (2029, 'Questão do ENEM — Questão 155 - ENEM 2014'),
  (2030, 'Questão do ENEM — Questão 156 - ENEM 2014'),
  (2031, 'Questão do ENEM — Questão 157 - ENEM 2014'),
  (2032, 'Questão do ENEM — Questão 158 - ENEM 2014'),
  (2033, 'Questão do ENEM — Questão 159 - ENEM 2014'),
  (2035, 'Questão do ENEM — Questão 161 - ENEM 2014'),
  (2036, 'Questão do ENEM — Questão 162 - ENEM 2014'),
  (2038, 'Questão do ENEM — Questão 164 - ENEM 2014'),
  (2040, 'Questão do ENEM — Questão 166 - ENEM 2014'),
  (2041, 'Questão do ENEM — Questão 167 - ENEM 2014'),
  (2042, 'Questão do ENEM — Questão 168 - ENEM 2014'),
  (2043, 'Questão do ENEM — Questão 169 - ENEM 2014'),
  (2044, 'Questão do ENEM — Questão 170 - ENEM 2014'),
  (2045, 'Questão do ENEM — Questão 171 - ENEM 2014'),
  (2046, 'Questão do ENEM — Questão 172 - ENEM 2014'),
  (2047, 'Questão do ENEM — Questão 173 - ENEM 2014'),
  (2048, 'Questão do ENEM — Questão 174 - ENEM 2014'),
  (2049, 'Questão do ENEM — Questão 175 - ENEM 2014'),
  (2050, 'Questão do ENEM — Questão 176 - ENEM 2014'),
  (2051, 'Questão do ENEM — Questão 177 - ENEM 2014'),
  (2052, 'Questão do ENEM — Questão 178 - ENEM 2014'),
  (2053, 'Questão do ENEM — Questão 179 - ENEM 2014'),
  (2054, 'Questão do ENEM — Questão 180 - ENEM 2014'),
  (2055, 'Questão do ENEM — Questão 180 - ENEM 2014'),
  (2056, 'Questão do ENEM — Questão 136 - ENEM 2015'),
  (2057, 'Questão do ENEM — Questão 137 - ENEM 2015'),
  (2058, 'Questão do ENEM — Questão 138 - ENEM 2015'),
  (2059, 'Questão do ENEM — Questão 139 - ENEM 2015'),
  (2060, 'Questão do ENEM — Questão 140 - ENEM 2015'),
  (2061, 'Questão do ENEM — Questão 141 - ENEM 2015'),
  (2062, 'Questão do ENEM — Questão 142 - ENEM 2015'),
  (2063, 'Questão do ENEM — Questão 143 - ENEM 2015'),
  (2064, 'Questão do ENEM — Questão 144 - ENEM 2015'),
  (2065, 'Questão do ENEM — Questão 146 - ENEM 2015'),
  (2066, 'Questão do ENEM — Questão 147 - ENEM 2015'),
  (2067, 'Questão do ENEM — Questão 148 - ENEM 2015'),
  (2068, 'Questão do ENEM — Questão 149 - ENEM 2015'),
  (2069, 'Questão do ENEM — Questão 150 - ENEM 2015'),
  (2070, 'Questão do ENEM — Questão 151 - ENEM 2015'),
  (2071, 'Questão do ENEM — Questão 152 - ENEM 2015'),
  (2072, 'Questão do ENEM — Questão 153 - ENEM 2015'),
  (2074, 'Questão do ENEM — Questão 155 - ENEM 2015'),
  (2075, 'Questão do ENEM — Questão 156 - ENEM 2015'),
  (2076, 'Questão do ENEM — Questão 157 - ENEM 2015'),
  (2077, 'Questão do ENEM — Questão 158 - ENEM 2015'),
  (2078, 'Questão do ENEM — Questão 159 - ENEM 2015'),
  (2079, 'Questão do ENEM — Questão 160 - ENEM 2015'),
  (2080, 'Questão do ENEM — Questão 161 - ENEM 2015'),
  (2081, 'Questão do ENEM — Questão 162 - ENEM 2015'),
  (2082, 'Questão do ENEM — Questão 163 - ENEM 2015'),
  (2084, 'Questão do ENEM — Questão 165 - ENEM 2015'),
  (2085, 'Questão do ENEM — Questão 166 - ENEM 2015'),
  (2087, 'Questão do ENEM — Questão 168 - ENEM 2015'),
  (2088, 'Questão do ENEM — Questão 169 - ENEM 2015'),
  (2089, 'Questão do ENEM — Questão 170 - ENEM 2015'),
  (2090, 'Questão do ENEM — Questão 171 - ENEM 2015'),
  (2091, 'Questão do ENEM — Questão 172 - ENEM 2015'),
  (2092, 'Questão do ENEM — Questão 173 - ENEM 2015'),
  (2093, 'Questão do ENEM — Questão 174 - ENEM 2015'),
  (2094, 'Questão do ENEM — Questão 175 - ENEM 2015'),
  (2096, 'Questão do ENEM — Questão 178 - ENEM 2015'),
  (2097, 'Questão do ENEM — Questão 180 - ENEM 2015'),
  (2098, 'Questão do ENEM — Questão 180 - ENEM 2015'),
  (2099, 'Questão do ENEM — Questão 136 - ENEM 2016'),
  (2100, 'Questão do ENEM — Questão 137 - ENEM 2016'),
  (2101, 'Questão do ENEM — Questão 138 - ENEM 2016'),
  (2102, 'Questão do ENEM — Questão 139 - ENEM 2016'),
  (2103, 'Questão do ENEM — Questão 140 - ENEM 2016'),
  (2104, 'Questão do ENEM — Questão 141 - ENEM 2016'),
  (2105, 'Questão do ENEM — Questão 142 - ENEM 2016'),
  (2106, 'Questão do ENEM — Questão 143 - ENEM 2016'),
  (2107, 'Questão do ENEM — Questão 144 - ENEM 2016'),
  (2108, 'Questão do ENEM — Questão 145 - ENEM 2016'),
  (2109, 'Questão do ENEM — Questão 146 - ENEM 2016'),
  (2111, 'Questão do ENEM — Questão 148 - ENEM 2016'),
  (2112, 'Questão do ENEM — Questão 149 - ENEM 2016'),
  (2114, 'Questão do ENEM — Questão 151 - ENEM 2016'),
  (2115, 'Questão do ENEM — Questão 152 - ENEM 2016'),
  (2116, 'Questão do ENEM — Questão 153 - ENEM 2016'),
  (2117, 'Questão do ENEM — Questão 154 - ENEM 2016'),
  (2119, 'Questão do ENEM — Questão 156 - ENEM 2016'),
  (2120, 'Questão do ENEM — Questão 157 - ENEM 2016'),
  (2121, 'Questão do ENEM — Questão 158 - ENEM 2016'),
  (2122, 'Questão do ENEM — Questão 159 - ENEM 2016'),
  (2123, 'Questão do ENEM — Questão 160 - ENEM 2016'),
  (2124, 'Questão do ENEM — Questão 161 - ENEM 2016'),
  (2125, 'Questão do ENEM — Questão 162 - ENEM 2016'),
  (2126, 'Questão do ENEM — Questão 163 - ENEM 2016'),
  (2127, 'Questão do ENEM — Questão 164 - ENEM 2016'),
  (2128, 'Questão do ENEM — Questão 165 - ENEM 2016'),
  (2129, 'Questão do ENEM — Questão 166 - ENEM 2016'),
  (2130, 'Questão do ENEM — Questão 167 - ENEM 2016'),
  (2132, 'Questão do ENEM — Questão 169 - ENEM 2016'),
  (2133, 'Questão do ENEM — Questão 170 - ENEM 2016'),
  (2134, 'Questão do ENEM — Questão 171 - ENEM 2016'),
  (2135, 'Questão do ENEM — Questão 172 - ENEM 2016'),
  (2136, 'Questão do ENEM — Questão 173 - ENEM 2016'),
  (2137, 'Questão do ENEM — Questão 174 - ENEM 2016'),
  (2138, 'Questão do ENEM — Questão 175 - ENEM 2016'),
  (2139, 'Questão do ENEM — Questão 176 - ENEM 2016'),
  (2140, 'Questão do ENEM — Questão 177 - ENEM 2016'),
  (2142, 'Questão do ENEM — Questão 179 - ENEM 2016'),
  (2143, 'Questão do ENEM — Questão 180 - ENEM 2016'),
  (2144, 'Questão do ENEM — Questão 180 - ENEM 2016'),
  (2146, 'Questão do ENEM — Questão 137 - ENEM 2017'),
  (2147, 'Questão do ENEM — Questão 138 - ENEM 2017'),
  (2148, 'Questão do ENEM — Questão 139 - ENEM 2017'),
  (2149, 'Questão do ENEM — Questão 140 - ENEM 2017'),
  (2150, 'Questão do ENEM — Questão 142 - ENEM 2017'),
  (2151, 'Questão do ENEM — Questão 143 - ENEM 2017'),
  (2152, 'Questão do ENEM — Questão 144 - ENEM 2017'),
  (2153, 'Questão do ENEM — Questão 145 - ENEM 2017'),
  (2154, 'Questão do ENEM — Questão 147 - ENEM 2017'),
  (2155, 'Questão do ENEM — Questão 148 - ENEM 2017'),
  (2156, 'Questão do ENEM — Questão 149 - ENEM 2017'),
  (2157, 'Questão do ENEM — Questão 150 - ENEM 2017'),
  (2158, 'Questão do ENEM — Questão 151 - ENEM 2017'),
  (2160, 'Questão do ENEM — Questão 153 - ENEM 2017'),
  (2161, 'Questão do ENEM — Questão 154 - ENEM 2017'),
  (2162, 'Questão do ENEM — Questão 155 - ENEM 2017'),
  (2163, 'Questão do ENEM — Questão 156 - ENEM 2017'),
  (2164, 'Questão do ENEM — Questão 157 - ENEM 2017'),
  (2165, 'Questão do ENEM — Questão 158 - ENEM 2017'),
  (2166, 'Questão do ENEM — Questão 159 - ENEM 2017'),
  (2167, 'Questão do ENEM — Questão 160 - ENEM 2017'),
  (2168, 'Questão do ENEM — Questão 161 - ENEM 2017'),
  (2169, 'Questão do ENEM — Questão 162 - ENEM 2017'),
  (2170, 'Questão do ENEM — Questão 163 - ENEM 2017'),
  (2171, 'Questão do ENEM — Questão 164 - ENEM 2017'),
  (2172, 'Questão do ENEM — Questão 165 - ENEM 2017'),
  (2173, 'Questão do ENEM — Questão 166 - ENEM 2017'),
  (2174, 'Questão do ENEM — Questão 167 - ENEM 2017'),
  (2175, 'Questão do ENEM — Questão 168 - ENEM 2017'),
  (2176, 'Questão do ENEM — Questão 169 - ENEM 2017'),
  (2177, 'Questão do ENEM — Questão 170 - ENEM 2017'),
  (2178, 'Questão do ENEM — Questão 171 - ENEM 2017'),
  (2179, 'Questão do ENEM — Questão 172 - ENEM 2017'),
  (2180, 'Questão do ENEM — Questão 173 - ENEM 2017'),
  (2181, 'Questão do ENEM — Questão 174 - ENEM 2017'),
  (2183, 'Questão do ENEM — Questão 176 - ENEM 2017'),
  (2184, 'Questão do ENEM — Questão 177 - ENEM 2017'),
  (2185, 'Questão do ENEM — Questão 178 - ENEM 2017'),
  (2186, 'Questão do ENEM — Questão 179 - ENEM 2017'),
  (2187, 'Questão do ENEM — Questão 180 - ENEM 2017'),
  (2188, 'Questão do ENEM — Questão 180 - ENEM 2017'),
  (2189, 'Questão do ENEM — Questão 137 - ENEM 2018'),
  (2190, 'Questão do ENEM — Questão 138 - ENEM 2018'),
  (2192, 'Questão do ENEM — Questão 141 - ENEM 2018'),
  (2193, 'Questão do ENEM — Questão 143 - ENEM 2018'),
  (2194, 'Questão do ENEM — Questão 144 - ENEM 2018'),
  (2195, 'Questão do ENEM — Questão 145 - ENEM 2018'),
  (2197, 'Questão do ENEM — Questão 147 - ENEM 2018'),
  (2199, 'Questão do ENEM — Questão 149 - ENEM 2018'),
  (2200, 'Questão do ENEM — Questão 150 - ENEM 2018'),
  (2201, 'Questão do ENEM — Questão 151 - ENEM 2018'),
  (2203, 'Questão do ENEM — Questão 153 - ENEM 2018'),
  (2204, 'Questão do ENEM — Questão 154 - ENEM 2018'),
  (2205, 'Questão do ENEM — Questão 155 - ENEM 2018'),
  (2206, 'Questão do ENEM — Questão 156 - ENEM 2018'),
  (2207, 'Questão do ENEM — Questão 157 - ENEM 2018'),
  (2208, 'Questão do ENEM — Questão 158 - ENEM 2018'),
  (2210, 'Questão do ENEM — Questão 160 - ENEM 2018'),
  (2211, 'Questão do ENEM — Questão 161 - ENEM 2018'),
  (2212, 'Questão do ENEM — Questão 162 - ENEM 2018'),
  (2213, 'Questão do ENEM — Questão 163 - ENEM 2018'),
  (2214, 'Questão do ENEM — Questão 164 - ENEM 2018'),
  (2216, 'Questão do ENEM — Questão 166 - ENEM 2018'),
  (2217, 'Questão do ENEM — Questão 167 - ENEM 2018'),
  (2218, 'Questão do ENEM — Questão 168 - ENEM 2018'),
  (2219, 'Questão do ENEM — Questão 169 - ENEM 2018'),
  (2220, 'Questão do ENEM — Questão 170 - ENEM 2018'),
  (2221, 'Questão do ENEM — Questão 171 - ENEM 2018'),
  (2222, 'Questão do ENEM — Questão 172 - ENEM 2018'),
  (2224, 'Questão do ENEM — Questão 174 - ENEM 2018'),
  (2225, 'Questão do ENEM — Questão 175 - ENEM 2018'),
  (2226, 'Questão do ENEM — Questão 176 - ENEM 2018'),
  (2227, 'Questão do ENEM — Questão 177 - ENEM 2018'),
  (2228, 'Questão do ENEM — Questão 178 - ENEM 2018'),
  (2233, 'Questão do ENEM — Questão 137 - ENEM 2019'),
  (2234, 'Questão do ENEM — Questão 138 - ENEM 2019'),
  (2236, 'Questão do ENEM — Questão 140 - ENEM 2019'),
  (2237, 'Questão do ENEM — Questão 142 - ENEM 2019'),
  (2238, 'Questão do ENEM — Questão 143 - ENEM 2019'),
  (2239, 'Questão do ENEM — Questão 144 - ENEM 2019'),
  (2240, 'Questão do ENEM — Questão 145 - ENEM 2019'),
  (2241, 'Questão do ENEM — Questão 146 - ENEM 2019'),
  (2242, 'Questão do ENEM — Questão 147 - ENEM 2019'),
  (2243, 'Questão do ENEM — Questão 148 - ENEM 2019'),
  (2244, 'Questão do ENEM — Questão 149 - ENEM 2019'),
  (2245, 'Questão do ENEM — Questão 150 - ENEM 2019'),
  (2246, 'Questão do ENEM — Questão 151 - ENEM 2019'),
  (2247, 'Questão do ENEM — Questão 152 - ENEM 2019'),
  (2248, 'Questão do ENEM — Questão 153 - ENEM 2019'),
  (2249, 'Questão do ENEM — Questão 154 - ENEM 2019'),
  (2250, 'Questão do ENEM — Questão 155 - ENEM 2019'),
  (2251, 'Questão do ENEM — Questão 156 - ENEM 2019'),
  (2252, 'Questão do ENEM — Questão 157 - ENEM 2019'),
  (2253, 'Questão do ENEM — Questão 158 - ENEM 2019'),
  (2254, 'Questão do ENEM — Questão 159 - ENEM 2019'),
  (2255, 'Questão do ENEM — Questão 160 - ENEM 2019'),
  (2256, 'Questão do ENEM — Questão 161 - ENEM 2019'),
  (2257, 'Questão do ENEM — Questão 162 - ENEM 2019'),
  (2258, 'Questão do ENEM — Questão 163 - ENEM 2019'),
  (2259, 'Questão do ENEM — Questão 164 - ENEM 2019'),
  (2261, 'Questão do ENEM — Questão 166 - ENEM 2019'),
  (2262, 'Questão do ENEM — Questão 167 - ENEM 2019'),
  (2263, 'Questão do ENEM — Questão 168 - ENEM 2019'),
  (2264, 'Questão do ENEM — Questão 169 - ENEM 2019'),
  (2265, 'Questão do ENEM — Questão 170 - ENEM 2019'),
  (2266, 'Questão do ENEM — Questão 171 - ENEM 2019'),
  (2267, 'Questão do ENEM — Questão 172 - ENEM 2019'),
  (2268, 'Questão do ENEM — Questão 173 - ENEM 2019'),
  (2269, 'Questão do ENEM — Questão 174 - ENEM 2019'),
  (2270, 'Questão do ENEM — Questão 175 - ENEM 2019'),
  (2271, 'Questão do ENEM — Questão 176 - ENEM 2019'),
  (2272, 'Questão do ENEM — Questão 177 - ENEM 2019'),
  (2273, 'Questão do ENEM — Questão 178 - ENEM 2019'),
  (2274, 'Questão do ENEM — Questão 179 - ENEM 2019'),
  (2275, 'Questão do ENEM — Questão 180 - ENEM 2019'),
  (2276, 'Questão do ENEM — Questão 180 - ENEM 2019'),
  (2277, 'Questão do ENEM — Questão 136 - ENEM 2020'),
  (2279, 'Questão do ENEM — Questão 138 - ENEM 2020'),
  (2280, 'Questão do ENEM — Questão 139 - ENEM 2020'),
  (2281, 'Questão do ENEM — Questão 140 - ENEM 2020'),
  (2282, 'Questão do ENEM — Questão 141 - ENEM 2020'),
  (2284, 'Questão do ENEM — Questão 143 - ENEM 2020'),
  (2285, 'Questão do ENEM — Questão 145 - ENEM 2020'),
  (2286, 'Questão do ENEM — Questão 146 - ENEM 2020'),
  (2288, 'Questão do ENEM — Questão 148 - ENEM 2020'),
  (2290, 'Questão do ENEM — Questão 151 - ENEM 2020'),
  (2291, 'Questão do ENEM — Questão 153 - ENEM 2020'),
  (2292, 'Questão do ENEM — Questão 154 - ENEM 2020'),
  (2294, 'Questão do ENEM — Questão 156 - ENEM 2020'),
  (2296, 'Questão do ENEM — Questão 158 - ENEM 2020'),
  (2297, 'Questão do ENEM — Questão 159 - ENEM 2020'),
  (2298, 'Questão do ENEM — Questão 160 - ENEM 2020'),
  (2300, 'Questão do ENEM — Questão 162 - ENEM 2020'),
  (2302, 'Questão do ENEM — Questão 164 - ENEM 2020'),
  (2303, 'Questão do ENEM — Questão 165 - ENEM 2020'),
  (2305, 'Questão do ENEM — Questão 167 - ENEM 2020'),
  (2306, 'Questão do ENEM — Questão 169 - ENEM 2020'),
  (2308, 'Questão do ENEM — Questão 171 - ENEM 2020'),
  (2309, 'Questão do ENEM — Questão 172 - ENEM 2020'),
  (2310, 'Questão do ENEM — Questão 173 - ENEM 2020'),
  (2311, 'Questão do ENEM — Questão 174 - ENEM 2020'),
  (2315, 'Questão do ENEM — Questão 178 - ENEM 2020'),
  (2316, 'Questão do ENEM — Questão 180 - ENEM 2020'),
  (2317, 'Questão do ENEM — Questão 180 - ENEM 2020'),
  (2318, 'Questão do ENEM — Questão 94 - ENEM 2021'),
  (2319, 'Questão do ENEM — Questão 136 - ENEM 2021'),
  (2321, 'Questão do ENEM — Questão 139 - ENEM 2021'),
  (2322, 'Questão do ENEM — Questão 141 - ENEM 2021'),
  (2323, 'Questão do ENEM — Questão 142 - ENEM 2021'),
  (2324, 'Questão do ENEM — Questão 143 - ENEM 2021'),
  (2325, 'Questão do ENEM — Questão 144 - ENEM 2021'),
  (2326, 'Questão do ENEM — Questão 145 - ENEM 2021'),
  (2327, 'Questão do ENEM — Questão 146 - ENEM 2021'),
  (2328, 'Questão do ENEM — Questão 147 - ENEM 2021'),
  (2329, 'Questão do ENEM — Questão 148 - ENEM 2021'),
  (2330, 'Questão do ENEM — Questão 150 - ENEM 2021'),
  (2331, 'Questão do ENEM — Questão 151 - ENEM 2021'),
  (2333, 'Questão do ENEM — Questão 153 - ENEM 2021'),
  (2334, 'Questão do ENEM — Questão 154 - ENEM 2021'),
  (2335, 'Questão do ENEM — Questão 155 - ENEM 2021'),
  (2336, 'Questão do ENEM — Questão 156 - ENEM 2021'),
  (2337, 'Questão do ENEM — Questão 157 - ENEM 2021'),
  (2338, 'Questão do ENEM — Questão 158 - ENEM 2021'),
  (2339, 'Questão do ENEM — Questão 159 - ENEM 2021'),
  (2340, 'Questão do ENEM — Questão 160 - ENEM 2021'),
  (2344, 'Questão do ENEM — Questão 164 - ENEM 2021'),
  (2345, 'Questão do ENEM — Questão 165 - ENEM 2021'),
  (2346, 'Questão do ENEM — Questão 166 - ENEM 2021'),
  (2347, 'Questão do ENEM — Questão 167 - ENEM 2021'),
  (2348, 'Questão do ENEM — Questão 168 - ENEM 2021'),
  (2349, 'Questão do ENEM — Questão 169 - ENEM 2021'),
  (2350, 'Questão do ENEM — Questão 170 - ENEM 2021'),
  (2351, 'Questão do ENEM — Questão 171 - ENEM 2021'),
  (2352, 'Questão do ENEM — Questão 172 - ENEM 2021'),
  (2353, 'Questão do ENEM — Questão 173 - ENEM 2021'),
  (2354, 'Questão do ENEM — Questão 174 - ENEM 2021'),
  (2355, 'Questão do ENEM — Questão 175 - ENEM 2021'),
  (2356, 'Questão do ENEM — Questão 176 - ENEM 2021'),
  (2357, 'Questão do ENEM — Questão 177 - ENEM 2021'),
  (2358, 'Questão do ENEM — Questão 178 - ENEM 2021'),
  (2360, 'Questão do ENEM — Questão 180 - ENEM 2021'),
  (2361, 'Questão do ENEM — Questão 180 - ENEM 2021'),
  (2362, 'Questão do ENEM — Questão 136 - ENEM 2022'),
  (2364, 'Questão do ENEM — Questão 138 - ENEM 2022'),
  (2365, 'Questão do ENEM — Questão 139 - ENEM 2022'),
  (2366, 'Questão do ENEM — Questão 140 - ENEM 2022'),
  (2368, 'Questão do ENEM — Questão 142 - ENEM 2022'),
  (2370, 'Questão do ENEM — Questão 145 - ENEM 2022'),
  (2371, 'Questão do ENEM — Questão 146 - ENEM 2022'),
  (2372, 'Questão do ENEM — Questão 147 - ENEM 2022'),
  (2374, 'Questão do ENEM — Questão 149 - ENEM 2022'),
  (2375, 'Questão do ENEM — Questão 150 - ENEM 2022'),
  (2376, 'Questão do ENEM — Questão 151 - ENEM 2022'),
  (2377, 'Questão do ENEM — Questão 152 - ENEM 2022'),
  (2378, 'Questão do ENEM — Questão 153 - ENEM 2022'),
  (2379, 'Questão do ENEM — Questão 154 - ENEM 2022'),
  (2383, 'Questão do ENEM — Questão 158 - ENEM 2022'),
  (2386, 'Questão do ENEM — Questão 161 - ENEM 2022'),
  (2387, 'Questão do ENEM — Questão 162 - ENEM 2022'),
  (2388, 'Questão do ENEM — Questão 163 - ENEM 2022'),
  (2389, 'Questão do ENEM — Questão 164 - ENEM 2022'),
  (2390, 'Questão do ENEM — Questão 165 - ENEM 2022'),
  (2391, 'Questão do ENEM — Questão 166 - ENEM 2022'),
  (2392, 'Questão do ENEM — Questão 167 - ENEM 2022'),
  (2393, 'Questão do ENEM — Questão 168 - ENEM 2022'),
  (2394, 'Questão do ENEM — Questão 169 - ENEM 2022'),
  (2395, 'Questão do ENEM — Questão 170 - ENEM 2022'),
  (2396, 'Questão do ENEM — Questão 171 - ENEM 2022'),
  (2397, 'Questão do ENEM — Questão 172 - ENEM 2022'),
  (2398, 'Questão do ENEM — Questão 173 - ENEM 2022'),
  (2399, 'Questão do ENEM — Questão 174 - ENEM 2022'),
  (2400, 'Questão do ENEM — Questão 175 - ENEM 2022'),
  (2401, 'Questão do ENEM — Questão 176 - ENEM 2022'),
  (2402, 'Questão do ENEM — Questão 177 - ENEM 2022'),
  (2403, 'Questão do ENEM — Questão 178 - ENEM 2022'),
  (2404, 'Questão do ENEM — Questão 179 - ENEM 2022'),
  (2407, 'Questão do ENEM — Questão 128 - ENEM 2023'),
  (2408, 'Questão do ENEM — Questão 129 - ENEM 2023'),
  (2409, 'Questão do ENEM — Questão 130 - ENEM 2023'),
  (2410, 'Questão do ENEM — Questão 131 - ENEM 2023'),
  (2411, 'Questão do ENEM — Questão 136 - ENEM 2023'),
  (2412, 'Questão do ENEM — Questão 137 - ENEM 2023'),
  (2413, 'Questão do ENEM — Questão 138 - ENEM 2023'),
  (2414, 'Questão do ENEM — Questão 139 - ENEM 2023'),
  (2415, 'Questão do ENEM — Questão 140 - ENEM 2023'),
  (2417, 'Questão do ENEM — Questão 142 - ENEM 2023'),
  (2418, 'Questão do ENEM — Questão 143 - ENEM 2023'),
  (2419, 'Questão do ENEM — Questão 144 - ENEM 2023'),
  (2421, 'Questão do ENEM — Questão 146 - ENEM 2023'),
  (2422, 'Questão do ENEM — Questão 147 - ENEM 2023'),
  (2423, 'Questão do ENEM — Questão 150 - ENEM 2023'),
  (2424, 'Questão do ENEM — Questão 151 - ENEM 2023'),
  (2425, 'Questão do ENEM — Questão 152 - ENEM 2023'),
  (2426, 'Questão do ENEM — Questão 155 - ENEM 2023'),
  (2427, 'Questão do ENEM — Questão 156 - ENEM 2023'),
  (2428, 'Questão do ENEM — Questão 157 - ENEM 2023'),
  (2429, 'Questão do ENEM — Questão 158 - ENEM 2023'),
  (2430, 'Questão do ENEM — Questão 159 - ENEM 2023'),
  (2431, 'Questão do ENEM — Questão 160 - ENEM 2023'),
  (2432, 'Questão do ENEM — Questão 161 - ENEM 2023'),
  (2433, 'Questão do ENEM — Questão 162 - ENEM 2023'),
  (2435, 'Questão do ENEM — Questão 164 - ENEM 2023'),
  (2436, 'Questão do ENEM — Questão 165 - ENEM 2023'),
  (2437, 'Questão do ENEM — Questão 166 - ENEM 2023'),
  (2438, 'Questão do ENEM — Questão 167 - ENEM 2023'),
  (2441, 'Questão do ENEM — Questão 170 - ENEM 2023'),
  (2442, 'Questão do ENEM — Questão 171 - ENEM 2023'),
  (2443, 'Questão do ENEM — Questão 172 - ENEM 2023'),
  (2445, 'Questão do ENEM — Questão 175 - ENEM 2023'),
  (2446, 'Questão do ENEM — Questão 176 - ENEM 2023'),
  (2449, 'Questão do ENEM — Questão 179 - ENEM 2023'),
  (2450, 'Questão do ENEM — Questão 180 - ENEM 2023'),
  (2451, 'Questão do ENEM — Questão 180 - ENEM 2023');
