package pack01_Exercises;

import java.util.Scanner;

public class Exercise00_EjerciciosScanner6 {

    public static void main(String[] args) {
        
        int numGenerado=(int)(Math.random()*101);
        Scanner entrada=new Scanner(System.in);

        for(int i=5;i>0;i--) {
            System.out.print("Introduce un numero: ");
            int num=entrada.nextInt();
            if(i==1 && num!=numGenerado) {
                System.out.println("No adivinaste el numero -> "+numGenerado);
            } else {
                if(num>numGenerado) {
                    System.out.println("Se ha pasado");
                } else if(num<numGenerado) {
                    System.out.println("Se ha quedado corto");
                } else {
                    System.out.println("Adivino el numero");
                    break;
                }
            }
        }

    } //fin main
    
} //fin class