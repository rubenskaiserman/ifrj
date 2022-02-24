function verificarNumero(){
    let num = Number(document.getElementById("numero").value)
    if(num < 51 && num > 0){
        document.getElementById("res").innerHTML = "Entrada válida! :)"
    }
    else{
        document.getElementById("res").innerHTML = "Entrada... Inválida... Por que... Por que fez isso comigo? ._."
    }
}