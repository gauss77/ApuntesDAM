package pack01_Exercises;

import java.util.Scanner;

public class Exercise04_EjerciciosRepaso3 {

    public static void main(String[] args) {
        
        Scanner ent=new Scanner(System.in);
        int asignaturas=0;
        float nota=0.0f,media=0.0f;

        System.out.print("Escriba el numero de asignaturas: ");
        asignaturas=ent.nextInt();

        for(int i=1;i<=asignaturas;i++) {
            System.out.print("Nota de la "+i+"º asignatura: ");
            nota+=Float.parseFloat(ent.next().replace(',', '.'));
        }
        media=nota/asignaturas;

        System.out.println("\nLa media aritmetica es de "+media);
        System.out.println("La nota media es "+mensajeMedia(media));

        ent.close();

    } //fin main

    public static String mensajeMedia(float media) {

        String mensaje="";

        if(media<5) {
            mensaje="insuficiente";
        } else if(media>=5&&media<6) {
            mensaje="suficiente";
        } else if(media>=6&&media<7.5) {
            mensaje="buena";
        } else if(media>=7.5&&media<9) {
            mensaje="notable";
        } else {
            mensaje="sobresaliente";
        }
        return mensaje;

    } //fin mensajeMedia

} //fin class