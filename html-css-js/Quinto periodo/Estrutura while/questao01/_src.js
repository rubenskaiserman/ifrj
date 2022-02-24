function somaMedia(){
    let i = 0
    let soma = 0    
    while(i < 20){
        soma += Number(prompt('Insira um valor real: '))
        i++
    }
    document.getElementById('sum').innerHTML += soma
    document.getElementById('med').innerHTML += soma/i
}