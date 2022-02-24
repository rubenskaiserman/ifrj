notas = []

for i in range(50):
    notas.append(float(input('Nota: ')))

media = sum(notas)/len(notas)
for nota in notas:
    if nota > media:
        print(nota)