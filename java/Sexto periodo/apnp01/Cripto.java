package apnp01;

public class Cripto{
    private String nome;
    private String sigla;
    private double preco_anterior = 0; //Java usa camelCase e não snake_case para atributos
    private double preco_atual = 0; //Coloquei snake_case porque está assim na lista
    private String website = "Undefiened Website";

    public Cripto(String nome, String sigla){
        this.nome = nome;
        this.sigla = sigla;
    }
    public Cripto(String nome, String sigla, double preco){
        this.nome = nome;
        this.sigla = sigla;
        this.preco_atual = preco;
    }
    public Cripto(String nome, String sigla, String website){
        this.nome = nome;
        this.sigla = sigla;
        this.website = website;
    }

    public void setNome(String nome){
        this.nome = nome;
    }
    public void setSigla(String sigla){
        this.sigla = sigla;
    }
    public void setPrecoAnterior(double precoAnterior){ //Não acho coerente esse atributo ter um setter mas tudo bem.
        this.preco_anterior = precoAnterior;
    }
    public void setPreco(double preco){
        if(preco != preco_atual && preco > 0){
            this.preco_anterior = preco_atual;
            this.preco_atual = preco;
        }
    }
    public void setWebsite(String website){
        this.website = website;
    }

    public String getNome(){
        return this.nome;
    }
    public String getSigla(){
        return this.sigla;
    }
    public double getPrecoAnterior(){
        return this.preco_anterior;
    }
    public double getPrecoAtual(){
        return this.preco_atual;
    }
    public String getWebsite(){
        return this.website;
    }

    public void verificarPreco(){ //Um nome mais coerente seria verificarFlutuacao. Verificar preço remete a ideia de getPreco()
        if (this.preco_atual - preco_anterior > 0){
            System.out.println("O preço subiu");
        }
        else {
            System.out.println("O preço caiu");
        }
    }
    public static double getPrecoConvertidoParaDolar(double parametro){ //Esse é o nome de método mais desnecessáriamente grande que eu já vi
        return parametro / 5.70;
    }

    public static void main(String[] args){
        Cripto cripto1 = new Cripto("cripto1", "cpt1");
        Cripto cripto2 = new Cripto("cripto2", "cpt2", 2.70);
        Cripto cripto3 = new Cripto("cripto3", "cpt3", "https://siteinexistente.com.br");

        cripto1.setNome("cripto1_mudada");
        cripto1.setSigla("c1md");

        System.out.println("Cripto 1: " + cripto1.getNome());
        System.out.println("Cripto 2: " + cripto2.getNome());
        System.out.println("Cripto 3: " + cripto3.getNome());

        cripto1.setPreco(26.50); 
        cripto2.setPreco(55.20);
        cripto3.setPreco(12.00);

        // Cripto criptos[] = {cripto1, cripto2, cripto3};
        // String url = "";
        // double biggest = 0;
        // for(Cripto cripto : criptos){ //Foi o melhor design de código pra isso que eu consegui pensar
        //     if(biggest < cripto.getPrecoAtual()){ 
        //         biggest = cripto.preco_atual; 
        //         url = cripto.getWebsite();
        //     }   
        // }
        // System.out.println(url); //Acabei de perceber que você pediu pra comparar só as duas primeiras criptos
        // //Ok, trabalho quase no lixo. Vou mandar isso comentado do mesmo jeito

        cripto1.setWebsite("cripto1.com");
        cripto2.setWebsite("cripto2.net");
        if(cripto1.getPrecoAtual() > cripto2.getPrecoAtual()){
            System.out.println("Site da cripto 1: " + cripto1.getWebsite());
        }
        else if(cripto2.getPrecoAtual() > cripto1.getPrecoAtual()) {
            System.out.println("Site da cripto 2: " + cripto2.getWebsite());
        } //Você não pediu o caso delas serem iguais

        System.out.println("Sigla da cripto 3: " + cripto3.getSigla());

        double precoAnteriorDolar = getPrecoConvertidoParaDolar(cripto2.preco_anterior);
        System.out.printf("Cripto 2: US: $%.2f",precoAnteriorDolar);
        System.out.println();
    }
}