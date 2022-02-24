package Lista03;

import java.util.Scanner;

public class Questao09 {
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
        double w = 0;
        double y = 0;
        if(a > b && b > c){
            x = a;
            w = b;
            y = c;
        }
        else if(b > a && a > c){
            x = b;
            w = a;
            y = c;
        }
        else if(a > c && c > b){
            x = a;
            w = c;
            y = b;
        }
        else if(b > c && c > a){
            x = b;
            w = c;
            y = a;
        }
        else if(c > a && a > b){
            x = c;
            w = a;
            y = b;
        }
        else if(c > b && b > a){
            x = c;
            w = b;
            y = a;
        }

        scan.close();
        System.out.println(y + " " + w + " " + x);
    }
}
