# 1. Pesquisa sobre SGBDs

Pesquisar outros SGBDs além do PostgreSQL (MySQL, Oracle, SQL Server, SQLite) e escrever 1 parágrafo sobre um deles, incluindo:  
- Principais características  
- Casos de uso típicos  
- Vantagens e desvantagens  

---

O mongoDB é um banco de dados NoSQL, orientado a documentos que armazena os dados em JSON ou BSON (Json binário) ao inves de tabelas com linhas fixas.

## Principais caracteristicas:
- Suporte a consultas ad hoc, indexição variadas (campos simples, compostos, geospaciais, de texto)  
- Alta disponibilidade via replicação, com failover automático  
  > Failover é quando um sistema detecta que o servidor principal falhou e automaticamente transfere as operações para um servidor de backup (secundário), sem parar o serviço.  
- Agragações em tempo real, dashboards, analises leves se beneficiam de obter dados diretamente de documento.  

  - Porque "análises leves" geralmente envolvem:
    - relatórios simples ou rápidos (ex: número de vendas por dia, usuários ativos, somas básicas),
    - consultas frequentes com muita leitura e pouca lógica complexa,
    - visualizações em tempo real (gráficos atualizados automaticamente em dashboards, por exemplo).

## Casos de uso tipicos:
- Aplicações web ou moveis com dados semiestruturados ou que mudam muito de estrutura  
- Sistemas que lidam com grande volume de leitura ou escritas, catalogo de produtos e etc  

## Vantagens:
- Flexibilidade de desenvolvimentos, pois não exige nenhum esquema fixo, o que facilita iterar e adaptar o modelo de dados de acordo com a evolução do sistema  
- Bom desempenho para leitura em mutis casos, especialmente quando os casos estão no mesmo documento pois evita com que tenha a junção deles.  
- Alta disponibilidade por design através de replica.  

## Desvantagens:
- Transações complexas envolvendo multiplos documentos ou multiplas coleções podem tem performance pior ou maior do que em banco de dados relacionais.  
- Uso de memoria pode ser alto, principalmente para indices ou para manter os documentos quentes na RAM  
- Pode haver redundancia de doados ou uso de armazenamneto maior, porque sem esquema rigido é duplicar informação  

