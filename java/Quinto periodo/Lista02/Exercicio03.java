package Lista02;

import java.util.Scanner;

public class Exercicio03 {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        System.out.print("Insira a temperatura em celcius: ");
        double c = Double.parseDouble(scan.nextLine());
        double f = (c*9/5.0) + 32;
        System.out.printf("A temperatura em fahrenheit é: %.1f ", f);
        System.out.println();
        scan.close();
    }
    
}
