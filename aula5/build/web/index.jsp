<%-- 
    Document   : index
    Created on : 2 de out de 2020, 19:43:12
    Author     : Luciano
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="br.edu.fatecpg.poo.Disciplina"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="WEB-INF/jspf/head-reference.jspf" %>
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <h1>Avaliação P1</h1>
        <h3>Luciano Antonio Rodrigues</h3>
        <h3>RA 1290481912042</h3>
         <%  
            Disciplina instancia = new Disciplina();
        %>
        <h3>Quantidade de disciplinas: <%= instancia.getList().size() %> </h3>
        <%@include file="WEB-INF/jspf/body-reference.jspf" %>
    </body>
</html>
