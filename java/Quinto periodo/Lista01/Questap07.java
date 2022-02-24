package Lista01;

import java.util.Scanner;

public class Questap07 {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        System.out.print("Insira o lado do quadrado: ");
        Double lado = Double.parseDouble(scan.nextLine());
        Double dobroArea = 2 * lado * lado;
        System.out.printf("O dobro da área do quadrado de lado %.2f m é %.2f m²", lado, dobroArea);
        System.out.println();
        scan.close();
    }
    
}
