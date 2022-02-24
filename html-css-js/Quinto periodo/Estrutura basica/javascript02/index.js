function sayHello(){
    var _name = String(document.getElementById("nome").value)
    document.getElementById("output").innerHTML = "Hello, " + _name
}