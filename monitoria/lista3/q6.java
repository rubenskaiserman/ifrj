package lista3;

public class q6 {
    public static double[] maiorMenor(double[] array, int n){
        double maior = array[0];
        double menor = array[1];
        for(int i = 1; i < n; i++){
            if(array[i] > maior) {
                maior = array[i];
            } else if(array[i] < menor) {
                menor = array[i];
            }
        }
        double[] maiorMenor = {maior, menor};
        return maiorMenor;
    }
    public static void main(String[] args) {
        
    }
}