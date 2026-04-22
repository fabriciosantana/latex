# Notas de revisao do artigo

Este arquivo registra, de forma persistente no projeto, as principais sugestoes de melhoria para o artigo em `chatbot-rag/main.tex` e serve como quadro de acompanhamento do progresso.

Legenda de status:
- `[x]` concluido
- `[~]` em andamento
- `[ ]` pendente

## Diagnostico geral

O manuscrito esta bem estruturado, bem escrito em tom academico e com boa aderencia ao problema proposto. O principal merito e tratar o sistema RAG como solucao sociotecnica e nao apenas como integracao superficial entre LLM e banco vetorial. A secao de experimentos amadureceu bastante: hoje o trabalho ja oferece base integra e rastreavel, estudos de caso qualitativos, tres rodadas automatizadas recentes com rubrica, discussao de estabilidade, analise manual amostral, ameaças a validade e documentacao do prompt operacional do fluxo RAG. As pendencias remanescentes sao de refinamento de apresentacao e consistencia final entre secoes, nao mais de ausencia de evidencia.

## Progresso ja concluido

- `[x]` Reorganizar o artigo em arquivos separados por secao.
- `[x]` Numerar os arquivos de secao para facilitar navegacao.
- `[x]` Ajustar o build do VS Code para sempre compilar o projeto correto.
- `[x]` Organizar o arquivo `chatbot-rag.bib`.
- `[x]` Verificar cobertura entre referencias do texto e entradas do `.bib`.
- `[x]` Converter o artigo para bibliografia automatica.
- `[x]` Ajustar o estilo bibliografico para ABNT com `biblatex-abnt`.
- `[x]` Realizar revisao visual inicial do resultado bibliografico.
- `[x]` Alinhar `sections/06-experimentos.tex` as rodadas automatizadas recentes executadas apos a adaptacao do fluxo experimental.
- `[x]` Atualizar o `Apêndice A` para sintetizar as tres rodadas principais e apresentar as notas por pergunta em cada rodada.
- `[x]` Manter no `Apêndice C` apenas o prompt operacional do fluxo RAG configurado no Open WebUI.
- `[x]` Revisar `sections/01-resumo.tex`, `sections/05-proposta.tex` e `sections/07-conclusao.tex` para alinhar a narrativa geral a demonstracao empirica atual.
- `[x]` Incluir quadro curto em `sections/06-experimentos.tex` conectando objetivos avaliados, evidencias empiricas e interpretacao dos resultados.
- `[x]` Explicitar o tipo de contribuicao como prova de conceito reprodutivel, e nao como benchmark definitivo.
- `[x]` Incluir discussao curta de ameacas a validade em `sections/06-experimentos.tex`.
- `[x]` Reforcar a criticidade da fundamentacao teorica sobre RAG, chunking e avaliacao por LLM juiz.
- `[x]` Realizar curadoria academica das referencias, substituindo citacoes centrais apoiadas em blogs ou textos de pratica profissional por literatura academica, proceedings, surveys e relatorios institucionais fortes.
- `[x]` Incorporar Textos para Discussao recentes da Consultoria Legislativa do Senado sobre discursos em Plenario como fontes institucionais de dominio, reforcando a relevancia empirica do corpus parlamentar brasileiro.
- `[x]` Revisar a coerencia final entre resumo, introducao, objetivos, experimentos e conclusao para manter a contribuicao como prova de conceito reprodutivel, sem sugerir benchmark definitivo ou prontidao operacional ampla.
- `[x]` Verificar notas de rodape com artefatos experimentais e links externos centrais, confirmando que os enderecos publicos retornam com sucesso.
- `[x]` Incluir discussao breve de generalizacao, distinguindo elementos especificos dos discursos do Senado de componentes reaproveitaveis do pipeline em outros acervos legislativos.
- `[x]` Reforcar o contraste em trabalhos relacionados: literatura de discurso parlamentar analisa o corpus, literatura de RAG fornece a base tecnica, e este artigo conecta ambas por meio de uma prova de conceito avaliada.

## Prioridade alta

- `[x]` Fortalecer a secao de resultados em `sections/06-experimentos.tex`.
  A secao agora incorpora evidencias observaveis de integridade da base, tres estudos de caso manuais, tres rodadas automatizadas recentes, analise de estabilidade, teste de sensibilidade com juiz alternativo e triangulacao manual amostral. A metodologia tambem foi ajustada para explicar que a automacao envia a pergunta e a colecao ao Open WebUI, enquanto a plataforma aplica o template RAG configurado e monta o contexto recuperado.

