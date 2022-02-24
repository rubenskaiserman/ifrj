function calcVariados(){
    var num = Number(prompt("Insira um número: "))
    var raizqd = Math.sqrt(num)
    var raizcb = Math.cbrt(num)
    var setpow = Math.pow(num, 7)

    document.getElementById("res").innerHTML = `Raiz Quadrada: ${raizqd} <br> Raiz cubica: ${raizcb} <br> Sétima potência: ${setpow}` 
}