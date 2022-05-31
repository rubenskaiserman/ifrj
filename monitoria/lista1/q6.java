package lista1;

import java.util.Scanner;

public class q6 {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        System.out.print("Insira o raio: ");
        double r = scan.nextDouble();
        System.out.printf("\nÁrea: %.2f\n", Math.PI * r * r);
        scan.close();
    }
}
