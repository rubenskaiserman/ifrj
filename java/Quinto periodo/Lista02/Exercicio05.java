package Lista02;

import java.util.Scanner;

public class Exercicio05 {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
            System.out.print("Insira sua altura: ");
            double h = Double.parseDouble(scan.nextLine());
            System.out.printf("Peso ideal: %.1f", 72.7 * h - 58 );
        scan.close();
    }   
    
}
