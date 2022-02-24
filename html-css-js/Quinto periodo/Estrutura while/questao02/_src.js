function myFunction(){
    let i = 0
    let soma = 0    
    do{
        soma += Number(prompt('Insira um valor real: '))
        i++
    }while(i < 20)
    document.getElementById('sum').innerHTML += soma
    document.getElementById('med').innerHTML += soma/i
}