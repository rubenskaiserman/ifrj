package lista1;

import java.util.Scanner;

public class q3 {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        System.out.print("Insira o primeiro número: ");
        int a = scan.nextInt();
        System.out.print("\nInsira o segundo número: ");
        int b = scan.nextInt();
        System.out.printf("\nA soma é: %s\n", a + b);
        scan.close();
    }

}
