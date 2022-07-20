package arquivos_monitoria;

public class Teste {
    public static void main(String[] args) {
        Cachorro cachorro1 = new Cachorro();
        cachorro1.nome = "Ralph";
        cachorro1.raca = "poodle";
        cachorro1.idade = 2;

        System.out.println(cachorro1.nome);
        System.out.println(cachorro1.raca);
        System.out.println(cachorro1.idade);

        cachorro1.envelhece();
        System.out.println(cachorro1.idade);

        cachorro1.mudaNome("Dogo");
    }
}
