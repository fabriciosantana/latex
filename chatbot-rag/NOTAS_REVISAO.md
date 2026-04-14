# Notas de revisao do artigo

Este arquivo registra, de forma persistente no projeto, as principais sugestoes de melhoria para o artigo em `chatbot-rag/main.tex`.

## Avaliacao geral

O manuscrito esta bem estruturado, bem escrito em tom academico e com boa aderencia ao problema proposto. O principal merito e tratar o sistema RAG como solucao sociotecnica e nao apenas como integracao superficial entre LLM e banco vetorial. A fragilidade central esta na demonstracao empirica: o leitor entende claramente o que foi construido, mas ainda nao recebe evidencia suficiente para medir a qualidade da solucao de forma mais objetiva.

## Prioridade alta

- Fortalecer a secao de resultados em `main.tex`.
  O trecho em torno de `Resultados alcancados` ainda usa formulacoes avaliativas vagas, como "qualidade inicial considerada adequada" e "resultados satisfatorios", sem criterios observaveis suficientes.

- Transformar a avaliacao em evidencia explicita.
  Inserir uma tabela com 10 a 20 perguntas reais de teste, separadas por tipo, por exemplo:
  - factual
  - tematica
  - comparativa
  - ampla ou multifocal

- Para cada pergunta avaliada, registrar pelo menos:
  - pergunta
  - tipo da pergunta
  - qualidade da recuperacao
  - fidelidade da resposta ao contexto
  - presenca correta de referencias
  - observacoes sobre erro ou limite identificado

- Incluir 2 ou 3 exemplos completos de interacao com o sistema.
  Idealmente:
  - um caso com bom desempenho
  - um caso com resposta parcialmente satisfatoria
  - um caso em que o sistema falha ou responde de forma excessivamente ampla

- Amarrar explicitamente objetivos, criterios de sucesso e resultados.
  Os criterios definidos no artigo sao bons, mas a secao de resultados ainda nao demonstra item a item como cada criterio foi ou nao atendido.

- Explicitar com mais precisao a configuracao experimental final.
  Falta deixar totalmente claro:
  - qual foi o modelo gerador final usado nas respostas
  - quais parametros relevantes foram usados na geracao
  - quantos trechos foram recuperados
  - como o contexto final foi montado
  - quais configuracoes foram decisivas para o desempenho observado

## Prioridade media

- Corrigir uma ambiguidade na descricao da arquitetura.
  Em `Arquitetura do chatbot legislativo`, o texto afirma haver "tres servicos principais", mas a lista inclui Open WebUI, scripts Python, ChromaDB, Ollama e API da OpenAI. Convem reescrever para evitar incoerencia quantitativa.

- Tornar a lacuna de pesquisa mais especifica.
  A secao de `Sintese da revisao e lacuna de pesquisa` pode dizer com mais forca qual e a originalidade do trabalho. Possiveis eixos:
  - dominio legislativo brasileiro
  - discursos da 56a Legislatura
  - foco em auditabilidade
  - pipeline reprodutivel com metadados legislativos

- Reduzir formulacoes excessivamente abstratas ou repetitivas.
  O texto trabalha bem conceitos como auditabilidade, rastreabilidade, governanca e explicabilidade, mas em alguns trechos esses termos aparecem de forma recorrente sem adicionar nova camada analitica.

- Adicionar uma figura simples da arquitetura ou do pipeline.
  O texto descreve bem o fluxo, mas uma figura fortaleceria a compreensao rapida da solucao.

- Aumentar a criticidade da revisao de literatura.
  A fundamentacao esta boa, mas em alguns pontos ela resume os autores mais do que contrasta abordagens, limites e decisoes metodologicas adotadas no artigo.

## Prioridade baixa

- Enxugar o resumo em relacao a ferramentas.
  O resumo esta bom, mas pode ficar mais forte se reduzir um pouco a enumeracao de tecnologias e incluir uma frase um pouco mais clara sobre o metodo de avaliacao.

- Considerar uma secao ou paragrafo curto com ameacas a validade.
  Isso pode deixar o artigo mais robusto metodologicamente, especialmente se a avaliacao continuar predominantemente qualitativa.

- Se houver espaco, incluir breve discussao sobre generalizacao.
  Por exemplo, o que do pipeline parece especifico para discursos do Senado e o que parece reutilizavel para outros acervos legislativos.

## Comentarios por secao

- Resumo:
  Esta fiel ao restante do texto. Melhorias principais: sintetizar melhor as ferramentas e explicitar um pouco melhor a avaliacao.

- Introducao:
  Boa delimitacao do problema, boa justificativa para uso de RAG e boa conexao com administracao publica.

- Fundamentacao teorica:
  Solida e pertinente, mas pode ganhar mais comparacao critica entre autores e mais explicacao de por que certas escolhas tecnicas foram adotadas.

- Proposta de solucao:
  E uma das secoes mais fortes do artigo. O pipeline esta claro, concreto e bem conectado com os objetivos.

- Experimentos e demonstracao:
  E a secao que mais precisa evoluir para fortalecer a evidencia cientifica do trabalho.

- Conclusao:
  Coerente com o que foi demonstrado e sem extrapolacoes excessivas.

## Referencias e padronizacao

- Verificar a consistencia entre citacao no texto e entrada bibliografica de `International IDEA`.
  No corpo do texto aparece como autor institucional, mas na lista de referencias aparece por autora individual (`GEUNIS, Lotte`).

- Corrigir a data de acesso da referencia de Khaliq et al.
  Ha um `Acesso em: 9 abr. 2025`, enquanto o restante da bibliografia esta padronizado em 2026.

- Padronizar autores institucionais.
  Vale revisar se ONU, OpenAI, IPU, Westminster Foundation for Democracy e International IDEA estao citados de forma consistente no corpo e nas referencias.

- Reavaliar o peso de fontes nao academicas.
  O artigo pode manter referencias de pratica profissional, mas ficaria mais forte para banca se parte dessas afirmacoes tambem fosse sustentada por artigos, relatorios tecnicos ou documentacao institucional mais robusta.

## Diagnostico final

O artigo ja esta em um patamar bom e defensavel como trabalho aplicado. O principal salto de qualidade vira de converter a secao de avaliacao em uma demonstracao mais objetiva, comparavel e verificavel. Em termos simples: o texto ja explica bem o que foi feito; o proximo passo e provar melhor como funcionou, em quais casos funcionou bem e onde ainda falha.
