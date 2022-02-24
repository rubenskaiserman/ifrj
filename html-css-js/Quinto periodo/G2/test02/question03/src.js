//Rubens Guedes Kaiserman
//INF 251

var array = []

function initiateAlgorithm() {
    for (var i = 0; i < 20; i++) {
        array.push(Number(prompt('Insira um valor: ')))
    }

    var positiveValues = 0
    var negativeValues = 0
    var maxIndex = 0
    for (var i = 0; i < 20; i++) {
        if (array[i] > 0) {
            positiveValues++
        } else if (array[i] < 0) {
            negativeValues++
        }

        if (array[i] > array[maxIndex]) {
            maxIndex = i
        }
    }
    document.getElementById('res').innerHTML = `Indice do maior valor: ${maxIndex} <br> Quantidade de valores Positivos: ${positiveValues} <br> Quantidade de valores negativos: ${negativeValues}`
}