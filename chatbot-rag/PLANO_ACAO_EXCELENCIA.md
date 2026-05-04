# Plano de Ações para Excelência em Todas as Dimensões Avaliativas

---

## Status operacional

O backlog editorial deste artigo foi migrado para GitHub Issues em 2026-04-30.
Este arquivo permanece como registro histórico e mapa estratégico consolidado, mas as tarefas operacionais devem ser acompanhadas nas issues.

### Backlog editorial no GitHub

- [#2](https://github.com/fabriciosantana/latex/issues/2) — Definir revista-alvo e estratégia editorial.
- [#3](https://github.com/fabriciosantana/latex/issues/3) — Criar tabela comparativa de trabalhos relacionados.
- [#4](https://github.com/fabriciosantana/latex/issues/4) — Explicitar enquadramento DSR, objetivos verificáveis e proposições.
- [#5](https://github.com/fabriciosantana/latex/issues/5) — Ampliar e qualificar revisão de literatura.
- [#6](https://github.com/fabriciosantana/latex/issues/6) — Fortalecer avaliação empírica: recuperação, bateria, baseline e ablação.
- [#7](https://github.com/fabriciosantana/latex/issues/7) — Reportar estatísticas, visualizações e divergências de avaliação.
- [#8](https://github.com/fabriciosantana/latex/issues/8) — Aprofundar discussão, governança e limites de generalização.
- [#9](https://github.com/fabriciosantana/latex/issues/9) — Adequar redação, resumo e forma à revista-alvo.
- [#10](https://github.com/fabriciosantana/latex/issues/10) — Inserir declarações de integridade científica e ciência aberta.
- [#11](https://github.com/fabriciosantana/latex/issues/11) — Preparar cover letter e sugestões de revisores.

Ao retomar o trabalho, usar as issues como fonte operacional de verdade. Atualizar este arquivo apenas quando houver mudança estratégica relevante, consolidação do mapa editorial ou decisão de arquivamento.

## I. ORIGINALIDADE E CONTRIBUIÇÃO CIENTÍFICA

- `[ ]` **Ação 1 — Reposicionar a contribuição com precisão cirúrgica**
Redigir um parágrafo dedicado, na introdução e na conclusão, que articule em que medida o trabalho avança além da mera aplicação de RAG: o protocolo reprodutível para acervos legislativos em português é, em si, uma contribuição metodológica transferível. Nomear isso explicitamente como *design artifact* no sentido da *Design Science Research*.

- `[~]` **Ação 2 — Realizar busca sistemática de trabalhos concorrentes**
Conduzir uma revisão sistemática em bases como ACL Anthology, IEEE Xplore e Scopus com os termos "RAG + parliament", "legislative chatbot", "retrieval-augmented + congressional discourse" para garantir que nenhum trabalho diretamente concorrente foi omitido. Documentar os resultados da busca em apêndice metodológico.

  Nota de progresso:
  - Decisão: iniciar a incorporação controlada das referências mais pertinentes identificadas na triagem.
  - Arquivos alterados: `chatbot-rag.bib`.
  - Referências incorporadas: Lewis et al. (2020), Rogiers et al. (2024), Colombo (2024), Hevner et al. (2004) e Peffers et al. (2007).
  - Pendências: decidir em quais seções cada referência será citada e selecionar quais entradas irão para a tabela comparativa da Ação 3.

  Nota de busca ampla adicional:
  - Decisão: antes de fechar a Ação 2, foi realizada busca complementar por trabalhos acadêmicos ou técnico-institucionais fortemente relacionados ainda ausentes das referências.
  - Referências de alta pertinência incorporadas ao `chatbot-rag.bib`: Chouhan e Gertz (2024), `LexDrafter`, por aplicar RAG à redação terminológica de documentos legislativos da União Europeia; Mosbach et al. (2025), `Parliamentary debates in The World Avatar`, por propor RAG híbrido com grafo de conhecimento para debates do Bundestag; Garrison et al. (2024), `Talk to the NDAA`, por avaliar RAG em legislação congressional dos EUA; Colombo et al. (2025), `LegisSearch`, por avaliar busca legislativa italiana com grafo, LLM, baseline BM25/TF-IDF e ablação; Akbar et al. (2025), sobre RAG para lacunas legais em cibersegurança de transportes, por usar corpus legislativo e métricas comparativas.
  - Referências de pertinência média/adjacente incorporadas ao `chatbot-rag.bib`: Pipitone e Alami (2024), `LegalBench-RAG`, por avaliar recuperação em RAG jurídico; Dahl et al. (2024), `Large Legal Fictions`, por fundamentar riscos de alucinação e limites de LLMs no domínio jurídico.
  - Decisão de triagem: não incorporar agora Citino (2024/2025), Gesnouin et al. (2024), Papantoniou et al. (2024/2025), Kring, Stürmer e Schwanholz (2025) e POPVOX Foundation (2026), pois são úteis para contextualização ou discussão institucional, mas menos centrais para sustentar a originalidade do artigo neste momento.
  - Decisão de redistribuição: mover de Jong et al. (2024), Çöltekin et al. (2024) e Kuzman Pungeršek et al. (2026) para a Ação 6, pois são mais adequados à discussão sobre corpora parlamentares multilíngues e benchmarks computacionais do que à comparação direta de sistemas RAG legislativos.
  - Pendências da Ação 2: selecionar quais das novas entradas irão para a tabela comparativa da Ação 3 e quais entrarão apenas na revisão de literatura; registrar a estratégia de busca em apêndice metodológico quando o manuscrito for revisado.

  Referências sugeridas ainda não incorporadas ao `chatbot-rag.bib`:
  - `[ ]` Citino (2024/2025), sobre IA generativa no processo legislativo italiano. Decisão atual: não incorporar agora; reavaliar apenas se a discussão institucional sobre processo legislativo italiano ganhar centralidade.
  - `[ ]` Gesnouin et al. (2024), `LLaMandement`. Decisão atual: não incorporar agora; reavaliar apenas se a seção de trabalhos relacionados passar a cobrir sumarização legislativa como tarefa adjacente.
  - `[ ]` Papantoniou et al. (2024/2025), dataset de decisões governamentais gregas com pipeline RAG. Decisão atual: não incorporar agora; verificar status editorial antes de eventual uso.
  - `[ ]` Kring, Stürmer e Schwanholz (2025), `AskThePublic`. Decisão atual: não incorporar agora; reavaliar apenas para discussão de DSR e participação política digital.
  - `[ ]` POPVOX Foundation (2026), texto institucional sobre RAG em casos legislativos. Decisão atual: não incorporar agora; fonte não acadêmica, usar no máximo como contextualização institucional.

- `[ ]` **Ação 3 — Explicitar o diferencial frente aos trabalhos mais próximos**
Criar uma tabela comparativa posicionando o artigo frente aos cinco ou seis trabalhos mais similares identificados na revisão (Khaliq et al., 2024; Martellote Viola et al., 2025; Blanco, 2025, 2026; Matoshi et al., 2025; Sarnikar, 2025), com colunas para corpus, língua, pipeline, avaliação e disponibilidade pública dos artefatos. Isso torna a originalidade visível e verificável.

---

## II. FUNDAMENTAÇÃO TEÓRICA E REVISÃO DE LITERATURA

- `[ ]` **Ação 4 — Verificar e declarar o status editorial de cada referência arXiv**
Para cada citação de pré-print (Gao et al., 2023; Gupta et al., 2024; Maharjan & Yadav, 2026; Bhat et al., 2025, entre outros), verificar se houve publicação em venue revisado por pares. Atualizar as entradas bibliográficas correspondentes e adicionar nota metodológica sobre o tratamento de pré-prints adotado no trabalho.

- `[ ]` **Ação 5 — Ampliar a cobertura sobre avaliação de RAG**
Incluir literatura adicional sobre frameworks de avaliação de RAG além do RAGAS e do ARES, como TruLens, RAGChecker e benchmarks como RGB e RECALL, discutindo por que a rubrica própria foi preferida e quais suas vantagens e limitações frente a esses frameworks consolidados.

- `[ ]` **Ação 6 — Reforçar a fundamentação sobre corpora parlamentares multilíngues**
Incorporar literatura do campo ParlaCLARIN e de projetos como o ParlSpeech e o CorDis, que tratam especificamente de corpora de discursos parlamentares em perspectiva computacional, fortalecendo o diálogo entre o domínio técnico e o domínio legislativo com maior profundidade comparativa.

  Referências deslocadas da triagem da Ação 2 para avaliação nesta ação:
  - `[ ]` de Jong et al. (2024), `ParlaMint Ngram Viewer`, por tratar de busca diacrônica multilíngue em corpora de 26 parlamentos.
  - `[ ]` Çöltekin et al. (2024), dataset multilíngue para identificação de poder e ideologia no Parlamento, por funcionar como referência de benchmark parlamentar computacional.
  - `[ ]` Kuzman Pungeršek et al. (2026), `ParlaCAP`, por usar LLMs em corpus parlamentar multilíngue.

- `[ ]` **Ação 6.1 — Revisar novas referências sobre RAG legislativo**
Ler e sintetizar criticamente as referências recém-incluídas no `chatbot-rag.bib` sobre RAG, LLMs e recuperação em contextos parlamentares/legislativos/jurídicos: Matoshi et al. (2025), Sarnikar (2025), Rogiers et al. (2024), Chouhan e Gertz (2024), Garrison et al. (2024), Mosbach et al. (2025), Colombo (2024), Colombo et al. (2025), Akbar et al. (2025), Pipitone e Alami (2024) e Dahl et al. (2024). Avaliar se elas devem entrar na fundamentação teórica, na tabela comparativa de originalidade, na discussão de trabalhos relacionados ou apenas como reforço bibliográfico. Registrar, para cada uma, corpus analisado, país/instituição, desenho do pipeline, tipo de avaliação, limitações e diferença em relação ao presente artigo.

- `[ ]` **Ação 7 — Adicionar discussão sobre limitações epistemológicas do LLM como juiz**
Expandir a fundamentação teórica sobre a estratégia de *LLM as a Judge* para incluir seus vieses documentados na literatura: viés de posição, viés de verbosidade, viés de auto-preferência e sensibilidade à formulação da rubrica. Isso transformaria a discussão de um alerta metodológico em contribuição teórica ao debate.

---

## III. PROBLEMA, HIPÓTESES E OBJETIVOS

- `[ ]` **Ação 8 — Declarar o enquadramento epistemológico e metodológico do trabalho**
Adicionar uma subseção (sugerida entre a justificativa e a fundamentação teórica) declarando explicitamente que o trabalho se enquadra na *Design Science Research* (Hevner et al., 2004; Peffers et al., 2007), com seus seis passos canônicos mapeados para as seções do artigo. Isso responde a uma das exigências mais frequentes de revisores em revistas de sistemas de informação e administração pública digital.

- `[ ]` **Ação 9 — Reformular os objetivos específicos com indicadores de verificação**
Para cada um dos quatro objetivos específicos, acrescentar um critério mensurável de êxito. Por exemplo: o objetivo de "avaliar empiricamente a qualidade" deve especificar qual patamar de desempenho na rubrica seria considerado suficiente para validar a viabilidade da prova de conceito, transformando-o em proposição verificável.

- `[ ]` **Ação 10 — Formular proposições de pesquisa em substituição a hipóteses**
Como o trabalho é de natureza construtiva e não experimental no sentido estrito, substituir a ausência de hipóteses por proposições de pesquisa formais — estrutura comum em *Design Science Research* — do tipo: *"P1: Um pipeline RAG com enriquecimento de chunks por metadados legislativos produz respostas com maior rastreabilidade do que sistemas RAG sem esse enriquecimento."* Isso oferece ao revisor um alvo avaliativo claro.

---

## IV. METODOLOGIA

- `[ ]` **Ação 11 — Incluir métricas de avaliação da recuperação independentes da geração**
Implementar avaliação separada da etapa de *retrieval* com métricas padrão da literatura: Precision@k, Recall@k, MRR (Mean Reciprocal Rank) e NDCG. Para isso, construir um conjunto de pares pergunta–documento-ouro (gold standard) com pelo menos 50 itens, com anotação humana indicando quais chunks deveriam ser recuperados para cada pergunta. Essa é a lacuna metodológica mais crítica do artigo.

- `[ ]` **Ação 12 — Ampliar a bateria de avaliação para pelo menos 100 perguntas**
Expandir de 20 para no mínimo 100 perguntas, distribuídas de forma equilibrada entre todas as categorias definidas (factual, proposta, foco no autor, desambiguação, evidência negativa, controle de escopo, precisão numérica, multietapas, autoria cruzada, síntese). Com esse volume, torna-se possível calcular desempenho médio por categoria com margem de erro aceitável e realizar testes estatísticos de comparação.

- `[ ]` **Ação 13 — Realizar experimento de ablação**
Testar sistematicamente o impacto de variações controladas no pipeline: com e sem metadados nos chunks, com diferentes tamanhos de chunk (ex: 400, 600, 850 palavras), com e sem reranqueamento, e com diferentes modelos de embedding. Um experimento de ablação transforma a prova de conceito em contribuição metodológica robusta, pois permite isolar o efeito de cada decisão de design.

- `[ ]` **Ação 14 — Comparar com linha de base (baseline)**
Implementar ao menos uma linha de base comparativa: um sistema de busca lexical (BM25) ou um LLM sem RAG respondendo às mesmas 100+ perguntas, avaliado com a mesma rubrica. A ausência de baseline impede qualquer afirmação sobre o valor agregado da abordagem RAG em relação a alternativas mais simples.

- `[ ]` **Ação 15 — Documentar o protocolo de anotação humana**
Para a revisão manual amostral, formalizar o protocolo de anotação: número de anotadores, critérios de julgamento, tratamento de discordâncias e cálculo de concordância inter-anotadores (recomenda-se Krippendorff's alpha ou Cohen's kappa). Isso transforma a "revisão humana amostral" em evidência metodologicamente defensável.

---

## V. APRESENTAÇÃO E ANÁLISE DOS RESULTADOS

- `[ ]` **Ação 16 — Reportar intervalos de confiança e variância entre rodadas**
Além das médias (9,15; 9,55; 9,35), calcular e reportar desvio padrão, intervalo de confiança (95%) e coeficiente de variação para cada rodada e por categoria de pergunta. Com apenas três rodadas, os intervalos serão amplos — o que deve ser reconhecido —, mas a presença desses indicadores demonstra maturidade estatística.

- `[ ]` **Ação 17 — Apresentar análise por categoria de pergunta com visualização**
Criar um gráfico de radar ou heatmap mostrando o desempenho médio por categoria de pergunta nas três rodadas. Isso torna visível o padrão de pontos fortes e fragilidades do sistema, transformando os dados existentes em evidência analítica mais rica sem exigir novos experimentos.

- `[ ]` **Ação 18 — Analisar os casos de divergência LLM juiz vs. avaliador humano**
A divergência detectada na pergunta de checagem de alucinação é o achado mais relevante e mais subexplorado do artigo. Dedicar uma subseção à análise qualitativa aprofundada desse caso — e de outros casos discordantes, se existirem —, discutindo o que o erro do LLM juiz revela sobre os limites da estratégia de avaliação automatizada. Esse seria o ponto de maior contribuição teórica do artigo.

---

## VI. DISCUSSÃO

- `[ ]` **Ação 19 — Estruturar a discussão em torno de proposições respondidas**
Reorganizar a discussão para que cada proposição de pesquisa formulada (ver Ação 10) seja explicitamente respondida com base nos dados, antes de ser confrontada com a literatura. Isso confere à discussão estrutura argumentativa mais robusta e facilita a avaliação pelo revisor.

- `[ ]` **Ação 20 — Aprofundar as implicações para governança de IA no setor público**
A seção 5.5 trata o impacto institucional de forma ainda genérica. Expandir essa discussão para abordar questões concretas de implementação: quem seria o responsável pela curadoria da base documental? Como tratar discursos removidos ou retificados? Qual o regime de atualização do corpus? Quais os riscos de uso indevido das respostas geradas? Essa dimensão conecta o trabalho ao debate sobre IA responsável em contextos públicos.

- `[ ]` **Ação 21 — Incluir discussão sobre os limites da generalização**
Mesmo que a seção 5.4 trate do potencial de generalização, é necessário incluir uma discussão equivalente sobre os fatores que limitam a transferência do protocolo para outros contextos: idioma, estrutura documental, políticas de dados abertos, restrições de infraestrutura e diferenças institucionais entre parlamentos.

---

## VII. CONCLUSÃO

- `[ ]` **Ação 22 — Separar contribuições por nível de consolidação**
Distinguir explicitamente, na conclusão, entre o que o trabalho demonstrou de forma robusta, o que indicou de forma preliminar e o que permanece em aberto. Essa graduação epistêmica fortalece a credibilidade científica do texto e é valorizada por revisores experientes.

- `[ ]` **Ação 23 — Priorizar e hierarquizar os trabalhos futuros**
Em vez de listar direções futuras em sequência linear, organizar as recomendações em três horizontes temporais: curto prazo (ampliação da bateria, baseline, ablação), médio prazo (validação humana independente, integração de filtros por metadado) e longo prazo (geração assistida de minutas, extensão a outros tipos documentais). Isso transforma a seção em uma agenda de pesquisa estruturada.

---

## VIII. REDAÇÃO E FORMA

- `[ ]` **Ação 24 — Adaptar integralmente ao guia de autores da revista-alvo**
Antes de qualquer submissão, mapear rigorosamente: limite de palavras, estrutura de seções exigida, estilo de citação (ABNT, APA, Chicago, Vancouver), formato do resumo (estruturado ou corrido), número máximo de figuras e tabelas, e exigências sobre dados suplementares.

- `[ ]` **Ação 25 — Reescrever o resumo em formato estruturado**
Reescrever o abstract com as seguintes divisões explícitas ou implícitas: contexto e problema (1–2 frases), lacuna de pesquisa (1 frase), objetivo (1 frase), método (2–3 frases), principais resultados com valores numéricos (2 frases), contribuição e limitação central (1–2 frases). O resumo atual é bom, mas pode ser mais preciso e informativo.

- `[ ]` **Ação 26 — Revisar o texto com foco em afirmações que excedem os dados**
Percorrer o artigo identificando cada afirmação de alcance amplo e verificar se ela é suportada pelos dados apresentados ou se constitui extrapolação. Marcar e reformular as extrapolações, substituindo-as por afirmações condicionais explícitas ("os resultados sugerem que…", "no escopo deste experimento…").

---

## IX. INTEGRIDADE CIENTÍFICA

- `[ ]` **Ação 27 — Adicionar declaração formal de conflitos de interesse**
Inserir seção padronizada declarando ausência de conflito de interesses e, se aplicável, identificando a fonte de financiamento (bolsa, programa institucional, recursos próprios). Essa seção é obrigatória na grande maioria dos periódicos indexados.

- `[ ]` **Ação 28 — Submeter o manuscrito a verificação de similaridade**
Processar o texto em plataforma como iThenticate ou Turnitin antes da submissão e incluir o índice resultante nas informações ao editor, quando solicitado. Relatórios de similaridade dentro dos limites da revista (geralmente abaixo de 15–20% excluindo referências) fortalecem a credibilidade da submissão.

- `[ ]` **Ação 29 — Adicionar declaração sobre uso de IA generativa na redação**
Caso ferramentas de IA tenham sido utilizadas na redação ou revisão do texto, declarar esse uso de forma transparente conforme as políticas editoriais mais recentes. Muitas revistas de prestígio já exigem essa declaração explicitamente.

- `[ ]` **Ação 30 — Registrar o protocolo de pesquisa em repositório aberto**
Depositar o protocolo de avaliação (rubrica, conjunto de perguntas, parâmetros do pipeline) em repositório como OSF (Open Science Framework) antes da submissão, obtendo um DOI permanente. Isso reforça a rastreabilidade e sinaliza comprometimento com a ciência aberta.

---

## X. POSICIONAMENTO ESTRATÉGICO

- `[ ]` **Ação 31 — Definir a revista-alvo antes de qualquer revisão adicional**
Cada revista de prestígio tem perfil, vocabulário e expectativas distintas. As revisões acima devem ser priorizadas e adaptadas conforme o alvo. Três perfis possíveis para este trabalho:

- **Government Information Quarterly** (Elsevier, A1): priorizar impacto institucional, governança de IA e implicações para administração pública digital;
- **Information Processing & Management** (Elsevier, A1): priorizar a avaliação do sistema de recuperação, métricas de IR e comparação com baselines;
- **Journal of Information Science** (Sage, A2): priorizar organização do conhecimento, mediação documental e acesso à informação parlamentar.

- `[ ]` **Ação 32 — Redigir uma carta de apresentação (cover letter) estratégica**
A cover letter deve: identificar explicitamente a lacuna preenchida, declarar que o trabalho não está em avaliação simultânea em outro periódico, destacar os elementos de ciência aberta (repositório, dataset público, artefatos), e indicar por que o artigo é especialmente adequado para o escopo daquela revista. Uma cover letter bem redigida reduz significativamente a taxa de rejeição desk.

- `[ ]` **Ação 33 — Sugerir revisores especializados**
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

---

## INSTRUÇÕES PARA RETOMADA EM SESSÃO FUTURA

Esta seção deve ser lida no início de qualquer nova sessão/conversa antes de executar as ações deste plano. Ela serve para reconstruir rapidamente o contexto de trabalho e atualizar a memória operacional do agente.

### 1. Arquivos de contexto obrigatório

Antes de propor ou executar mudanças, ler nesta ordem:

1. `chatbot-rag/NOTAS_REVISAO.md` — histórico de revisão já concluído, estado do PDF e pendências operacionais.
2. `chatbot-rag/PLANO_ACAO_EXCELENCIA.md` — este plano estratégico e seus marcadores de progresso.
3. `chatbot-rag/main.tex` — estrutura atual do artigo e seções incluídas.
4. `chatbot-rag/sections/01-resumo.tex`, `sections/02-introducao.tex`, `sections/03-fundamentacao.tex`, `sections/05-proposta.tex`, `sections/06-experimentos.tex` e `sections/07-conclusao.tex` — seções mais afetadas pelas ações estratégicas.
5. `chatbot-rag/chatbot-rag.bib` — referências existentes antes de sugerir novas citações.

### 2. Estado atual presumido

- O manuscrito já está em versão fechada para entrega acadêmica de curto prazo.
- O PDF final atual está em `chatbot-rag/out/main.pdf`.
- A revisão visual final já foi feita; a Tabela 1 foi ajustada para não quebrar entre páginas.
- O plano deste arquivo não é uma lista de correções urgentes para a entrega atual, mas uma agenda de evolução para submissão forte em periódico.
- Todas as ações estão inicialmente marcadas como `[ ]` até que sejam efetivamente executadas, verificadas e documentadas.

### 3. Como atualizar os marcadores

Usar a mesma legenda adotada em `NOTAS_REVISAO.md`:

- `[ ]` pendente
- `[~]` em andamento
- `[x]` concluído

Ao iniciar uma ação, marcar como `[~]`. Ao concluí-la, marcar como `[x]` e acrescentar, logo abaixo da ação, uma nota curta contendo:

- o que foi alterado;
- quais arquivos foram modificados;
- como a alteração foi verificada;
- se restaram limitações ou próximos passos.

Não marcar uma ação como concluída apenas por ter sido discutida. A conclusão exige mudança implementada, evidência produzida ou decisão registrada.

### 4. Ordem recomendada de execução

Se o usuário pedir para "continuar o plano" sem indicar uma ação específica, seguir esta ordem:

1. **Ação 31** — definir revista-alvo, pois ela orienta vocabulário, escopo, formato e profundidade das demais revisões.
2. **Ação 3** — criar tabela comparativa de contribuição, por ser ganho alto e relativamente rápido.
3. **Ações 8, 9 e 10** — explicitar *Design Science Research*, critérios verificáveis e proposições.
4. **Ações 16 e 17** — extrair estatísticas e visualização dos dados já existentes, sem exigir novo experimento.
5. **Ação 18** — aprofundar a divergência entre LLM juiz e avaliação humana.
6. **Ações 27 e 29** — inserir declarações formais de integridade científica.
7. Só depois avançar para **Ações 11 a 14**, pois exigem nova coleta, anotação, baseline, ablação e maior esforço experimental.

### 5. Cuidados antes de editar o artigo

- Não reabrir mudanças amplas no texto sem definir se o objetivo é entrega acadêmica atual ou submissão a periódico.
- Preservar o enquadramento atual como prova de conceito reprodutível, evitando transformar resultados preliminares em afirmações de validade ampla.
- Antes de adicionar novas referências, verificar se já existe entrada equivalente em `chatbot-rag.bib`.
- Para informações recentes, status editorial de preprints, políticas de revista e guias de autores, pesquisar fontes atualizadas e priorizar páginas oficiais das revistas, bases acadêmicas ou páginas dos próprios artigos.
- Após qualquer edição LaTeX, recompilar com `latexmk -pdf main.tex` a partir de `chatbot-rag/` e verificar o log.

### 6. Como registrar decisões

Ao final de cada bloco de trabalho, atualizar este arquivo e, se a mudança afetar o estado geral do manuscrito, também atualizar `NOTAS_REVISAO.md`.

Registrar decisões no formato:

```md
  Nota de progresso:
  - Decisão: ...
  - Arquivos alterados: ...
  - Verificação: ...
  - Pendências: ...
```

### 7. Primeira pergunta a fazer se houver ambiguidade

Se o usuário pedir retomada sem indicar destino editorial, perguntar de forma direta:

> A prioridade agora é fechar a versão de entrega acadêmica ou preparar uma versão para submissão a periódico? Se for periódico, qual revista-alvo devemos assumir?
