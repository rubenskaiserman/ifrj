package lista3;

public class q37 {
    public static int[] orderArray(int[] array){
        final int LEN = 11;
        int[] firstBit = {array[0],array[1],array[2],array[3],array[4],array[5]};
        int[] secondBit = {array[10], array[9], array[8], array[7], array[6]};
        int[] result = new int[LEN];
        int i = 0;
        int j = 0;
        int k = 0;
        while(i < 11 && j < 5) {
            if(secondBit[j] < firstBit[k]){
                result[i] = secondBit[j];
                j++;
                i++;
            }
            else if(secondBit[j] > firstBit[k]){
                result[i] = firstBit[k];
                k++;
                i++;
            }
            else {
                result[i] = firstBit[k];
                result[i + 1] = secondBit[j];
                j++;
                k++;
                i += 2; 
            }
        }
        while(k < 6){
            result[i] = firstBit[k];
            i++;
            k++;
        }
        return result;
    }
}
