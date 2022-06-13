package lista3;

import java.util.Scanner;

public class q4 {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        // Irei assumir que se trata de um vetor numérico dado que é solicitada a soma
        // Irei determinar como double dado que não é dito se tem que ser inteiros
        double[] vetor = new double[8];
        for(int i = 0; i < 8; i++) {
            System.out.printf("\n\nInsira o valor %s: ", i + 1);
            vetor[i] = scan.nextDouble();
        }
        double soma = 0;
        int position;
        for(int i = 0; i < 2; i++){
            System.out.print("Insira a posição: ");
            position = scan.nextInt();
            soma += vetor[position];
        }
        scan.close();
        System.out.printf("\n\nSoma: %.1f", soma);
    }
}
