package Lista03;

import java.util.Scanner;

public class Questao08 {
    public static void main(String[] args){
        Scanner scan = new Scanner(System.in);

        System.out.print("Produto a: ");
        double a = scan.nextDouble();
        System.out.print("Produto b: ");
        double b = scan.nextDouble();
        System.out.print("Produto c: ");
        double c = scan.nextDouble();
        scan.close();

        System.out.println();
        if(a < b && a < c){
            System.out.printf("Compre o produto a");
        } 
        else if(b < c && b < a){
            System.out.printf("Compre o produto b");
        } 
        else{
            System.out.printf("Compre o produto c");
        }
        System.out.println();
    }
    
}
