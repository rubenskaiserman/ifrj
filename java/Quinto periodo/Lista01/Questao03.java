package Lista01;

import java.util.Scanner;

public class Questao03 {
    public static void main(String[] args){
        Scanner scan = new Scanner(System.in);

        System.out.print("Insira um número: ");
        int x = Integer.parseInt(scan.nextLine());
        System.out.print("Insira outro número: ");
        int y = Integer.parseInt(scan.nextLine());
        System.out.printf("Soma: %d", x + y);
        System.out.println();

        scan.close();
    }
    
}
