package avaliacao02;

import java.util.Scanner;

public class question03 {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        
        int ciclos = 50;
        double nota = 0;
        double media = 0;

        for (int i = 0; i < ciclos; i++) {
            System.out.printf("Nota %d: ", i + 1);
            nota = scan.nextDouble();

            media += nota / ciclos;

            System.out.println();
            System.out.println();
        }

        System.out.printf("Media: %.1f", media);
        System.out.println();
        scan.close();
    }

}
