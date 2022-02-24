function numerosPares() {
    let soma = 0
    for(var i = 2; i <= 148; i+= 2){
        document.getElementById('res').innerHTML += `${i}, `
        soma += i
    }
    document.getElementById('soma').innerHTML += `Soma: ${soma}`
}