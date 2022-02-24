function calcAumento(){
    atual = Number(prompt("Qual é o seu salário atual?"))
    if(atual <= 1700){
        let novo = atual * 1.12
        document.getElementById("res").innerHTML = `Novo salário: ${novo}. <br> Aumento: 12%` 
    }
    else if(atual > 1700 && atual <= 2500){
        let novo = atual * 1.08
        document.getElementById("res").innerHTML = `Novo salário: ${novo}. <br> Aumento: 8%` 
    }
    else if(atual >2500 && atual <= 3000){
        let novo = atual * 1.05
        document.getElementById("res").innerHTML = `Novo salário: ${novo}. <br> Aumento: 5%`
    }
    else{
        document.getElementById("res").innerHTML = `Novo salário: ${atual}. <br> Aumento: 0%` 
    }
}