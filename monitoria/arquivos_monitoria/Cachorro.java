package arquivos_monitoria;

public class Cachorro {
    public String nome;
    public String raca;
    public int idade;

    public void envelhece(){
        this.idade = this.idade + 1;
    }
    public void mudaNome(String novoNome){
        this.nome = novoNome;
    }
}