package Lista03;

import java.util.Scanner;

public class Questao11 {
    public static void main(String[] args) {
        System.out.println();
        Scanner scan = new Scanner(System.in);

        int percentage = 5;        
        double newSalary;

        System.out.print("Salary: ");
        double salary = scan.nextDouble();
        
        if(salary <= 280){
            percentage = 20;
        }
        else if(salary <= 700){
            percentage = 15;
        }
        else if(salary <= 1500 ){
            percentage = 10;
        }

        scan.close();

        newSalary = salary + salary * percentage/100;
        System.out.println();
        System.out.printf("Salário anterior: %.2f\nAumento: %d\nNovo salário: %.2f", salary, percentage, newSalary);

    }
    
}
