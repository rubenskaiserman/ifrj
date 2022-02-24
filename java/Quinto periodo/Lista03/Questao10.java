package Lista03;

import java.util.Scanner;

public class Questao10 {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);

        System.out.print("Letra: ");
        char letra = scan.next().toLowerCase().toCharArray()[0];

        System.out.println();
        if(letra == 'm'){
            System.out.println("Bom dia!");
        }
        else if(letra == 'v'){
            System.out.println("Boa tarde!");
        }
        else if(letra == 'n'){
            System.out.println("Boa noite!");
        }
        else{
            System.out.println("Valor inválido");
        }

        scan.close();
    }
    
}
