package lista3;

import java.util.Scanner;

public class q5 {

    public static int pares(int[] array, int n){ // array=array de inteiros, n=length array
        int pares = 0;
        for(int i = 0; i < n; i++){
            if(array[i] % 2 == 0) pares++;
        }
        return pares;
    } 
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        final int LEN = 10;
        int[] vetor = new int[LEN];
        for(int i = 0; i < LEN; i++) {
            vetor[i] = scan.nextInt();
        }
        int pares = pares(vetor, LEN);
        System.out.printf("\n\n Existem %s valores pares no array\n\n", pares);
        scan.close();
    }
}
