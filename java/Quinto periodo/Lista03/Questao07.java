package Lista03;

import java.util.Scanner;

public class Questao07 {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);

        System.out.print("a: ");
        double a = scan.nextDouble();
        System.out.print("b: ");
        double b = scan.nextDouble();
        System.out.print("c: ");
        double c = scan.nextDouble();
        scan.close();
        double x = 0;
        double y = 0;
        if(a > b && b > c){
            x = a;
            y = c;
        }
        else if(b > a && a > c){
            x = b;
            y = c;
        }
        else if(a > c && c > b){
            x = a;
            y = b;
        }
        else if(b > c && c > a){
            x = b;
            y = a;
        }
        else if(c > a && a > b){
            x = c;
            y = b;
        }
        else if(c > b && b > a){
            x = c;
            y = a;
        }

        scan.close();
        System.out.printf("%.2f é o maior e %.2f é o menor", x, y);
    }
}
