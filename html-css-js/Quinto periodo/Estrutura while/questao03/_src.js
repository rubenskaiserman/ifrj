function myFunction(){
    document.getElementById('res').innerHTML =''
    let x = document.getElementById('x').value
    let y = document.getElementById('y').value
    if(x === '' || y === ''){
        document.getElementById('res').innerHTML += 'Error: Um dos campos não foi preenchido. Preencha e tente novamente'
    }
    else if(x === y){
        document.getElementById('res').innerHTML += 'Error: Ambos os valores adicionados são iguais. Mude um deles e tente novamente'
    }
    else{
        x = Number(x)
        y = Number(y)
        let i = x
        if(x > y){
            do{
                document.getElementById('res').innerHTML += `${i}, `
                i--
            }while(i>=y)
        }else{
            do{
                document.getElementById('res').innerHTML += `${i}, `
                i++
            }while(i<=y)
        }

    }
}