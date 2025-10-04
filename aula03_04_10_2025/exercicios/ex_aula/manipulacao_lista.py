#!/usr/bin/python

numeros = list(range(1, 51))

def multiplos_3_e_5(lista):
    multiplos = []
    for n in lista:
        if n % 3 == 0 and n % 5 == 0:
            multiplos.append(n)
    return multiplos

print ("Lista original:", numeros )
print ("Multiplos de 3 e 5:", multiplos_3_e_5(numeros))
print ("soma dos multiplos de 3 e 5:", sum(multiplos_3_e_5(numeros)))
print ("Quantidade de numeros multiplos de 3 e 5:", len(multiplos_3_e_5(numeros)))