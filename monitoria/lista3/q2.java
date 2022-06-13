package lista3;

import java.util.Scanner;

public class q2 {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        int[] valores = new int[6];
        for(int i = 0; i < 6; i++){
            System.out.printf("Insira o valor número %s: ", i + 1);
            valores[i] = scan.nextInt();
            System.out.println();
        }
        scan.close();
        for(int i = 0; i < 6; i++) {
            System.out.println(valores[i]);
        }
    }
}
