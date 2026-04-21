# Notas de revisao do artigo

Este arquivo registra, de forma persistente no projeto, as principais sugestoes de melhoria para o artigo em `chatbot-rag/main.tex` e serve como quadro de acompanhamento do progresso.

Legenda de status:
- `[x]` concluido
- `[~]` em andamento
- `[ ]` pendente

## Diagnostico geral

O manuscrito esta bem estruturado, bem escrito em tom academico e com boa aderencia ao problema proposto. O principal merito e tratar o sistema RAG como solucao sociotecnica e nao apenas como integracao superficial entre LLM e banco vetorial. A secao de experimentos amadureceu bastante: hoje o trabalho ja oferece base integra e rastreavel, estudos de caso qualitativos, tres rodadas automatizadas recentes com rubrica, discussao de estabilidade, analise manual amostral e documentacao do prompt operacional do fluxo RAG. As pendencias remanescentes sao de refinamento de apresentacao e consistencia final entre secoes, nao mais de ausencia de evidencia.

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

- `[ ]` Tornar a lacuna de pesquisa mais especifica em `sections/03-fundamentacao.tex`.
  A secao de `Sintese da revisao e lacuna de pesquisa` pode dizer com mais forca qual e a originalidade do trabalho. Possiveis eixos:
  - dominio legislativo brasileiro
  - discursos da 56a Legislatura
  - foco em auditabilidade
  - pipeline reprodutivel com metadados legislativos

- `[x]` Reduzir formulacoes excessivamente abstratas ou repetitivas.
  Foi realizada revisao de fluidez em introducao, fundamentacao, proposta, experimentos e conclusao, substituindo repeticoes de termos como auditabilidade, rastreabilidade e governanca por formulacoes mais especificas quando apropriado.

- `[ ]` Adicionar uma figura simples da arquitetura ou do pipeline.
  O texto descreve bem o fluxo, mas uma figura fortaleceria a compreensao rapida da solucao.

- `[ ]` Aumentar a criticidade da revisao de literatura.
  A fundamentacao esta boa, mas em alguns pontos ela resume os autores mais do que contrasta abordagens, limites e decisoes metodologicas adotadas no artigo.

## Prioridade baixa

- `[x]` Enxugar e atualizar o resumo em relacao a ferramentas e avaliacao.
  O resumo agora explicita a demonstracao empirica com inspecao manual, tres rodadas automatizadas, rubrica, julgamento por LLM e analise manual amostral.

- `[ ]` Considerar uma secao ou paragrafo curto com ameacas a validade.
  Isso pode deixar o artigo mais robusto metodologicamente, especialmente se a avaliacao continuar predominantemente qualitativa.

- `[ ]` Se houver espaco, incluir breve discussao sobre generalizacao.
  Por exemplo, o que do pipeline parece especifico para discursos do Senado e o que parece reutilizavel para outros acervos legislativos.

## Comentarios por secao

- `[x]` Resumo:
  Revisado para refletir a forma final da demonstracao empirica e os limites observados em consultas numericas, comparativas, multifocais e de controle de escopo.

- `[ ]` Introducao:
  Boa delimitacao do problema, boa justificativa para uso de RAG e boa conexao com administracao publica.

- `[ ]` Fundamentacao teorica:
  Solida e pertinente, mas pode ganhar mais comparacao critica entre autores e mais explicacao de por que certas escolhas tecnicas foram adotadas.

- `[x]` Proposta de solucao:
  Revisada para corrigir a descricao da arquitetura, alinhar o fluxo de consulta ao prompt operacional do Open WebUI e atualizar a descricao da avaliacao automatizada.

- `[x]` Experimentos e demonstracao:
  A secao foi reforcada com resultados manuais e automatizados datados, tipologia inspirada em benchmarks RAG recentes, tabela das tres rodadas principais no `Apêndice A`, tres estudos de caso no `Apêndice B`, documentacao do prompt operacional no `Apêndice C`, teste de sensibilidade com juiz alternativo e discussao sobre divergencia entre avaliacao automatica e leitura manual amostral.

- `[x]` Conclusao:
  Revisada para refletir as tres rodadas recentes, a triangulacao manual, a sensibilidade do juiz automatizado e os trabalhos futuros mais coerentes com o estado atual do experimento.

## Referencias e padronizacao

- `[x]` Verificar a consistencia entre citacao no texto e entrada bibliografica de `International IDEA`.
  O texto agora usa bibliografia automatica, e a referencia esta normalizada no `.bib`.

- `[x]` Corrigir a data inconsistente da referencia de Khaliq et al.

- `[~]` Padronizar autores institucionais.
  O uso de autores institucionais ja foi organizado no `.bib`, mas ainda vale revisar se a aparencia final no texto esta ideal para o padrao desejado.

- `[ ]` Reavaliar o peso de fontes nao academicas.
  O artigo pode manter referencias de pratica profissional, mas ficaria mais forte para banca se parte dessas afirmacoes tambem fosse sustentada por artigos, relatorios tecnicos ou documentacao institucional mais robusta.

## Proxima acao recomendada

- `[~]` Fazer revisao de consistencia final do manuscrito completo para:
  - revisar fluidez academica e consistencia entre introducao, fundamentacao, proposta, experimentos e conclusao.

## Retomada sugerida

Quando o trabalho for retomado, a sequencia mais eficiente parece ser:

1. revisar a fundamentacao teorica para tornar a lacuna de pesquisa mais explicita;
2. avaliar se vale incluir uma figura simples da arquitetura ou do pipeline;
3. fazer uma leitura final do PDF ja compilado, com foco em quebras, tabelas e apendices;
4. recompilar o PDF e fazer revisao visual final.
