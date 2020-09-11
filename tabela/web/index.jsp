<%-- 
    Document   : index
    Created on : 11 de set de 2020, 11:38:03
    Author     : Luciano
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="WEB-INF/jspf/head-reference.jspf" %>
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/cabecalho.jspf" %>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <div class="container-fluid">
            
        <h1>Cálculo de Amortização</h1>  
        <p>Projeto realizado por: Ananda Hike, Isadora Alves e Luciano Rodrigues</p>
        <p>Este projeto tem como objetivo mostrar 3 métodos de cálculo de amortização:</p>
        <p>SAC - Sistema de Amortização Constante<br>
           SAA - Sistema de Amortização Americana<br>
           Tabela PRICE      
        </p>
        <p> Através da entrada de dados fornecida pelo usuário será gerada uma tabela que mostrará as seguintes informações:
        </p>
        <p>Quantidade de parcelas a serem pagas<br>
        Valor das parcelas<br>
        Valor da amortização<br>
        Valor dos juros<br>
        Valor do saldo devedor
        </p>
        </div>
        <%@include file="WEB-INF/jspf/rodape.jspf" %>
        <%@include file="WEB-INF/jspf/body-reference.jspf" %>
      
    </body>
</html>
