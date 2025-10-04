#!/usr/bin/python

import json

try:
    palavra_lista = []
    with open("palavras.txt", "r") as arquivo:
        for linha in arquivo:
            palavra_lista.append(linha.strip())

    def contagem_palavras(lista):
        i = 0
        palavras_grandes = []
        while i < len(lista):
            if len(lista[i]) > 5:
                palavras_grandes.append(lista[i])
            i += 1
        return(len(palavras_grandes))

    def porcentagem(lista):
        grandes = contagem_palavras(lista)
        total = len(lista)
        resultado = round((grandes / total) * 100, 1)
        return resultado

    resultado = {
        "total_palavras": len(palavra_lista),
        "palavras_grandes": contagem_palavras(palavra_lista),
        "porcentagem": porcentagem(palavra_lista)
    }

    with open("resultado.json", "w") as arquivo:
        json.dump(resultado, arquivo, indent=2)

    print("Arquivo 'resultado.json' criado com sucesso!")

except:
    print("Erro ao traduzir arquivo")