- `[x]` Transformar a avaliacao em evidencia explicita.
  Foi atualizada a tabela com 20 perguntas reais de teste no `Apêndice A`, separadas por tipo e com notas das tres rodadas principais, incluindo exemplos como:
  - factual
  - proposta
  - comparativa
  - ampla ou multifocal
  - categorias de controle, desambiguacao, multi-hop e checagem de alucinacao

- `[x]` Para cada pergunta avaliada, registrar pelo menos:
  Ja estao registrados:
  - pergunta
  - tipo da pergunta
  - notas totais nas tres rodadas principais
  - sintese dos casos de maior variacao no corpo da secao de experimentos
  Observacao:
  - qualidade da recuperacao, fidelidade ao contexto, uso de referencias e limite principal por pergunta ja foram gerados em artefato proprio do projeto experimental; no manuscrito, esses elementos aparecem de forma sintetica para evitar excesso de detalhamento.

- `[x]` Incluir 2 ou 3 exemplos completos de interacao com o sistema.
  O `Apêndice B` ja reune tres estudos de caso exemplificativos:
  - um caso forte
  - um caso de cautela
  - um caso de limite

- `[x]` Amarrar explicitamente objetivos, criterios de sucesso e resultados.
  Foi incluido quadro curto no corpo da secao de experimentos conectando objetivos avaliados, evidencias empiricas e interpretacao dos resultados.

- `[x]` Explicitar com mais precisao a configuracao experimental final.
  O manuscrito ja deixa claro:
  - qual modelo foi usado nas rodadas principais de geracao e julgamento
  - que a recuperacao e a montagem do contexto ficaram internalizadas no Open WebUI
  - que o script anexou a colecao indexada e preservou artefatos de resultado e configuracao
  - quantos trechos e quantos arquivos-fonte apareceram por resposta na rodada base recente
  - que o juiz pode ser configurado separadamente, embora o mesmo modelo tenha sido reutilizado nas rodadas principais por simplificacao

## Prioridade media

- `[x]` Corrigir uma ambiguidade na descricao da arquitetura em `sections/05-proposta.tex`.
  O texto foi ajustado para falar em cinco componentes articulados: Open WebUI, scripts Python, ChromaDB, Ollama e API da OpenAI.

- `[x]` Tornar a lacuna de pesquisa mais especifica em `sections/03-fundamentacao.tex`.
  A secao de `Sintese da revisao e lacuna de pesquisa` foi revisada para explicitar a lacuna aplicada do trabalho: ainda sao menos frequentes estudos que combinem corpus parlamentar brasileiro, discursos da 56a Legislatura, preparacao reprodutivel de base documental, preservacao de metadados legislativos, fluxo RAG operacional e avaliacao empirica das respostas geradas.

- `[x]` Reduzir formulacoes excessivamente abstratas ou repetitivas.
  Foi realizada revisao de fluidez em introducao, fundamentacao, proposta, experimentos e conclusao, substituindo repeticoes de termos como auditabilidade, rastreabilidade e governanca por formulacoes mais especificas quando apropriado.

- `[x]` Adicionar uma figura simples da arquitetura ou do pipeline.
  Foi inserida uma figura em TikZ em `sections/05-proposta.tex`, sintetizando o fluxo da prova de conceito desde o dataset legislativo, preparacao documental e ingestao ate consulta RAG e avaliacao.

- `[x]` Aumentar a criticidade da revisao de literatura.
  A fundamentacao foi reforcada para explicitar que RAG e uma estrategia parcial, nao garantia automatica de qualidade; que chunking e uma decisao empirica sensivel; e que avaliacao por LLM juiz deve ser tratada como instrumento auxiliar, sujeito a variacao conforme modelo e rubrica.

## Prioridade baixa

- `[x]` Enxugar e atualizar o resumo em relacao a ferramentas e avaliacao.
  O resumo agora explicita a demonstracao empirica com inspecao manual, tres rodadas automatizadas, rubrica, avaliacao por LLM como juiz e analise manual amostral.

