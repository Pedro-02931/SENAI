public class Imc {
    static String nomeDoPaciente;
    static int pesoDoPaciente;
    static double alturaDoPaciente;
    static double resultadoIMC;

    public static void main(String[]) args {
        System.out.println("Olá Mundo");
	calcularIMC;
    }

    public static void calcularImc(){
	nomeDoPaciente = "Ana Maria";
	pesoDoPaciente = 67;
	alturaDoPaciente = 1.68;

	resultadoIMC = pesoDoPaciente / (alturaDoPaciente * alturaDoPaciente);

	System.out.println(resultadoIMC);
    }

    public static void classificarIMC() {

    }

}