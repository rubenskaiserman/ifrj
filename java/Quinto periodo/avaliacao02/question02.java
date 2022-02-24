package avaliacao02;

import java.util.Scanner;

public class question02 {
    public static void main(String[] args){
        Scanner scan = new Scanner(System.in);

        System.out.print("Valor: ");
        int n = (int) scan.nextDouble();

        for(var i = 1; i <= n; i += 2){
            System.out.println(i);
        }

        scan.close();
    }
    
}
