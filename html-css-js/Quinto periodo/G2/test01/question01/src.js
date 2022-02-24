var sexo = 'Undefiened'


function bringResult() {
    nome = document.getElementById("nome").value
    email = document.getElementById("email").value
    endereco = document.getElementById("endereco").value
    numero = document.getElementById("numero").value
    bairro = document.getElementById("bairro").value
    cidade = document.getElementById("cidade").value
    cep = document.getElementById("cep").value
    uf = document.getElementById("uf").value

    formatAndShow(nome, email, sexo, endereco, bairro, cidade, cep, uf, numero)
}

function formatAndShow(nome, email, sexo, endereco, bairro, cidade, cep, uf, numero) {

    let _text = `${nome}, reside no endereço ${endereco}, ${numero}, ${bairro}, ${cidade}, ${uf} sob o cep ${cep}, do sexo ${sexo} com o email ${email}`
    //Não estava pedindo email mas já estamos aqui

    document.getElementById("res").innerHTML = _text
}

function getSexo(morf) {
    if (morf) {
        sexo = 'Masculino'
    } else {
        sexo = 'Feminino'
    }
}