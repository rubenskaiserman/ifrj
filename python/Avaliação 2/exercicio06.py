import re

string = list(''.join(re.split('["!@#$%&*()-_+=´`~^?/°.,><;:¹²³£¢¬\|°]', ''.join(input('String: ').split()))))

if string == list(reversed((string))):
    print('É um palindromo')
    print(string)
    print(list(reversed(string)))
else:
    print('Não é um palindromo')
    print(string)
    print(list(reversed(string)))