package avaliacao01;

import java.util.Scanner;

public class AreaTrapezio {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
            System.out.print("b: ");
            double b = scan.nextInt();
            System.out.print("B: ");
            double B = scan.nextInt();
            System.out.print("h: ");
            double h = scan.nextInt();
            double area = ((B+b)*h)/2;

            System.out.println();
            System.out.printf("Área: %.2f m²", area);
            System.out.println();

        scan.close();
    }    
    
    
}
