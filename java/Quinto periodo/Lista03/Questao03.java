package Lista03;

import java.util.Scanner;

public class Questao03 {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);

        System.out.print("Letra: ");
        char letra = scan.next().toLowerCase().toCharArray()[0];

        System.out.println();
        if(letra == 'f'){
            System.out.println("F - Feminino");
        }
        else if(letra == 'm'){
            System.out.println("M - Masculino");
        }
        else{
            System.out.println("Valor inválido");
        }

        scan.close();
    }
    
}
