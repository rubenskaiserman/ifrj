package lista1;

import java.util.Scanner;

public class q5 {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        System.out.print("Insira a metragem: ");
        double m = scan.nextDouble();
        System.out.printf("\nMedida em cm: %.2f\n", m * 100);
        scan.close();
    }
}
