package pack00_Exam;

public class Recuperacion2_Coreccion {
    
    public static void main(String[] args) {
 
        int num=(int)(Math.random()*80)+20, contador=1;

        while(contador<num) {
            System.out.print(contador+" ");
            contador++;
        }

        // do {
        //     System.out.print(contador+" ");
        //     contador++;
        // } while(contador<num);

    } //fin main
    
} //fin class