function main() {
    var cpf = String(document.getElementById("cpf").value)

    if(verifyCpf(cpf)){
        document.getElementById("res").innerHTML = "CPF Válido!"
    } else {
        document.getElementById("res").innerHTML = "CPF Inválido!"
    }

}


function verifyCpf(cpf) {
    let _cpf = cpf.split("")
    var verifiers = [_cpf.pop(), _cpf.pop()].reverse()

    var cpfInteger = toInterger(_cpf)
    var sumOfStuff = sumMultiplied(cpfInteger, 9, 10)

    if ((sumOfStuff % 11) < 2) {
        generatedVerifiers = 0
    } else {
        generatedVerifiers = (11 - (sumOfStuff % 11))
    }

    if (generatedVerifiers != verifiers[0]) {
        return 0

    } else {
        cpfInteger.push(generatedVerifiers)
        sumOfStuff = sumMultiplied(cpfInteger, 10, 11)

        if ((sumOfStuff % 11) < 2) {
            generatedVerifiers = 0
        } else {
            generatedVerifiers = (11 - (sumOfStuff % 11))
        }
        if(generatedVerifiers != verifiers[1]){
            return 0
        } else {
            return 1
        }

    }


}

function toInterger(list) {
    numberList = []
    for (var i = 0; i < 9; i++) {
        numberList.push(Number(list[i]))
    }
    return numberList
}

function sumMultiplied(list, len, firstItem) {
    let _sumMultiplied = 0
    for (var i = 0; i < len; i++) {
        _sumMultiplied += list[i] * (firstItem - i)
    }

    return _sumMultiplied
}