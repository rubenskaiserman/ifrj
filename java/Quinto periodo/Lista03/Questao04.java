package Lista03;

import java.util.Scanner;

public class Questao04 {
    public static void main(String[] args) {
        System.out.println();
        Scanner scan = new Scanner(System.in);

        char[] vowels = {'a', 'e', 'i', 'o', 'u'};

        System.out.print("Letra: ");
        char letter = scan.next().toLowerCase().toCharArray()[0];
        boolean test = false;
        for (char c : vowels) {
            if(letter == c){
                test = true;
                break;
            }
        }

        if(test){
            System.out.println("É uma vogal");
        }
        else{
            System.out.println("Não é uma vogal");
        }

        scan.close();
    }
    
}
