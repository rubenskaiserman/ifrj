import re
def number_of_words(sentence):
    sentence_splited = sentence.split()
    sentence_splited = ' '.join(sentence_splited)
    sentence_splited = re.split('[,."  "; ]', sentence_splited)    

    return len(sentence_splited)

sentence = input('Frase: ')
print(f'A frase inserida possúi {number_of_words(sentence)} palavras')
