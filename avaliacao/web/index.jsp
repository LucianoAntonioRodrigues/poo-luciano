<%-- 
    Document   : index
    Created on : 6 de out de 2020, 18:52:48
    Author     : Luciano
--%>

<%@page import="br.edu.fatecpg.poo.Disciplina"%>
<%@page import="br.edu.fatecpg.poo.web.DbListener"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Avaliação P1</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/head-reference_1.jspf" %>
        <div>
        <h1>Início</h1>
        <h2>Luciano Antonio Rodrigues</h2>
        <h3>RA: 1290481912042</h3>
        <h4>Quantidade de Matérias Matriculadas: <%= Disciplina.getList().size()%> </h4>
        </div>

        <%@include file="WEB-INF/jspf/body-reference_1.jspf" %>
    </body>
</html>
