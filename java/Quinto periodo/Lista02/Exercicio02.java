package Lista02;

import java.util.Scanner;

public class Exercicio02 {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        System.out.print("Insira a temperatura em Fahrenheit: ");
        double f = Double.parseDouble(scan.nextLine());
        double c = (5/9.0 * (f - 32));
        System.out.printf("A temperatura em celcius é: %.1f ", c);
        System.out.println();
        scan.close();
    }
    
}
