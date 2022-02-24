package Lista03;

import java.util.Scanner;

public class Questao13 {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);

        System.out.print("Número[1, 7]: ");
        int number = scan.nextInt();
        scan.close();
        
        String day = "";

        switch(number){
            case 1:
                day = "Sunday";
                break;
            case 2:
                day = "Monday";
                break;
            case 3:
                day = "Tuesday";
                break;
            case 4:
                day = "Wednesday";
                break;
            case 5: 
                day = "Thursday";
                break;
            case 6:
                day = "friday";
                break;
            case 7:
                day = "Saturday";
                break;
            default:
                System.out.println("Valor inválido");
        }
        System.out.println();
        System.out.println("Day: " + day);
        
    }
}
