def write_text():
    linha = ''
    texto = []
    print('Para parar de escrever dê o comando "Break"')
    while True:
        linha = input()
        if linha == 'Break':
            break
        else:
            texto.append(linha)
    return texto

def maior_palavra(texto):
    index = None
    max_word = ''
    for i in range(len(texto)):
        linha = texto[i].split()
        maior_da_linha = max(linha, key=len)
        if len(max_word) < len(maior_da_linha):
            max_word = maior_da_linha
            indice_da_linha = i

    return indice_da_linha

texto = write_text()

menor_linha = texto.index(min(texto, key=len))

total_char = len(''.join(texto).replace(' ', ''))

print(f'O texto possúi {total_char} caracteres')
print(f'A maior sequencia de caracteres está na linha {maior_palavra(texto) + 1}')
print(f'A linha {menor_linha + 1} é a menor linha')