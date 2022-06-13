package lista3;

import java.util.Scanner;

public class q3 {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        double[] bases = new double[10];
        double[] squares = new double[10];
        for(int i = 0; i < 10; i++){
            System.out.printf("\n\nInsira o valor número %s: ", i + 1);
            bases[i] = scan.nextDouble();
            squares[i] = bases[i] * bases[i];
        }
        scan.close();
        for(int i = 0; i < 10; i++) {
            System.out.println(bases[i]);
            System.out.println(squares[i]);
        }
    }
}
