# Triagem de referencias para a issue #3

Esta triagem registra a avaliacao de pertinencia das referencias novas ou ainda nao citadas no texto, com foco na tabela comparativa de trabalhos relacionados.

## Incluidas no manuscrito e na tabela comparativa

| Chave BibTeX | Decisao | Justificativa |
|---|---|---|
| `chouhanGertz2024lexdrafter` | Incluir | RAG aplicado a documentos legislativos da Uniao Europeia; tarefa diferente, mas diretamente relacionada a RAG legislativo. |
| `colomboEtAl2025legisSearch` | Incluir | Busca em legislacao italiana com grafo, LLM, baseline BM25/TF-IDF e ablacao; referencia forte para comparacao metodologica. |
| `garrisonEtAl2024talkNdaa` | Incluir | Avalia RAG em legislacao congressional dos EUA; util para comparar avaliacao em corpus legislativo longo. |
| `matoshiEtAl2025parliamentRag` | Incluir | Projetos-piloto com topic modeling e RAG em contexto parlamentar suico; uma das referencias mais proximas ao objetivo do artigo. |
| `mosbachEtAl2025worldAvatarParliament` | Incluir | Sistema RAG hibrido com grafo de conhecimento para debates parlamentares alemaes; muito pertinente para diferenciar corpus e arquitetura. |
| `rogiersEtAl2024kamerraad` | Incluir | Interface conversacional e recuperacao de informacao em politica parlamentar belga; pertinente para comparacao de acesso parlamentar. |
| `sarnikar2025legislativeTexts` | Incluir | Consulta e compreensao de textos legislativos longos com LLMs; pertinente como trabalho adjacente sobre legislacao extensa. |
| `lewisEtAl2020rag` | Incluir no texto, fora da tabela | Referencia seminal de RAG; deve fundamentar arquitetura, nao a comparacao de dominio parlamentar. |

## Manter para outras issues ou uso contextual

| Chave BibTeX | Decisao | Justificativa |
|---|---|---|
| `dahlEtAl2024largeLegalFictions` | Manter para issue #5 ou #8 | Forte para discutir alucinacao juridica e riscos de LLMs em dominio legal, mas nao e trabalho comparavel de RAG parlamentar. |
| `pipitoneAlami2024legalbenchRag` | Manter para issue #5 ou #6 | Relevante para avaliacao de recuperacao em RAG juridico; melhor usar quando a discussao de metricas e benchmarks for aprofundada. |
| `hevnerEtAl2004designScience` | Manter para issue #4 | Base para enquadramento em Design Science Research. |
| `peffersEtAl2007dsrm` | Manter para issue #4 | Base para metodologia DSRM; deve ser citada quando o enquadramento metodologico for reescrito. |
| `colombo2024legisAi` | Manter como apoio | Relacionado ao Legis AI Platform; pode ser usado como complemento, mas `colomboEtAl2025legisSearch` e mais completo para a tabela. |

## Baixa pertinencia direta para o manuscrito atual

| Chave BibTeX | Decisao | Justificativa |
|---|---|---|
| `akbarEtAl2025transportationCybersecurityRag` | Nao citar agora | Usa RAG em lacunas legais de ciberseguranca em transportes. E util como exemplo de RAG em politica/regulacao, mas distante de parlamentos, discursos e legislacao parlamentar. A entrada foi atualizada porque o trabalho passou a artigo publicado. |

## Referencias ja citadas e mantidas na tabela

| Chave BibTeX | Decisao | Justificativa |
|---|---|---|
| `blanco2025plenarioPalanqueEstudio` | Manter | Compartilha o corpus empirico de discursos do Senado; essencial para diferenciar analise descritiva de sistema RAG. |
| `blanco2026letrasGraudas` | Manter | Complementa a caracterizacao computacional dos discursos do Senado. |
| `khaliq2024ragar` | Manter | RAG em dominio politico e fact-checking; pertinente como trabalho adjacente. |
| `martelloteViola2025organizacaoConhecimento` | Manter | Contexto brasileiro de organizacao do conhecimento legislativo; pertinente para aproximar IA e informacao parlamentar. |
