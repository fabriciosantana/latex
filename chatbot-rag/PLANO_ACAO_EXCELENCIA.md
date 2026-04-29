# Plano de Ações para Excelência em Todas as Dimensões Avaliativas

---

## I. ORIGINALIDADE E CONTRIBUIÇÃO CIENTÍFICA

**Ação 1 — Reposicionar a contribuição com precisão cirúrgica**
Redigir um parágrafo dedicado, na introdução e na conclusão, que articule em que medida o trabalho avança além da mera aplicação de RAG: o protocolo reprodutível para acervos legislativos em português é, em si, uma contribuição metodológica transferível. Nomear isso explicitamente como *design artifact* no sentido da Design Science Research.

**Ação 2 — Realizar busca sistemática de trabalhos concorrentes**
Conduzir uma revisão sistemática em bases como ACL Anthology, IEEE Xplore e Scopus com os termos "RAG + parliament", "legislative chatbot", "retrieval-augmented + congressional discourse" para garantir que nenhum trabalho diretamente concorrente foi omitido. Documentar os resultados da busca em apêndice metodológico.

**Ação 3 — Explicitar o diferencial frente aos trabalhos mais próximos**
Criar uma tabela comparativa posicionando o artigo frente aos cinco ou seis trabalhos mais similares identificados na revisão (Khaliq et al., 2024; Martellote Viola et al., 2025; Blanco, 2025, 2026), com colunas para corpus, língua, pipeline, avaliação e disponibilidade pública dos artefatos. Isso torna a originalidade visível e verificável.

---

## II. FUNDAMENTAÇÃO TEÓRICA E REVISÃO DE LITERATURA

**Ação 4 — Verificar e declarar o status editorial de cada referência arXiv**
Para cada citação de pré-print (Gao et al., 2023; Gupta et al., 2024; Maharjan & Yadav, 2026; Bhat et al., 2025, entre outros), verificar se houve publicação em venue revisado por pares. Atualizar as entradas bibliográficas correspondentes e adicionar nota metodológica sobre o tratamento de pré-prints adotado no trabalho.

**Ação 5 — Ampliar a cobertura sobre avaliação de RAG**
Incluir literatura adicional sobre frameworks de avaliação de RAG além do RAGAS e do ARES, como TruLens, RAGChecker e benchmarks como RGB e RECALL, discutindo por que a rubrica própria foi preferida e quais suas vantagens e limitações frente a esses frameworks consolidados.

**Ação 6 — Reforçar a fundamentação sobre corpora parlamentares multilíngues**
Incorporar literatura do campo ParlaCLARIN e de projetos como o ParlSpeech e o CorDis, que tratam especificamente de corpora de discursos parlamentares em perspectiva computacional, fortalecendo o diálogo entre o domínio técnico e o domínio legislativo com maior profundidade comparativa.

**Ação 7 — Adicionar discussão sobre limitações epistemológicas do LLM como juiz**
Expandir a fundamentação teórica sobre a estratégia de *LLM as a Judge* para incluir seus vieses documentados na literatura: viés de posição, viés de verbosidade, viés de auto-preferência e sensibilidade à formulação da rubrica. Isso transformaria a discussão de um alerta metodológico em contribuição teórica ao debate.

---

## III. PROBLEMA, HIPÓTESES E OBJETIVOS

**Ação 8 — Declarar o enquadramento epistemológico e metodológico do trabalho**
Adicionar uma subseção (sugerida entre a justificativa e a fundamentação teórica) declarando explicitamente que o trabalho se enquadra na Design Science Research (Hevner et al., 2004; Peffers et al., 2007), com seus seis passos canônicos mapeados para as seções do artigo. Isso responde a uma das exigências mais frequentes de revisores em revistas de sistemas de informação e administração pública digital.

**Ação 9 — Reformular os objetivos específicos com indicadores de verificação**
Para cada um dos quatro objetivos específicos, acrescentar um critério mensurável de êxito. Por exemplo: o objetivo de "avaliar empiricamente a qualidade" deve especificar qual patamar de desempenho na rubrica seria considerado suficiente para validar a viabilidade da prova de conceito, transformando-o em proposição verificável.

**Ação 10 — Formular proposições de pesquisa em substituição a hipóteses**
Como o trabalho é de natureza construtiva e não experimental no sentido estrito, substituir a ausência de hipóteses por proposições de pesquisa formais — estrutura comum em Design Science Research — do tipo: *"P1: Um pipeline RAG com enriquecimento de chunks por metadados legislativos produz respostas com maior rastreabilidade do que sistemas RAG sem esse enriquecimento."* Isso oferece ao revisor um alvo avaliativo claro.

---

## IV. METODOLOGIA

**Ação 11 — Incluir métricas de avaliação da recuperação independentes da geração**
Implementar avaliação separada da etapa de *retrieval* com métricas padrão da literatura: Precision@k, Recall@k, MRR (Mean Reciprocal Rank) e NDCG. Para isso, construir um conjunto de pares pergunta–documento-ouro (gold standard) com pelo menos 50 itens, com anotação humana indicando quais chunks deveriam ser recuperados para cada pergunta. Essa é a lacuna metodológica mais crítica do artigo.

