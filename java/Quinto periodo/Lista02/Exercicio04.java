package Lista02;

import java.util.Scanner;

public class Exercicio04 {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
            System.out.print("Primeiro número inteiro: ");
            int x = Integer.parseInt(scan.nextLine());
            System.out.print("Segundo número inteiro: ");
            int y = Integer.parseInt(scan.nextLine());
            System.out.print("Primeiro número inteiro: ");
            double z = Double.parseDouble(scan.nextLine());
            
        scan.close();
        System.out.printf("A: %.1f", 2 * x + y/2.0 );
        System.out.println();
        System.out.printf("B: %.1f", 3 * x + z);
        System.out.println();
        System.out.printf("C: %.3f",z * z * z );
        System.out.println();
    }
}
