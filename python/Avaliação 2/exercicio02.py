def maior_incidencia(texto, char):
    texto_dividido = texto.rsplit('\n')
    official_count = 0

    for i in range(len(texto_dividido)):
        count = 0
        for j in range(len(texto_dividido[i])):
            if char == texto_dividido[i][j]:
                count +=1
                print(f'O caracter apareceu no indicie {j + 1} da linha {i + 1}')
        if count > official_count:
            official_count = count
            resultado = i + 1
    
    print(f'A maior incidencia do caracter aconteceu na linha {resultado}')

texto = '''wiuebvuewbcw winevuhai v weveriniuenviuh vehrvuernviuweh heehviweniuwehfi ehwefiuhwefhufneiu hrgeuirbguergviuebfiuwhf ihiuewfuwbfubv8 feh8ehgheriuneiurh erhegeiug 
erijhueirvuiewihh egherghwbbeioediheriof ehgioegniuvh wefowefiohgiog
weiweiughwieghwpeygww
wiuwefuibewguwe g
wefowifnwoegjowehgweçwe weihweifhiwefw
efniwengiwegn hwegçwhçwf'''
            
maior_incidencia(texto, 'w')

































