package TrabalhoFinal;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Scanner;


public class Cadastro{

    //Função para que o usuário selecione sua ação
    //Retorna um inteiro de acordo com a opção selecionada
    private static int getOption(Scanner scan){
     boolean test = false;
     int res = -1;
        
        while(!test){
            try {
                System.out.println("1 - Inserir novo Cliente");
                System.out.println("2 - Remover registro de cliente");
                System.out.println("3 - Alterar registro de cliente");
                System.out.println("4 - Ver registro do cliente");
                System.out.println("0 - Verificar todos os clientes");
                System.out.println("\n\n");
                
                System.out.print("Selecione: ");
                res = scan.nextInt();
                test = res <= 4 && res >=0;
                if(!test){
                    System.out.println("Valor não identificado, tente novamente\n \n \n \n \n");
                }
                
            } catch (Exception e) {
                System.out.println("Valor não identificado, tente novamente");
            }

        }
        return res;
    }

    //Função para a criação de um cliente no banco de dados
    private static Cliente criarCliente(Scanner scanner){
        scanner.nextLine();
        System.out.print("CPF do cliente: ");
        String cpf = scanner.nextLine();
        System.out.println();
        System.out.print("Nome do Cliente: ");
        String nome = scanner.nextLine();
        System.out.println();
        System.out.print("Email do cliente: ");
        String email = scanner.nextLine();
        System.out.println();
        System.out.print("Plano do cliente(Padrão, Ouro, Diamante ou Platina): ");
        String plano = scanner.nextLine();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        String dataInscricao = formatter.format(LocalDate.now());

        return new Cliente(cpf, nome, email, dataInscricao, plano);
    }
    public static void main(String[] args) throws IOException {
        while(true){
            try {  
                String cpf;
    
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/cadastro_clientes", "registrador", "loucuras_de_amor");
                Statement cmd = conn.createStatement();
                Scanner scan = new Scanner(System.in);
                int op = getOption(scan);
    
                switch(op){
                    case 1:
                        Cliente cliente = criarCliente(scan);
                        Cliente.registrarCliente(cmd, cliente);
    
                        break;
                    case 2:
                        System.out.print("Insira o cpf do cliente (Apenas os números): ");
                        cpf = scan.next();
                        Cliente.removerCliente(cmd, cpf);
                        break;
                    case 3:
                        System.out.print("Insira o cpf do cliente (Apenas os números): ");
                        cpf = scan.next();
                        System.out.println();
                        System.out.print("Insira o dado que deseja modificar(cpf_cliente, email, nome, plano, data_inscricao): ");
                        String coluna = scan.next();
                        System.out.println();
                        System.out.print("Insira o novo valor: ");
                        scan.nextLine();
                        String novoValor = scan.nextLine();
                        Cliente.modificarCliente(cmd, cpf, coluna, novoValor);
                        break;
                    case 4:
                        System.out.print("Insira o cpf do cliente (Apenas os números): ");
                        cpf = scan.next();
                        ResultSet res = Cliente.selectCliente(cmd, cpf);
                        System.out.println();
                        System.out.println("_____________________________________________________________________________");
                        while(res.next()){
                            System.out.printf("cpf: %s \n", res.getString("cpf_cliente"));
                            System.out.printf("Nome: %s \n", res.getString("nome"));
                            System.out.printf("Email: %s \n", res.getString("email"));
                            System.out.printf("Plano: %s \n", res.getString("plano"));
                            System.out.printf("DataInscriçao: %s \n", res.getString("data_inscricao"));
                        }
                        break;
                    case 0:
                        System.out.println("_____________________________________________________________________________");
                        ResultSet _res = Cliente.getAllClients(cmd);
                        while(_res.next()){
                            System.out.printf("cpf: %s \n", _res.getString("cpf_cliente"));
                            System.out.printf("Nome: %s \n", _res.getString("nome"));
                            System.out.printf("Email: %s \n", _res.getString("email"));
                            System.out.printf("Plano: %s \n", _res.getString("plano"));
                            System.out.printf("DataInscriçao: %s \n", _res.getString("data_inscricao"));
                            System.out.println();
                        }
                }
                System.out.println("\n\n\n Press enter para concluir operação:");
                scan.nextLine(); // Aparentemente o java tem um pequeno problema com \n e acaba pulando o nextLine()
                scan.nextLine();
                System.out.print("\033[H\033[2J"); //Não sei se isso funciona no windows mas é pra limpar o terminal
    
    
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}