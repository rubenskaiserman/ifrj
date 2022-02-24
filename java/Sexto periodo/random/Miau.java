package random;
import java.util.Scanner;

public class Miau{
    public static void main(String args[]){
        Gato gato = new Gato("white", 18.7, 6);
        Scanner scan = new Scanner( System.in);

        System.out.print("How Many Times Will The cat Miau? ");
        int miau = scan.nextInt();
        gato.miauSomeTimes(miau);
        scan.close();
    }
}