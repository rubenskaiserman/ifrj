package Lista02;

import java.util.Scanner;

public class Exercicio01 {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        System.out.print("Insira seu valor por hora: ");
        double valorHora = Double.parseDouble(scan.nextLine());
        System.out.print("Insira seu total de horas trabalhadas: ");
        int totalHoras = Integer.parseInt(scan.nextLine());
        System.out.printf("Seu salário é: %.2f", totalHoras * valorHora);
        System.out.println();
        scan.close();
    }
    
}
