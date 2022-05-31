package lista1;

import java.util.Scanner;

public class q4 {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        double somaNotas = 0;
        for(int i = 1; i <= 4; i++){
            System.out.printf("\nInsira a nota %s: ", i);
            somaNotas += scan.nextDouble();
        }
        System.out.printf("\nA média é: %s\n", somaNotas/4);
        scan.close();
    }
}