- `[x]` Considerar uma secao ou paragrafo curto com ameacas a validade.
  Foi incluida subseção especifica em `sections/06-experimentos.tex`, reconhecendo limitacoes de tamanho e balanceamento da bateria, sensibilidade do LLM Judge, validacao manual amostral e dependencia da configuracao do Open WebUI.

- `[x]` Se houver espaco, incluir breve discussao sobre generalizacao.
  Por exemplo, o que do pipeline parece especifico para discursos do Senado e o que parece reutilizavel para outros acervos legislativos.

## Comentarios por secao

- `[x]` Resumo:
  Revisado para refletir a forma final da demonstracao empirica e os limites observados em consultas numericas, comparativas, multifocais e de controle de escopo.

- `[x]` Introducao:
  Boa delimitacao do problema, boa justificativa para uso de RAG e boa conexao com administracao publica.

- `[x]` Fundamentacao teorica:
  Revisada para tornar mais clara a relacao entre literatura, lacuna de pesquisa e contribuicao especifica do trabalho, incorporando tambem leitura mais critica sobre limites do RAG, escolhas de chunking e uso de LLM como juiz.

- `[x]` Proposta de solucao:
  Revisada para corrigir a descricao da arquitetura, alinhar o fluxo de consulta ao prompt operacional do Open WebUI e atualizar a descricao da avaliacao automatizada.

- `[x]` Experimentos e demonstracao:
  A secao foi reforcada com resultados manuais e automatizados datados, tipologia inspirada em benchmarks RAG recentes, tabela das tres rodadas principais no `Apêndice A`, tres estudos de caso no `Apêndice B`, documentacao do prompt operacional no `Apêndice C`, teste de sensibilidade com LLM juiz alternativo, discussao sobre divergencia entre avaliacao automatica e leitura manual amostral, e subseção de ameaças a validade.

- `[x]` Conclusao:
  Revisada para refletir as tres rodadas recentes, a triangulacao manual, a sensibilidade do LLM juiz e os trabalhos futuros mais coerentes com o estado atual do experimento.

## Referencias e padronizacao

- `[x]` Verificar a consistencia entre citacao no texto e entrada bibliografica de `International IDEA`.
  O texto agora usa bibliografia automatica, e a referencia esta normalizada no `.bib`.

- `[x]` Corrigir a data inconsistente da referencia de Khaliq et al.

- `[x]` Padronizar autores institucionais.
  O uso de autores institucionais foi verificado no `.bbl`: Inter-Parliamentary Union, United Nations e Westminster Foundation for Democracy aparecem como autores institucionais; os Textos para Discussao aparecem com autoria individual e CONLEG/Senado Federal como instituicao; International IDEA aparece como organizacao associada ao texto de Geunis.

- `[x]` Reavaliar o peso de fontes nao academicas.
  As citacoes centrais anteriormente apoiadas em blogs, textos corporativos ou materiais de pratica profissional foram substituidas por surveys, artigos de congresso, artigos em periodicos, preprints academicos e relatorios institucionais. A fundamentacao passou a se apoiar especialmente em literatura de RAG, avaliacao automatizada, segmentacao documental, governanca de IA no setor publico e diretrizes institucionais para parlamentos.

- `[x]` Incluir fontes institucionais recentes sobre discursos do Senado.
  Foram incorporados os Textos para Discussao n. 355 e n. 357, ambos da Consultoria Legislativa do Senado, para fortalecer a contextualizacao do corpus de discursos em plenario e contrastar estudos computacionais descritivos com a contribuicao aplicada deste trabalho em consulta RAG.

## Proxima acao recomendada

- `[~]` Fazer revisao visual final do PDF ja compilado, somente apos o fechamento academico do conteudo, para:
  - verificar quebras de pagina, tabelas longas, apendices, notas de rodape e referencias;
  - conferir a posicao e legibilidade da figura simples do pipeline;
  - evitar alteracoes puramente visuais antes do fechamento do conteudo academico.

## Retomada sugerida

Quando o trabalho for retomado, a sequencia mais eficiente parece ser:

1. fazer uma leitura final do PDF ja compilado, com foco em quebras, tabelas, notas de rodape, referencias e apendices;
2. conferir a legibilidade e a posicao da figura do pipeline;
3. revisar rapidamente a aparencia final dos autores institucionais e das novas referencias academicas na bibliografia;
4. recompilar o PDF e fazer revisao visual final de baixo risco.
