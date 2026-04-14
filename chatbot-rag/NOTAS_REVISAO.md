# Notas de revisao do artigo

Este arquivo registra, de forma persistente no projeto, as principais sugestoes de melhoria para o artigo em `chatbot-rag/main.tex` e serve como quadro de acompanhamento do progresso.

Legenda de status:
- `[x]` concluido
- `[~]` em andamento
- `[ ]` pendente

## Diagnostico geral

O manuscrito esta bem estruturado, bem escrito em tom academico e com boa aderencia ao problema proposto. O principal merito e tratar o sistema RAG como solucao sociotecnica e nao apenas como integracao superficial entre LLM e banco vetorial. A fragilidade central continua sendo a demonstracao empirica: o leitor entende claramente o que foi construido, mas ainda nao recebe evidencia suficiente para medir a qualidade da solucao de forma mais objetiva.

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
  A secao ja passou a incorporar evidencias observaveis de integridade da base, avaliacao manual e rodadas automatizadas com rubrica; ainda faltam uma matriz enxuta no proprio manuscrito e exemplos completos de interacao para fechar a demonstracao empirica.

- `[ ]` Transformar a avaliacao em evidencia explicita.
  Inserir uma tabela com 10 a 20 perguntas reais de teste, separadas por tipo, por exemplo:
  - factual
  - tematica
  - comparativa
  - ampla ou multifocal

- `[ ]` Para cada pergunta avaliada, registrar pelo menos:
  - pergunta
  - tipo da pergunta
  - qualidade da recuperacao
  - fidelidade da resposta ao contexto
  - presenca correta de referencias
  - observacoes sobre erro ou limite identificado

- `[ ]` Incluir 2 ou 3 exemplos completos de interacao com o sistema.
  Idealmente:
  - um caso com bom desempenho
  - um caso com resposta parcialmente satisfatoria
  - um caso em que o sistema falha ou responde de forma excessivamente ampla

- `[ ]` Amarrar explicitamente objetivos, criterios de sucesso e resultados.
  Os criterios definidos no artigo sao bons, mas a secao de resultados ainda nao demonstra item a item como cada criterio foi ou nao atendido.

- `[ ]` Explicitar com mais precisao a configuracao experimental final.
  Falta deixar totalmente claro:
  - qual foi o modelo gerador final usado nas respostas
  - quais parametros relevantes foram usados na geracao
  - quantos trechos foram recuperados
  - como o contexto final foi montado
  - quais configuracoes foram decisivas para o desempenho observado

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
  A secao foi reforcada com resultados manuais e automatizados datados, mas ainda vale incluir uma matriz resumida de perguntas e 2 ou 3 exemplos completos para tornar a evidencia mais imediata para a banca.

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

- `[~]` Reescrever `Resultados alcancados` em `sections/06-experimentos.tex` para:
  - substituir juizos vagos por achados observaveis;
  - aproximar o texto dos criterios de sucesso definidos;
  - preparar terreno para futura inclusao de tabela de avaliacao e exemplos concretos.
