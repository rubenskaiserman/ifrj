import sys

def main():
    minimo = int(input())
    maximo = int(input())
    soma_digitos = int(input())

    for i in range(maximo, minimo, -1):
        valor_medido = list(str(i))
        soma = 0
        for item in valor_medido:
            soma += int(item)
        if soma == soma_digitos:
            print(i)
            sys.exit(0)
    print(-1)

if __name__ == "__main__":
    main()
    