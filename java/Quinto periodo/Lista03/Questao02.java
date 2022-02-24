package Lista03;

import java.util.Scanner;

public class Questao02 {
    public static void main(String[] args) {
        System.out.println();

        Scanner scan = new Scanner(System.in);
        System.out.print("Número: ");
        Double value = scan.nextDouble();

        System.out.println();
        if(value > 0){
            System.out.println("Positivo");
        }
        else if(value < 0){
            System.out.println("Negativo");
        }

        scan.close();
    }
}
