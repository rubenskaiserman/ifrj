package random;

public class Gato{
    String color;
    double weight;
    int voiceLevel;

    public Gato(String color, double weight, int voiceLevel ){
        this.color = color;
        this.weight = weight;
        this.voiceLevel = voiceLevel;
    }

    public void setColor(String color){
        this.color = color;
    }
    public void setWeight(double weight){
        this.weight = weight;
    }
    public void setVoiceLevel(int voiceLevel){
        this.voiceLevel = voiceLevel;
    }

    void miauSomeTimes(int miau){
        for(var i = 0; i < miau; i++){
            System.out.println("Miau!");
        }
    }
}