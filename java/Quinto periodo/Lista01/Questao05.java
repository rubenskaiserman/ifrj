package Lista01;

import java.util.Scanner;

public class Questao05 {
    public static void main(String[] args){
        Scanner scan = new Scanner(System.in);
        System.out.print("Insira o valor em métros: ");
        double centimeters = Double.parseDouble(scan.nextLine())*100;
        System.out.printf("O valor é: %.1f cm", centimeters);
        System.out.println();
        scan.close();
    }
}
