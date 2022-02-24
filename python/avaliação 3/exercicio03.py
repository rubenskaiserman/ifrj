x = int(input('x: '))
y = int(input('y: '))
inteiros = []
caracteres = []

for i in range(x):
    inteiros.append(int(input('Inteiro: ')))

for i in range(y):
    caracteres.append(input('Caracter: '))

zipado = list(zip(inteiros, caracteres))
concatenado = []

for item in zipado:
    concatenado.append(item[0])
    concatenado.append(item[1])

keep_going = int(len(concatenado)/2)
if x > y:
    concatenado = concatenado + inteiros[keep_going:]
elif y > x:
    concatenado = concatenado + caracteres[keep_going:]
    
print(concatenado)