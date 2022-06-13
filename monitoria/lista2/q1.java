package lista2;

import java.util.Scanner;

public class q1 {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        System.out.print("Insira seu salário por hora: ");
        double sph = scan.nextDouble();
        System.out.print("Insira as horas trabalhadas no mês: ");
        int horas = scan.nextInt();
        System.out.printf("\nSeu salário desse mês é: %.2f\n", sph * horas);
        scan.close();
    }
}
