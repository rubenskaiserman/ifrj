def main():
    valores_dominantes = {
        'A': 14,
        'J': 15,
        'Q': 16,
        'K': 17
    }
    valores_default = {
        'A': 10,
        'J': 11,
        'Q': 12,
        'K': 13
    } 

    naipe_dominante = list(input())[1]
    cartas_luana = []
    for i in range(3):
        cartas_luana.append(input())
    cartas_edu = []
    for i in range(3):
        cartas_edu.append(input())

    resultado_edu = 0
    resultado_luana = 0

    for carta in cartas_edu:
        carta_edu = list(carta)
        if carta_edu[1] == naipe_dominante:
            resultado_edu += valores_dominantes[carta_edu[0]]
        else:
            resultado_edu += valores_default[carta_edu[0]]

    for carta in cartas_luana:
        carta_luana = list(carta)
        if carta_luana[1] == naipe_dominante:
            resultado_luana += valores_dominantes[carta_luana[0]]
        else:
            resultado_luana += valores_default[carta_luana[0]]

    if resultado_luana > resultado_edu:
        print("Luana")
    elif resultado_edu > resultado_luana:
        print("Edu")
    else:
        print("empate")

if __name__ == "__main__":
    main()