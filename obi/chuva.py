def main():
    length = int(input())
    soma_desejada = int(input())
    medicoes_string = input().split()

    medicoes_int = []
    for medicao in medicoes_string:
        medicoes_int.append(int(medicao))

    quantidade_somas = 0
    for i in range(length):
        for j in range(i + 1, length + 1):
            if sum(medicoes_int[i:j]) == soma_desejada:
                quantidade_somas += 1
            elif sum(medicoes_int[i:j]) > soma_desejada:
                break
    print(quantidade_somas)

if __name__ == "__main__":
    main()