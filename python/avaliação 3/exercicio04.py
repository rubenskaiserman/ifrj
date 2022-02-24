mercado = []

for i in range(3):
    codigo = input('Código: ')
    preco = float(input('Preço: '))
    quantidade = int(input('Quantidade: '))
    mercado.append([codigo, preco, quantidade])

pagamento = 0
print('-'*50)
print('#'*50)
print('-'*50)
print('Agora insira o código do produto a ser comprado: ')
while True:
    text = input('Código: ')
    if text == '-1':
        break
    else:
        codigo = text
        tester = False
        for item in mercado:
            if item[0] == codigo:
                tester = True
                compra = int(input('Quantidade: '))
                if compra > item[2]:
                    print(f'Estoque insuficiente, tem apenas {item[2]} em estoque')
                else:
                    mercado.insert(mercado.index(item), [item[0], item[1], item[2] - compra])
                    pagamento += compra * item[1]
                    break
        if not tester:
            print('Erro, Código inválido')

print(f'O valor total: {pagamento:.2f}')
