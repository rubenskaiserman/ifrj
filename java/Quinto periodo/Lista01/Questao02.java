package Lista01;
import java.util.Scanner;

public class Questao02 {
    public static void main(String[] args){
        Scanner scan = new Scanner(System.in);

        System.out.println("Digite um número: ");
        int num = Integer.parseInt(scan.nextLine());
        System.out.printf("O número informado foi: %d", num);

        scan.close();
    }
    
}
