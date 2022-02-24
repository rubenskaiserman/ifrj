class PitagoricTriangle {
    constructor(a, b, c) {
        this.a = a
        this.b = b
        this.c = c
        this.theorem = `a² + b² = c² : ${a}² + ${b}² = ${c}²`
        this.area = b * c
    }
    showAttribute(Attribute) {
        document.getElementById('res').innerHTML = Attribute

    }
}


var pitagoricTriangle = new PitagoricTriangle(3, 4, 5)

function callAttribute(Attribute){
    pitagoricTriangle.showAttribute(Attribute)
}