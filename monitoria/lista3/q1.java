package lista3;

public class q1 {
    public static void main(String[] args) {
        int[] a = {1, 0, 5, -2, -5, 7};
        int soma3 = a[0] + a[1] + a[5];
        System.out.printf("\nA soma entre os valores é: %s\n\n", soma3);
        
        a[4] = 100;

        for(int i = 0; i < 6; i++){
            System.out.println(a[i]);
        }
    }
}
