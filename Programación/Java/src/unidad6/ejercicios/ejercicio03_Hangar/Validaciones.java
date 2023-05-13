package unidad6.ejercicios.ejercicio03_Hangar;

import java.util.regex.Pattern;

public class Validaciones {

    public static String Matricula(String matricula) throws Exception {
        String patronMatricula = "^\\d{4}\\w{3}$";
        if (!Pattern.compile(patronMatricula).matcher(matricula).find()) {
            throw new Exception("\n! La matrícula no es válida");
        }
        return matricula.toUpperCase();
    }

    public static String Bando(String bando) throws Exception {
        String imperio = "";
        if (bando.equals("y") || bando.equals("s") || bando.equals("si") || bando.equals("yes")) {
            imperio = "true";
        } else if (bando.equals("n") || bando.equals("no")) {
            imperio = "false";
        } else {
            throw new Exception("\n! Bando no válida");
        }
        return imperio;
    }

    public static String Motores(String motores) throws NumberFormatException {
        Integer.parseInt(motores);
        return motores;
    }

    public static String Cilindradas(String cilindradas) throws NumberFormatException {
        Float.parseFloat(cilindradas);
        return cilindradas.replace(",", ".");
    }

}
