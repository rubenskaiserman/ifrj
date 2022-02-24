package Lista01;

import java.util.Scanner;

public class Questao06 {
    public static void main(String[] args) {
        final double PI = 3.14159; 
        Scanner scan = new Scanner(System.in);
        System.out.print("Insira o raio do círculo (em metros): ");
        double r = Double.parseDouble(scan.nextLine());
        System.out.printf("Area do circulo: %.2f m²", PI * r * r);
        System.out.println();
        scan.close();
    }
}
