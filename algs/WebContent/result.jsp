<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="br.com.control.FiboNumero"%>
<%@page import="br.com.control.Controller"%>
<%@page import="br.com.control.FibonnacciSequence"%>
<%@include file="/index.html"%>
<!DOCTYPE html>
<html>
<head>
<!-- Bootstrap -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<meta charset="ISO-8859-1">
<title>Teste</title>
</head>
<body>
	<!-- instanciando a classe -->
	<%
		FiboNumero fib = new FiboNumero();
		FibonnacciSequence fb = new FibonnacciSequence();
	%>

	<!-- capturando o n�mero digitado -->
	<%
		String num = request.getParameter("fib");
		Integer numconvert = Integer.parseInt(num);
		//valida��o do n�mero
		if (!num.matches("[0-9]")) {
			out.println("Digite um n�mero");
		} else {
			fib.setFibNum(numconvert);
		}
	%>
	<!-- sa�da -->
	<div class="container">
		<h4 style="margin-left: 15px">
			<%
				out.println("O n�mero digitado foi: " + fib.getFibNum());
			%>
		</h4>
		<h3 style="margin-left: 15px">
			<%
				int i = fb.fiboAux(fib.getFibNum());
				out.println("�ltimo n�mero da sequ�ncia: " + i);
			%>
		</h3>
	</div>

</body>
</html>