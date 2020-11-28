<%-- 
    Document   : index
    Created on : 6 de out de 2020, 18:52:48
    Author     : Luciano
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="poo.Disciplina"%>
<%@page contentType="text/html" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%
    ArrayList<Disciplina> exibe = (ArrayList)application.getAttribute("exibe");
    if(exibe == null){
        exibe = new ArrayList<>();
        exibe.add(new Disciplina("Banco de Dados", "Conceitos de Base de Dados. Modelos conceituais de informa��es. Modelos de Dados:\n" +
"Relacional, Redes e Hier�rquicos. Modelagem de dados - conceitual, l�gica e f�sica. \n" +
"Teoria relacional: depend�ncias funcionais e multivaloradas, formas normais. \n" +
"Restri��es de integridade e de seguran�a em Banco de Dados Relacional. Sistemas\n" +
"Gerenciadores de Banco de Dados ? objetivo e fun��es. Linguagens de declara��o e \n" +
"de manipula��o de dados.", "4�"));
        exibe.add(new Disciplina("Engenharia de Software III", "Conceitos, evolu��o e import�ncia de arquitetura de software. Padr�es de Arquitetura.\n" +
"Padr�es de Distribui��o. Camadasno desenvolvimento de software. Tipos de\n" +
"Arquitetura de Software. Vis�es na arquitetura de software. Modelo de An�lise e\n" +
"Projetos. Formas de representa��o. O processo de desenvolvimento. Mapeamento\n" +
"para implementa��o. Integra��o do sistema.Testes: planejamento e tipos.\n" +
"Manuten��o. Documenta��o.", "4�"));
        exibe.add(new Disciplina("Linguagem de Programa��o IV", "Comandos de linguagens usadas na constru��o e estrutura��o de sites para a Web, \n" +
"com p�ginas din�micas e interativas.Defini��o de layouts e formata��o em geral. \n" +
"Adi��o de algoritmos usando la�os, matrizes, datas, fun��es e condi��es.Introdu��o a \n" +
"Orienta��o a Objetos utilizando objetos, m�todos e propriedades. Integra��o com\n" +
"Banco de Dados. Exerc�ciospr�ticos com projeto de cria��o de sites.", "4�"));
        exibe.add(new Disciplina("Metodologia da Pesquisa Cient�fico-Tecnol�gica", "O Papel da ci�ncia e da tecnologia. Tipos de conhecimento. M�todo e t�cnica. O\n" +
"processo de leitura e de an�lise textual.Cita��es e bibliografias. Trabalhos acad�micos: \n" +
"tipos, caracter�sticas e composi��o estrutural. O projeto de pesquisaexperimental e \n" +
"n�o-experimental. Pesquisa qualitativa e quantitativa. Apresenta��o gr�fica. Normas\n" +
"da ABNT.", "4�"));
        exibe.add(new Disciplina("Programa��o Orientada � Objetos", "Conceitos e evolu��o da tecnologia de orienta��o a objetos. Limita��es e diferen�as \n" +
"entre o paradigma da programa��oestruturada em rela��o � orienta��o a objetos. \n" +
"Conceito de objeto, classe, m�todos, atributos, heran�a, polimorfismo,agrega��o, \n" +
"associa��o, depend�ncia, encapsulamento, mensagem e suas respectivas nota��es na \n" +
"linguagem padr�o de representa��o da orienta��o a objetos. Implementa��o de \n" +
"algoritmos orientado a objetos utilizando linguagens deprograma��o. Aplica��o e uso \n" +
"das estruturas fundamentais da orienta��o a objetos.", "4�"));
        exibe.add(new Disciplina("Sistemas Operacionais II", "Apresenta��o de um sistema operacional espec�fico utilizado em ambiente \n" +
"corporativo. Requisitos de hardware parainstala��o do sistema. Processo de\n" +
"instala��o, personaliza��o, opera��o, administra��o e seguran�a sobre o sistema\n" +
"operacional focado. Elabora��o de projetos de sele��o e implanta��o de um sistema\n" +
"operacional.", "4�"));
        application.setAttribute("exibe", exibe);
    }
    double nota = 0.00;
    if(request.getParameter("redefinir")!= null){
        int i = Integer.parseInt(request.getParameter("i"));
        Disciplina Z = exibe.get(i);
        Z.setNota(Double.parseDouble(request.getParameter("nota")));
        response.sendRedirect(request.getRequestURI());
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Avalia��o P1</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/head-reference_1.jspf" %>
        <h1>Minhas disciplinas</h1>  
         <table border="1">
              <tr>
                <th>Indice</th>
                <th>Nome</th>
                <th>Ementa</th>
                <th>Nota</th>
                <th>Ciclo</th>
                <th>Comando</th>
              </tr>
              <% for(int i = 0; i < exibe.size(); i++){ %>  
              <tr>
                  <th><%= i %></th>
                  <%Disciplina X = exibe.get(i); %>
                  <%Disciplina Z = exibe.get(i); %>
                  <td><%= X.getNome() %></td>
                  <td><%= X.getEmenta()%></td>
                  <td><%= X.getCiclo()%></td>
                  <td><%= Z.getNota()%></td>
                  <td>
                      <form>
                          Nota:
                          <input type="number" name="nota" step="0.01" min="0.00" max="10.00"/>
                          <input type="hidden" name="i" value="<%= i %>"/>
                          <input type="submit" name="redefinir" value="Redefinir"/>
                       </form>
                  </td>
              </tr>
                  <%}%>
        </table>
        <p><a href="<%= request.getContextPath() %>/index.jsp">Voltar</a></p>
    </body>
</html>
