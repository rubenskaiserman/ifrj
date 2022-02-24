package Lista03;

import java.util.Scanner;

public class Questao06 {
    public static void main(String[] args){
        Scanner scan = new Scanner(System.in);

        System.out.print("a: ");
        double a = scan.nextDouble();
        System.out.print("b: ");
        double b = scan.nextDouble();
        System.out.print("c: ");
        double c = scan.nextDouble();
        scan.close();

        System.out.println();
        if(a > b && a > c){
            System.out.printf("%.2f é o maior", a);
        } 
        else if(b > c && b > a){
            System.out.printf("%.2f é o maior", b);
        } 
        else{
            System.out.printf("%.2f é o maior", c);
        }
    }
    
}
