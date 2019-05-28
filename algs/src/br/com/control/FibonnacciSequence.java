package br.com.control;

public class FibonnacciSequence extends FiboNumero {
	public int fiboAux(int n) {
		//variáveis
		int numAtual = 0;
		int numAnterior = 0;
		
		//n = valor inserido na index, no caso, fib.getFibNum()
		for (int i = 1; i <= n; i++) {

			if (i == 1) {
				numAtual = 1;
				numAnterior = 0;
			} else {
				numAtual += numAnterior;
				numAnterior = numAtual - numAnterior;
			}
		}
		return numAtual;
	}

}
