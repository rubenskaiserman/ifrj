//Rubens Guedes Kaiserman
//INF 251

class Fornecedor{
    constructor(nomeFornecedor, rua, numeroEndereco, bairro, cidade, estado, cep, email, cnpj, dataAberturaEmpresa){
        this.nomeFornecedor = nomeFornecedor
        this.rua = rua
        this.numeroEndereco = numeroEndereco
        this.bairro = bairro
        this.cidade = cidade
        this.estado = estado
        this.cep = cep
        this.email = email
        this.cnpj = cnpj
        this.dataAberturaEmpresa = dataAberturaEmpresa
    }

    mostraDados(idTag){
        document.getElementById(idTag).innerHTML = 'Nome: ' + this.nomeFornecedor + '<br> Rua: ' + this.rua + '<br> Numero:' + this.numeroEndereco + '<br> Bairro: ' + this.bairro + '<br> Cidade: ' + this.cidade + '<br> Estado: ' + this.estado + '<br> CEP: ' + this.cep + '<br> Email: ' + this.email + '<br> CNPJ: ' + this.cnpj + '<br> Data de Abertura da Empresa: ' + this.dataAberturaEmpresa
        // document.getElementById(idTag).innerHTML = 'Batata'
        // console.log('Hello')
    } 
}

var fornecedor = new Fornecedor('Rubens Guedes Kaiserman', 'Travessa Vera Cruz', '13', 'Praia dos Anjos', 'Arraial do Cabo', 'RJ', 28930000, 'rubskaiserman@gmail.com', 123456789, new Date('2003-12-03T00:00'))
function vaiVaiVai(id){
    fornecedor.mostraDados(id)
}