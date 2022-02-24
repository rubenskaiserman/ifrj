string = input('String: ').strip().split()

t = 0
soma = 0
for i in range(len(string)):
    soma += len(string[i])
    if soma > 40:
        for j in range(t, i):
            print(string[j], end=' ')
        print()
        soma = 0
        t = i
print(' '.join(string[t:]))
    