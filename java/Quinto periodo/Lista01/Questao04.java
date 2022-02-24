package Lista01;

import java.util.Scanner;

public class Questao04{
    public static void main(String[] args){
        Scanner scan = new Scanner(System.in);
        int i = 0;
        double media = 0;
        while(i < 4){
            System.out.printf("Insira sua %d nota: ", i + 1);
            media+= Double.parseDouble(scan.nextLine())/4;
            i++;
        }
        System.out.printf("Sua média é: %.1f", media);
        System.out.println();
        scan.close();
    }
}