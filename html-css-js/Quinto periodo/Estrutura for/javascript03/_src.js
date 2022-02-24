function buildTable(){
    let soma = 0
    for(var i = 1; i <148; i+=2)
    if(i === 9){
        document.getElementById('table').innerHTML += "<tr><td><img src='images/pandas.jpg'</td></tr>"         
    }
    else{
        document.getElementById('table').innerHTML += `<tr><td>${i}</td></tr>`
        soma +=i
    }
    media = (soma/(i/2)).toFixed(1)
    document.getElementById('table').innerHTML += `<tr><td>Media: ${media}</td></tr>`
     
}