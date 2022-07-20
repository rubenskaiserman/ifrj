package exemplo;

public class Funcionario{
    private String nome;
    private String dataNasc;
    private String rg;
    private String cpf;
    private String tipoCadastro;
    private String telefone;
    private String celular;
    private String ramal;
    private String email;
    private String cnh;
    private double salario;

    public String getDataNasc() {
        return dataNasc;
    }
    public void setDataNasc(String dataNasc) {
        this.dataNasc = dataNasc;
    }
    public String getRg() {
        return rg;
    }
    public void setRg(String rg) {
        this.rg = rg;
    }
    public String getCpf() {
        return cpf;
    }
    public void setCpf(String cpf) {
        this.cpf = cpf;
    }
    public String getTipoCadastro() {
        return tipoCadastro;
    }
    public void setTipoCadastro(String tipoCadastro) {
        if(tipoCadastro.equals("Vip") || tipoCadastro.equals("Comum")){
            this.tipoCadastro = tipoCadastro;
        } else {
            System.out.println("Não deu pra inserir, bro");
        }
    }
    public String getTelefone() {
        return telefone;
    }
    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }
    public String getCelular() {
        return celular;
    }
    public void setCelular(String celular) {
        this.celular = celular;
    }
    public String getRamal() {
        return ramal;
    }
    public void setRamal(String ramal) {
        if(ramal.equals("0001")){
            this.ramal = ramal;
        }
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public String getCnh() {
        return cnh;
    }
    public void setCnh(String cnh) {
        this.cnh = cnh;
    }
    public Funcionario(){

    }
    public Funcionario(String nome, String cpf, String dataNasc){
        this.nome = nome;
        this.cpf = cpf;
        this.dataNasc = dataNasc;
    }

    public void setNome(String nome){
        this.nome = nome;
    }
    public String getNome(){
        return this.nome;
    }
    public double getSalario(){
        return this.salario;
    }
    public void setSalario(double salario){
        this.salario = salario;
    }

    public int calcularIdade(int anoNasc){
        return 2022 - anoNasc;

    }

    public void demitir(){
        this.nome = "Demitido";
        this.dataNasc = null;
        this.rg = null;
        this.cpf = null;
        this.tipoCadastro = null;
        this.telefone = null;
        this.celular = null;
        this.ramal = null;
        this.email = null;
        this.cnh = null;
        this.salario = 0;
    }
}