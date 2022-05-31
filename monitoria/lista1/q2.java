package lista1;

import java.util.Scanner;

public class q2 {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        
        System.out.print("Insira o número: ");
        int response = scan.nextInt();

        System.out.printf("\nO número informado foi: %s\n", response);
        
        scan.close();
    }
    
}
