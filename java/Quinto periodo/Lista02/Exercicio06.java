package Lista02;

import java.util.Scanner;

public class Exercicio06 {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
            System.out.println("Insira seu valor por hora: ");
            double valorHora = Double.parseDouble(scan.nextLine());
            System.out.println("Número de horas trabalhadas: ");
            double numeroHoras = Double.parseDouble(scan.nextLine());            
        scan.close();
        System.out.printf("Salário liquido: %.2f", valorHora * numeroHoras * 0.76);
    }

}