**Ação 12 — Ampliar a bateria de avaliação para pelo menos 100 perguntas**
Expandir de 20 para no mínimo 100 perguntas, distribuídas de forma equilibrada entre todas as categorias definidas (factual, proposta, foco no autor, desambiguação, evidência negativa, controle de escopo, precisão numérica, multietapas, autoria cruzada, síntese). Com esse volume, torna-se possível calcular desempenho médio por categoria com margem de erro aceitável e realizar testes estatísticos de comparação.

**Ação 13 — Realizar experimento de ablação**
Testar sistematicamente o impacto de variações controladas no pipeline: com e sem metadados nos chunks, com diferentes tamanhos de chunk (ex: 400, 600, 850 palavras), com e sem reranqueamento, e com diferentes modelos de embedding. Um experimento de ablação transforma a prova de conceito em contribuição metodológica robusta, pois permite isolar o efeito de cada decisão de design.

**Ação 14 — Comparar com linha de base (baseline)**
Implementar ao menos uma linha de base comparativa: um sistema de busca lexical (BM25) ou um LLM sem RAG respondendo às mesmas 100+ perguntas, avaliado com a mesma rubrica. A ausência de baseline impede qualquer afirmação sobre o valor agregado da abordagem RAG em relação a alternativas mais simples.

**Ação 15 — Documentar o protocolo de anotação humana**
Para a revisão manual amostral, formalizar o protocolo de anotação: número de anotadores, critérios de julgamento, tratamento de discordâncias e cálculo de concordância inter-anotadores (recomenda-se Krippendorff's alpha ou Cohen's kappa). Isso transforma a "revisão humana amostral" em evidência metodologicamente defensável.

---

## V. APRESENTAÇÃO E ANÁLISE DOS RESULTADOS

**Ação 16 — Reportar intervalos de confiança e variância entre rodadas**
Além das médias (9,15; 9,55; 9,35), calcular e reportar desvio padrão, intervalo de confiança (95%) e coeficiente de variação para cada rodada e por categoria de pergunta. Com apenas três rodadas, os intervalos serão amplos — o que deve ser reconhecido —, mas a presença desses indicadores demonstra maturidade estatística.

**Ação 17 — Apresentar análise por categoria de pergunta com visualização**
Criar um gráfico de radar ou heatmap mostrando o desempenho médio por categoria de pergunta nas três rodadas. Isso torna visível o padrão de pontos fortes e fragilidades do sistema, transformando os dados existentes em evidência analítica mais rica sem exigir novos experimentos.

**Ação 18 — Analisar os casos de divergência LLM juiz vs. avaliador humano**
A divergência detectada na pergunta de checagem de alucinação é o achado mais relevante e mais subexplorado do artigo. Dedicar uma subseção à análise qualitativa aprofundada desse caso — e de outros casos discordantes, se existirem —, discutindo o que o erro do LLM juiz revela sobre os limites da estratégia de avaliação automatizada. Esse seria o ponto de maior contribuição teórica do artigo.

---

## VI. DISCUSSÃO

**Ação 19 — Estruturar a discussão em torno de proposições respondidas**
Reorganizar a discussão para que cada proposição de pesquisa formulada (ver Ação 10) seja explicitamente respondida com base nos dados, antes de ser confrontada com a literatura. Isso confere à discussão estrutura argumentativa mais robusta e facilita a avaliação pelo revisor.

**Ação 20 — Aprofundar as implicações para governança de IA no setor público**
A seção 5.5 trata o impacto institucional de forma ainda genérica. Expandir essa discussão para abordar questões concretas de implementação: quem seria o responsável pela curadoria da base documental? Como tratar discursos removidos ou retificados? Qual o regime de atualização do corpus? Quais os riscos de uso indevido das respostas geradas? Essa dimensão conecta o trabalho ao debate sobre IA responsável em contextos públicos.

**Ação 21 — Incluir discussão sobre os limites da generalização**
Mesmo que a seção 5.4 trate do potencial de generalização, é necessário incluir uma discussão equivalente sobre os fatores que limitam a transferência do protocolo para outros contextos: idioma, estrutura documental, políticas de dados abertos, restrições de infraestrutura e diferenças institucionais entre parlamentos.

---

## VII. CONCLUSÃO

**Ação 22 — Separar contribuições por nível de consolidação**
Distinguir explicitamente, na conclusão, entre o que o trabalho demonstrou de forma robusta, o que indicou de forma preliminar e o que permanece em aberto. Essa graduação epistêmica fortalece a credibilidade científica do texto e é valorizada por revisores experientes.

**Ação 23 — Priorizar e hierarquizar os trabalhos futuros**
Em vez de listar direções futuras em sequência linear, organizar as recomendações em três horizontes temporais: curto prazo (ampliação da bateria, baseline, ablação), médio prazo (validação humana independente, integração de filtros por metadado) e longo prazo (geração assistida de minutas, extensão a outros tipos documentais). Isso transforma a seção em uma agenda de pesquisa estruturada.

---

## VIII. REDAÇÃO E FORMA

