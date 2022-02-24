string = list(''.join(input('String: ').split()))
if string == list(reversed((string))):
    print('É um palindromo')
else:
    print('Não é um palindromo')