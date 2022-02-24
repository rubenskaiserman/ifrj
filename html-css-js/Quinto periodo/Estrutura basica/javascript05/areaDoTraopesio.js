function calcArea(){
    var B = Number(document.getElementById("B").value)   
    var b = Number(document.getElementById("b").value)
    var h = Number(document.getElementById("h").value)

    document.getElementById("res").innerHTML = "Área = " + ((B + b)*h)/2 + " m²"
    document.getElementById("res").style = "color: crimson; font-size: 150%; font-family: Impact, Haettenschweiler, 'Arial Narrow Bold', sans-serif; "
}