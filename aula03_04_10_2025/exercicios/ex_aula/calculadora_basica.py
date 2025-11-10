#!/usr/bin/python3

def soma(x, y):
    return x + y

def subt(x, y):
    return x - y

def mult(x, y):
    return x * y

def div(x, y):
    return x / y

if __name__ == "__main__":
    try:
        x = float(input("Digite o primeiro número: "))
        y = float(input("Digite o segundo número: "))

        print(f"{x} + {y} = {soma(x, y)}")
        print(f"{x} - {y} = {subt(x, y)}")
        print(f"{x} x {y} = {mult(x, y)}")

        if y == 0:
            print(f"{x} / {y} = Erro (divisão por zero)")
        else:
            print(f"{x} / {y} = {div(x, y)}")

    except ValueError:
        print("Erro: insira apenas números inteiros ou float.")