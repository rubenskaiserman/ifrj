package lista3;

public class q19 {
    public static void main(String[] args) {
        int[] vetor = new int[50];
        for(int i = 0; i < 50; i++) {
            vetor[i] = (i + 5 * i) % (i + 1);
            System.out.println(vetor[i]);
        }
    }
}
