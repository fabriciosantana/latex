# Notas de revisao do artigo

Este arquivo registra, de forma persistente no projeto, as principais sugestoes de melhoria para o artigo em `chatbot-rag/main.tex` e serve como quadro de acompanhamento do progresso.

Legenda de status:
- `[x]` concluido
- `[~]` em andamento
- `[ ]` pendente

## Diagnostico geral

O manuscrito esta bem estruturado, bem escrito em tom academico e com boa aderencia ao problema proposto. O principal merito e tratar o sistema RAG como solucao sociotecnica e nao apenas como integracao superficial entre LLM e banco vetorial. A secao de experimentos amadureceu bastante: hoje o trabalho ja oferece base integra e rastreavel, estudos de caso qualitativos, bateria automatizada com rubrica, discussao mais cautelosa por categoria e documentacao dos prompts envolvidos. As pendencias remanescentes sao de refinamento metodologico e apresentacao, nao mais de ausencia de evidencia.

## Progresso ja concluido

- `[x]` Reorganizar o artigo em arquivos separados por secao.
- `[x]` Numerar os arquivos de secao para facilitar navegacao.
- `[x]` Ajustar o build do VS Code para sempre compilar o projeto correto.
- `[x]` Organizar o arquivo `chatbot-rag.bib`.
- `[x]` Verificar cobertura entre referencias do texto e entradas do `.bib`.
- `[x]` Converter o artigo para bibliografia automatica.
- `[x]` Ajustar o estilo bibliografico para ABNT com `biblatex-abnt`.
- `[x]` Realizar revisao visual inicial do resultado bibliografico.

## Prioridade alta

- `[~]` Fortalecer a secao de resultados em `sections/06-experimentos.tex`.
  A secao ja incorpora evidencias observaveis de integridade da base, avaliacao manual e rodada automatizada com rubrica, alem de remissoes explicitas para os apendices metodologicos. O texto tambem passou a distinguir com clareza o prompt operacional do Open WebUI e o prompt de geracao usado na bateria automatizada. O que ainda pode ser melhorado e:
  - incluir uma matriz enxuta no proprio manuscrito;
  - alinhar o mesmo prompt entre uso manual/interativo e avaliacao automatizada;
  - decidir se vale rerodar a bateria com esse alinhamento para maximizar comparabilidade.

- `[x]` Transformar a avaliacao em evidencia explicita.
  Foi inserida uma tabela com 20 perguntas reais de teste no `Apêndice A`, separadas por tipo, incluindo exemplos como:
  - factual
  - proposta
  - comparativa
  - ampla ou multifocal
  - categorias de controle, desambiguacao, multi-hop e checagem de alucinacao

- `[~]` Para cada pergunta avaliada, registrar pelo menos:
  Ja estao registrados:
  - pergunta
  - tipo da pergunta
  - nota total
  Ainda faltam, no nivel sintetico desejado:
  - qualidade da recuperacao
  - fidelidade da resposta ao contexto
  - presenca correta de referencias
  - observacoes sobre erro ou limite identificado
  Observacao:
  - parte desses aspectos ja aparece indiretamente nas `review_notes` do CSV bruto, mas ainda nao foi sintetizada no manuscrito

- `[~]` Incluir 2 ou 3 exemplos completos de interacao com o sistema.
  O `Apêndice B` ja reune tres estudos de caso exemplificativos:
  - um caso forte
  - um caso de cautela
  - um caso de limite
  A pendencia residual nao e mais quantidade de exemplos, mas decidir se vale incluir, no corpo do texto, uma matriz curta que sintetize esses perfis.

- `[~]` Amarrar explicitamente objetivos, criterios de sucesso e resultados.
  A secao de resultados ja passou a relacionar integridade da base, comportamento por familia de perguntas e limites observados. Ainda falta uma amarracao mais direta entre criterios de sucesso e evidencia correspondente, idealmente em formato de quadro ou matriz curta no corpo do texto.

- `[~]` Explicitar com mais precisao a configuracao experimental final.
  O manuscrito ja deixa claro:
  - qual foi o modelo registrado nas respostas da API
  - que a recuperacao e a montagem do contexto ficaram internalizadas no Open WebUI
  - quantos trechos e quantos arquivos-fonte apareceram por resposta na rodada final
  - que o juiz pode ser configurado separadamente, embora o mesmo modelo tenha sido reutilizado por simplificacao
  Ainda falta, como melhoria metodologica futura:
  - alinhar o mesmo prompt entre uso manual/interativo e avaliacao automatizada
  - decidir se vale rerodar a bateria com esse alinhamento para maximizar comparabilidade

## Prioridade media

- `[ ]` Corrigir uma ambiguidade na descricao da arquitetura em `sections/05-proposta.tex`.
  O texto afirma haver "tres servicos principais", mas a lista inclui Open WebUI, scripts Python, ChromaDB, Ollama e API da OpenAI. Convem reescrever para evitar incoerencia quantitativa.

