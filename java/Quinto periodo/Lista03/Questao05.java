package Lista03;

import java.util.Scanner;

public class Questao05 {
    public static void main(String[] args){
        Scanner scan = new Scanner(System.in);

        System.out.print("Nota 01: ");
        Double nota = scan.nextDouble();
        System.out.print("Nota 02: ");
        nota += scan.nextDouble();
        nota /= 2;

        System.out.println();
        if(nota == 10){
            System.out.println("Aprovado com distinção");
        }
        else if(nota >= 7){
            System.out.println("Aprovado");
        }
        else if(nota >= 6 ){
            System.out.println("Reprovado");
        }

        scan.close();
    }
    
}
