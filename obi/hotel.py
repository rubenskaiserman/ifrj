def main():
    diaria_inicial = int(input())
    aumento_diario = int(input())
    dia_chegada = int(input())

    quantidade_estadia = 31 - dia_chegada + 1
    if dia_chegada < 16:
        custo_total = quantidade_estadia * (diaria_inicial + (dia_chegada - 1) * aumento_diario)
    else:
        custo_total = quantidade_estadia * (diaria_inicial + (14) * aumento_diario)
    print(custo_total)


if __name__ == "__main__":
    main()
    