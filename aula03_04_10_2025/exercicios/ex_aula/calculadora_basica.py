#!/usr/bin/python

def soma (x, y):
    return x + y

def subt (x, y):
    return x - y

def mult (x, y):
    return x * y

def div (x, y):
    return x / y

if __name__ == "__main__":
    try:
        x = float(input("Digite o primeiro numero: "))
        y = float(input("Digite o segundo numero: "))

        print(x, "+", y, "=", soma(x, y))
        print(x, "-", y, "=", subt(x, y))
        print(x, "x", y, "=", mult(x, y))
        if y == 0:
            print(x, "/", y, "=", "Erro")
        else:
            print(x, "/", y, "=", div(x, y))

    except:
        print("Erro de caractere, insira apenas numeros inteiros ou float")