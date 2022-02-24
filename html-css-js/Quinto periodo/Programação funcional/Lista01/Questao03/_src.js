function sum(){
    let val = getElements()
    let res = val[0] + val[1]
    document.getElementById("res").innerHTML = `Soma: ${res} `
}
function subtraction(){
    let val = getElements()
    let res = val[0] - val[1]
    document.getElementById("res").innerHTML = `Subtração: ${res}} `
}
function multiply(){
    let val = getElements()
    let res = val[0] * val[1]
    document.getElementById("res").innerHTML = `Multiplicação: ${res}`
}
function devide(){
    let val = getElements()
    let res = val[0] / val[1]
    document.getElementById("res").innerHTML = `devide: ${res}`
}


function getElements(){
    let a = Number(document.getElementById("a").value)
    let b = Number(document.getElementById("b").value)
    return [a, b]
}