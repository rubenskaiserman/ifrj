string = input('String: ')
char = input('String: ')
primeira_ocorrencia = None
ultima_ocorrência = None

for i in range(len(string)):
    if string[i] == char and primeira_ocorrencia == None:
        primeira_ocorrencia = i
    elif string[i] == char:
        ultima_ocorrência = i + 1

if primeira_ocorrencia == None:
    print('Não houve ocorrência do caracter na string')
elif ultima_ocorrência == None:
    print(char)
else:
    print(string[primeira_ocorrencia:ultima_ocorrência])
    