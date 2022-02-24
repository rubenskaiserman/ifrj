package Lista03;

import java.util.Scanner;

public class Questao01 {
    public static void main(String[] args){
        Scanner scan = new Scanner(System.in);

        System.out.print("Primeiro Valor: ");
        double a = scan.nextDouble();
        System.out.print("Segundo Valor: ");
        double b = scan.nextDouble();

        double res;
        res = a > b ? a : b;

        System.out.println();
        System.out.println(res);

        scan.close();
    }
}