**Ação 24 — Adaptar integralmente ao guia de autores da revista-alvo**
Antes de qualquer submissão, mapear rigorosamente: limite de palavras, estrutura de seções exigida, estilo de citação (ABNT, APA, Chicago, Vancouver), formato do resumo (estruturado ou corrido), número máximo de figuras e tabelas, e exigências sobre dados suplementares.

**Ação 25 — Reescrever o resumo em formato estruturado**
Reescrever o abstract com as seguintes divisões explícitas ou implícitas: contexto e problema (1–2 frases), lacuna de pesquisa (1 frase), objetivo (1 frase), método (2–3 frases), principais resultados com valores numéricos (2 frases), contribuição e limitação central (1–2 frases). O resumo atual é bom, mas pode ser mais preciso e informativo.

**Ação 26 — Revisar o texto com foco em afirmações que excedem os dados**
Percorrer o artigo identificando cada afirmação de alcance amplo e verificar se ela é suportada pelos dados apresentados ou se constitui extrapolação. Marcar e reformular as extrapolações, substituindo-as por afirmações condicionais explícitas ("os resultados sugerem que…", "no escopo deste experimento…").

---

## IX. INTEGRIDADE CIENTÍFICA

**Ação 27 — Adicionar declaração formal de conflitos de interesse**
Inserir seção padronizada declarando ausência de conflito de interesses e, se aplicável, identificando a fonte de financiamento (bolsa, programa institucional, recursos próprios). Essa seção é obrigatória na grande maioria dos periódicos indexados.

**Ação 28 — Submeter o manuscrito a verificação de similaridade**
Processar o texto em plataforma como iThenticate ou Turnitin antes da submissão e incluir o índice resultante nas informações ao editor, quando solicitado. Relatórios de similaridade dentro dos limites da revista (geralmente abaixo de 15–20% excluindo referências) fortalecem a credibilidade da submissão.

**Ação 29 — Adicionar declaração sobre uso de IA generativa na redação**
Caso ferramentas de IA tenham sido utilizadas na redação ou revisão do texto, declarar esse uso de forma transparente conforme as políticas editoriais mais recentes. Muitas revistas de prestígio já exigem essa declaração explicitamente.

**Ação 30 — Registrar o protocolo de pesquisa em repositório aberto**
Depositar o protocolo de avaliação (rubrica, conjunto de perguntas, parâmetros do pipeline) em repositório como OSF (Open Science Framework) antes da submissão, obtendo um DOI permanente. Isso reforça a rastreabilidade e sinaliza comprometimento com a ciência aberta.

---

## X. POSICIONAMENTO ESTRATÉGICO

**Ação 31 — Definir a revista-alvo antes de qualquer revisão adicional**
Cada revista de prestígio tem perfil, vocabulário e expectativas distintas. As revisões acima devem ser priorizadas e adaptadas conforme o alvo. Três perfis possíveis para este trabalho:

- **Government Information Quarterly** (Elsevier, A1): priorizar impacto institucional, governança de IA e implicações para administração pública digital;
- **Information Processing & Management** (Elsevier, A1): priorizar a avaliação do sistema de recuperação, métricas de IR e comparação com baselines;
- **Journal of Information Science** (Sage, A2): priorizar organização do conhecimento, mediação documental e acesso à informação parlamentar.

**Ação 32 — Redigir uma carta de apresentação (cover letter) estratégica**
A cover letter deve: identificar explicitamente a lacuna preenchida, declarar que o trabalho não está em avaliação simultânea em outro periódico, destacar os elementos de ciência aberta (repositório, dataset público, artefatos), e indicar por que o artigo é especialmente adequado para o escopo daquela revista. Uma cover letter bem redigida reduz significativamente a taxa de rejeição desk.

**Ação 33 — Sugerir revisores especializados**
Identificar de três a cinco pesquisadores internacionais com publicações recentes na interseção entre RAG, sistemas de informação parlamentar e IA no setor público, e sugeri-los como revisores na submissão. Isso é permitido pela maioria dos periódicos e aumenta a probabilidade de uma avaliação tecnicamente qualificada.

---

## SÍNTESE EXECUTIVA DAS PRIORIDADES

Para orientar a ordem de execução das ações acima, as intervenções podem ser organizadas por impacto e esforço:

**Impacto crítico / esforço alto — inegociáveis para revistas A1**
Ações 11, 12, 13, 14 — ampliar avaliação, incluir baseline e ablação.

**Impacto crítico / esforço médio — necessárias para qualquer submissão séria**
Ações 8, 9, 10, 15, 18, 27, 30 — enquadramento metodológico, proposições, protocolo de anotação, declarações formais.

**Impacto alto / esforço baixo — ganhos rápidos e significativos**
Ações 3, 16, 17, 25, 31, 32 — tabela comparativa, estatísticas descritivas, gráfico de desempenho, reescrita do abstract, definição da revista-alvo.

**Impacto moderado / esforço médio — refinamentos que elevam o nível geral**
Ações 4, 5, 6, 7, 19, 20, 22, 23, 26 — literatura complementar, discussão aprofundada, conclusão hierarquizada.
