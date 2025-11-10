## 📝 Atividade 1 - Simples

### **Passo 1:**

- Use `open()` para abrir o arquivo, passando **2 parâmetros**:
    1. Endereço do arquivo
    2. Modo de abertura:
        - `"r"` → read (ler)
        - `"w"` → write (escrever)
        - `"a"` → append (acrescentar)
- `with` garante que o arquivo seja **fechado automaticamente** após o bloco, **sem precisar de `close()`**.
- `as variavel` cria uma **variável temporária**, válida apenas dentro do bloco `with`.
- Use `append()` para adicionar elementos à lista de palavras.
- `strip()` remove **espaços em branco e quebras de linha** (`\n`) de cada palavra.

---

### **Passo 2:**

- Itere sobre a lista de palavras usando um **contador `i`**.
- Verifique se o tamanho da palavra é **maior que 5**.
- Se sim, use `append()` para adicionar à lista de palavras grandes.
- No final, retorne o **tamanho da lista** de palavras grandes (`len()`).

---

### **Passo 3:**

- Fórmula:porcentagem=total de palavraspalavras grandes×100
    
    porcentagem=palavras grandestotal de palavras×100\text{porcentagem} = \frac{\text{palavras grandes}}{\text{total de palavras}} \times 100
    
- Use `round(..., 1)` para **limitar a 1 casa decimal**, arredondando se necessário.

---

### **Passo 4:**

- Monte um dicionário chamado `resultado` com as chaves:
    - `"total_palavras"` → total de palavras lidas
    - `"palavras_grandes"` → quantidade de palavras maiores que 5 letras
    - `"porcentagem"` → resultado calculado no passo 3

---

### **Passo 5:**

- Use `with open(..., "w") as arquivo` para **criar ou sobrescrever** o arquivo JSON.
- Importe o módulo JSON com `import json`.
- Use `json.dump(dicionario, arquivo, indent=2)` para **escrever o JSON no arquivo** com **2 espaços de indentação**.

> ⚠️ Observação: se o arquivo já existir, ele será sobrescrito.

### **Passo 6:**

- Feedback de arquivo criado pra ficar bacana