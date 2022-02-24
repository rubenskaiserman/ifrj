from typing import Counter


def incidencia_da_letra(texto, char):
    # count = 0
    # for letra in texto:
    #     if letra == char:
    #         count += 1
    # return count
    
    return texto.count(char) #Isso substitui o código anterior

texto = '''iufbwuifb hfweh89w 98huwecbec wehiubflLAB IHVIUBVIUBEUI SNFIJJOI rheubviuwhe jgiuee ijowençsdfh heirhieuuiweg hvgeuiwehfi egh gwiehf sgvwghweghivhiuwef weheghwih vwe çw
g weghweghweio hwegw eoghwegh doghẃefçwg wegw efuigi wef
f wghw8ghw gw8ghwegwhwey hwfh9 wfywa8cf efc
efhuifhw8 af8 awywyawyw8efiowdghiuwgehlasfiahgieygrhgiusf iughiuergiuduwe fihefiuhfiashhça fhfihwihsdjbvwiuf sufewuibvsduihf'''
print(incidencia_da_letra(texto, 'a'))