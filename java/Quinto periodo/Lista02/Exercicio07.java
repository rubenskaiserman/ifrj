package Lista02;

import java.util.Scanner;

public class Exercicio07 {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
            System.out.print("Area de pintura: ");
            double area = Double.parseDouble(scan.nextLine());
            double numeroDeLatas = Math.ceil((area/3)/18);
            double valorFinal = numeroDeLatas * 80;
            System.out.printf("Número de latas: %.0f", numeroDeLatas );
            System.out.println();
            System.out.printf("Valor final: %.2f", valorFinal );
            System.out.println();
        scan.close();
        
    }    
}
