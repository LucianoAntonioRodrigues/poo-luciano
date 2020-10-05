<%-- 
    Document   : index
    Created on : 5 de out de 2020, 13:25:10
    Author     : Luciano
--%>

<%@page import="br.edu.fatecpg.poo.p1.Disciplina"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="WEB-INF/jspf/head-reference_1.jspf" %>
        <title>Avaliação P1</title>
    </head>
    <body>
        
        <%@include file="WEB-INF/jspf/menu_1.jspf" %>
        <div class="container-fluid">
            
        <h1>Início</h1>  
        <h2>Luciano Antonio Rodrigues</h2>  
        <h3>RA: 1290481912042</h3>  
        <%
            Disciplina matriz = new Disciplina("nome","ementa","ciclo");
        %>
        <h4>Quantidade de Matérias: <%= matriz.getList().size() %></h4>  
        
        </div>
        
        <%@include file="WEB-INF/jspf/body-reference_1.jspf" %>
      
    </body>
</html>
