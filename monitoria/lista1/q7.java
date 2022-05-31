package lista1;

import java.util.Scanner;

public class q7 {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        System.out.print("Insira a altura do quadrado: ");
        double h = scan.nextDouble();
        System.out.print("\nInsira a largura do quadrado: ");
        double l = scan.nextDouble();
        System.out.printf("\nO dobro da área é: %.2f\n", 2 * h * l);
        scan.close();
    }
}
