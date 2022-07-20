package exemplo;

import java.util.Scanner;

public class Principal {
    public static void main(String[] args) {
        // Funcionario funcionario = new Funcionario();
        // System.out.println(funcionario.calcularIdade(2003));
        Scanner scan = new Scanner(System.in);

        Funcionario funcionarioDefault = new Funcionario();
        Funcionario funcionarios[] = new Funcionario[10];
        for(int i = 0; i < 3; i++){
            System.out.print("Insira o nome do funcionario: ");
            String nome = scan.nextLine();
            System.out.print("Insira o cpf do funcionario: ");
            String cpf = scan.nextLine();
            System.out.print("Insira a data de nascimento do funcionario: ");
            String dataNasc = scan.nextLine();

            funcionarioDefault.setNome(nome);
            funcionarioDefault.setCpf(cpf);
            funcionarioDefault.setDataNasc(dataNasc);

            funcionarios[i] = funcionarioDefault;
        }
        for(int i = 0; i < 3; i++){
            System.out.println(funcionarios[i].getNome());
            System.out.println(funcionarios[i].getCelular());
            System.out.println(funcionarios[i].getCnh());
            System.out.println(funcionarios[i].getCpf());
            System.out.println(funcionarios[i].getDataNasc());
            System.out.println(funcionarios[i].getEmail());
            System.out.println(funcionarios[i].getRamal());
            System.out.println(funcionarios[i].getRg());
            System.out.println(funcionarios[i].getSalario());
            System.out.println(funcionarios[i].getTelefone());
            System.out.println(funcionarios[i].getTipoCadastro());
        }
    }
}
