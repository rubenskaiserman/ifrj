votos = []
erros = []

for i in range(100):
    item = int(input('Votos: '))
    if item > 99 or item < 0:
        votos.append(-1)
    else:
        votos.append(item)

verify = votos.count(max(votos))

if  verify == 1:
    print(f'O vencedor foi o candidato de número: {votos.index(max(votos))}')
else:
    print('Houve empate e os vencedores foram: ', end= ' ,')

    for i in range(len(votos)):
        if votos[i] == max(votos):
            print(i, end=' ,')
        elif votos[i] == -1:
            erros.append(i)
            
        print()

print(f'Os candidatos {erros} tiveram votos inválidos adicionados')