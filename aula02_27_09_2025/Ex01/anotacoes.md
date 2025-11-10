## Regras de normalização (Até a 3FN)

✅ 1ª Forma Normal (1FN)

- Todos os atributos devem ser atômicos (não podem ser divididos).

- Não pode existir coluna multivalorada ou tabela repetindo grupos de dados.

- Cada célula deve ter um único valor.

✅ 2ª Forma Normal (2FN)

- Precisa estar em 1FN.

- Todos os atributos não-chave devem depender da chave primária inteira.

- Ou seja: não pode haver dependência parcial (quando a chave é composta e um atributo depende só de parte dela).

✅ 3ª Forma Normal (3FN)

- Precisa estar em 2FN.

- Os atributos não-chave devem depender diretamente da chave primária.

- Ou seja: não pode haver dependência transitiva (um atributo depender de outro atributo não-chave).

## Quando usar desnormalização?
✅ Usar desnormalização quando:

- Vai gerar relatórios pesados, dashboards, BI - (Power BI, Data Studio, Tableau…)

- Vai fazer muitas consultas de leitura e poucas de escrita.

- Quer performance de leitura (menos JOIN → muito mais rápido).

- Vai trabalhar com Data Warehouse / Data Lake / tabelas fato.

✅ Modelo desnormalizado é ideal para:

- KPIs (faturamento, ticket médio, vendas por vendedor)

- Relatórios diários/semanais/mensais

- Indicadores de cliente, produto e vendedor

- Tabelas para ML / IA / enriquecimento de dados

❌ Quando NÃO usar desnormalização:

- Sistemas transacionais (ERP, e-commerce, apps) → muita escrita e atualização

- Quando um mesmo dado muda sempre (ex.: preço, endereço, telefone)

- Quando há risco alto de inconsistência (mesmo dado repetido em 10 mil linhas)

## OUUU SEJAA
Normalização → sistema de produção
- ✅ Consistência
- ✅ Sem redundância
- ✅ Atualizações fáceis

Desnormalização → relatórios e BI
- ✅ Mais rápido
- ✅ Menos JOIN
- ✅ Mais simples para análises