- `[ ]` Tornar a lacuna de pesquisa mais especifica em `sections/03-fundamentacao.tex`.
  A secao de `Sintese da revisao e lacuna de pesquisa` pode dizer com mais forca qual e a originalidade do trabalho. Possiveis eixos:
  - dominio legislativo brasileiro
  - discursos da 56a Legislatura
  - foco em auditabilidade
  - pipeline reprodutivel com metadados legislativos

- `[ ]` Reduzir formulacoes excessivamente abstratas ou repetitivas.
  O texto trabalha bem conceitos como auditabilidade, rastreabilidade, governanca e explicabilidade, mas em alguns trechos esses termos aparecem de forma recorrente sem adicionar nova camada analitica.

- `[ ]` Adicionar uma figura simples da arquitetura ou do pipeline.
  O texto descreve bem o fluxo, mas uma figura fortaleceria a compreensao rapida da solucao.

- `[ ]` Aumentar a criticidade da revisao de literatura.
  A fundamentacao esta boa, mas em alguns pontos ela resume os autores mais do que contrasta abordagens, limites e decisoes metodologicas adotadas no artigo.

## Prioridade baixa

- `[ ]` Enxugar o resumo em relacao a ferramentas.
  O resumo esta bom, mas pode ficar mais forte se reduzir um pouco a enumeracao de tecnologias e incluir uma frase um pouco mais clara sobre o metodo de avaliacao.

- `[ ]` Considerar uma secao ou paragrafo curto com ameacas a validade.
  Isso pode deixar o artigo mais robusto metodologicamente, especialmente se a avaliacao continuar predominantemente qualitativa.

- `[ ]` Se houver espaco, incluir breve discussao sobre generalizacao.
  Por exemplo, o que do pipeline parece especifico para discursos do Senado e o que parece reutilizavel para outros acervos legislativos.

## Comentarios por secao

- `[ ]` Resumo:
  Esta fiel ao restante do texto. Melhorias principais: sintetizar melhor as ferramentas e explicitar um pouco melhor a avaliacao.

- `[ ]` Introducao:
  Boa delimitacao do problema, boa justificativa para uso de RAG e boa conexao com administracao publica.

- `[ ]` Fundamentacao teorica:
  Solida e pertinente, mas pode ganhar mais comparacao critica entre autores e mais explicacao de por que certas escolhas tecnicas foram adotadas.

- `[ ]` Proposta de solucao:
  E uma das secoes mais fortes do artigo. O pipeline esta claro, concreto e bem conectado com os objetivos.

- `[~]` Experimentos e demonstracao:
  A secao foi reforcada com resultados manuais e automatizados datados, com tipologia inspirada em benchmarks RAG recentes, tabela completa no `Apêndice A`, tres estudos de caso no `Apêndice B` e documentacao dos prompts no `Apêndice C`. Ainda vale incluir uma matriz resumida no corpo do texto e, em rodada futura, alinhar o mesmo prompt entre avaliacao manual/interativa e automatizada.

- `[ ]` Conclusao:
  Coerente com o que foi demonstrado e sem extrapolacoes excessivas.

## Referencias e padronizacao

- `[x]` Verificar a consistencia entre citacao no texto e entrada bibliografica de `International IDEA`.
  O texto agora usa bibliografia automatica, e a referencia esta normalizada no `.bib`.

- `[x]` Corrigir a data inconsistente da referencia de Khaliq et al.

- `[~]` Padronizar autores institucionais.
  O uso de autores institucionais ja foi organizado no `.bib`, mas ainda vale revisar se a aparencia final no texto esta ideal para o padrao desejado.

- `[ ]` Reavaliar o peso de fontes nao academicas.
  O artigo pode manter referencias de pratica profissional, mas ficaria mais forte para banca se parte dessas afirmacoes tambem fosse sustentada por artigos, relatorios tecnicos ou documentacao institucional mais robusta.

## Proxima acao recomendada

- `[~]` Fechar a demonstracao empirica em `sections/06-experimentos.tex` para:
  - consolidar uma matriz curta no corpo do texto com amostra representativa das perguntas;
  - manter alinhados os artefatos metodologicos de prompt entre uso manual/interativo e avaliacao automatizada;
  - decidir se vale rerodar a bateria com prompt unificado;
  - aproximar de forma mais direta criterios de sucesso e resultados observados.

## Retomada sugerida

Quando o trabalho for retomado, a sequencia mais eficiente parece ser:

1. decidir se havera ou nao nova rodada experimental com prompt unificado;
2. se houver, alinhar o mesmo prompt entre uso manual/interativo e avaliacao automatizada e rerodar a bateria;
3. atualizar `sections/06-experimentos.tex` e `sections/11-apendice-c.tex` conforme o artefato final de prompt adotado;
4. montar uma matriz curta no corpo do texto com 5 a 7 perguntas representativas;
5. revisar resumo e conclusao para refletir a forma final da demonstracao empirica.
