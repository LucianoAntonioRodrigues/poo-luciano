<%-- 
    Document   : index
    Created on : 5 de out de 2020, 13:25:10
    Author     : Luciano
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="br.edu.fatecpg.poo.p1.Disciplina"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    ArrayList<Disciplina> exibe = (ArrayList)application.getAttribute("exibe");
    if(exibe == null){
        exibe = new ArrayList<>();
        exibe.add(new Disciplina("Banco de Dados", "Conceitos de Base de Dados. Modelos conceituais de informações. Modelos de Dados:\n" +
"Relacional, Redes e Hierárquicos. Modelagem de dados - conceitual, lógica e física. \n" +
"Teoria relacional: dependências funcionais e multivaloradas, formas normais. \n" +
"Restrições de integridade e de segurança em Banco de Dados Relacional. Sistemas\n" +
"Gerenciadores de Banco de Dados – objetivo e funções. Linguagens de declaração e \n" +
"de manipulação de dados.", "4º"));
        exibe.add(new Disciplina("Engenharia de Software III", "Conceitos, evolução e importância de arquitetura de software. Padrões de Arquitetura.\n" +
"Padrões de Distribuição. Camadasno desenvolvimento de software. Tipos de\n" +
"Arquitetura de Software. Visões na arquitetura de software. Modelo de Análise e\n" +
"Projetos. Formas de representação. O processo de desenvolvimento. Mapeamento\n" +
"para implementação. Integração do sistema.Testes: planejamento e tipos.\n" +
"Manutenção. Documentação.", "4º"));
        exibe.add(new Disciplina("Linguagem de Programação IV", "Comandos de linguagens usadas na construção e estruturação de sites para a Web, \n" +
"com páginas dinâmicas e interativas.Definição de layouts e formatação em geral. \n" +
"Adição de algoritmos usando laços, matrizes, datas, funções e condições.Introdução a \n" +
"Orientação a Objetos utilizando objetos, métodos e propriedades. Integração com\n" +
"Banco de Dados. Exercíciospráticos com projeto de criação de sites.", "4º"));
        exibe.add(new Disciplina("Metodologia da Pesquisa Científico-Tecnológica", "O Papel da ciência e da tecnologia. Tipos de conhecimento. Método e técnica. O\n" +
"processo de leitura e de análise textual.Citações e bibliografias. Trabalhos acadêmicos: \n" +
"tipos, características e composição estrutural. O projeto de pesquisaexperimental e \n" +
"não-experimental. Pesquisa qualitativa e quantitativa. Apresentação gráfica. Normas\n" +
"da ABNT.", "4º"));
        exibe.add(new Disciplina("Programação Orientada à Objetos", "Conceitos e evolução da tecnologia de orientação a objetos. Limitações e diferenças \n" +
"entre o paradigma da programaçãoestruturada em relação à orientação a objetos. \n" +
"Conceito de objeto, classe, métodos, atributos, herança, polimorfismo,agregação, \n" +
"associação, dependência, encapsulamento, mensagem e suas respectivas notações na \n" +
"linguagem padrão de representação da orientação a objetos. Implementação de \n" +
"algoritmos orientado a objetos utilizando linguagens deprogramação. Aplicação e uso \n" +
"das estruturas fundamentais da orientação a objetos.", "4º"));
        exibe.add(new Disciplina("Sistemas Operacionais II", "Apresentação de um sistema operacional específico utilizado em ambiente \n" +
"corporativo. Requisitos de hardware parainstalação do sistema. Processo de\n" +
"instalação, personalização, operação, administração e segurança sobre o sistema\n" +
"operacional focado. Elaboração de projetos de seleção e implantação de um sistema\n" +
"operacional.", "4º"));
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
        <%@include file="WEB-INF/jspf/head-reference_1.jspf" %>
        <title>Avaliação P1</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/menu_1.jspf" %>
        <div class="container-fluid">
            
        <h1>Minhas disciplinas</h1>  
         <table class="table table-bordered">
            <thead class="thead-dark">
              <tr>
                <th scope="col">Indice</th>
                <th scope="col">Nome</th>
                <th scope="col">Ementa</th>
                <th scope="col">Nota</th>
                <th scope="col">Ciclo</th>
                <th scope="col">Comando</th>
              </tr>
            </thead>
            <tbody>
              <% for(int i = 0; i < exibe.size(); i++){ %>  
              <tr>
                  <th scope="row"><%= i %></th>
                  <%Disciplina X = exibe.get(i); %>
                  <%Disciplina Z = exibe.get(i); %>
                  <td style="background-color: #FAF0E6"><%= X.getNome() %></td>
                  <td><%= X.getEmenta()%></td>
                  <td style="background-color: #FAF0E6"><%= X.getCiclo()%></td>
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
            </tbody>
                  <%}%>
        </table>
        <p class="container-fluid"><a href="index.jsp">Voltar</a></p>
        </div>
        <%@include file="WEB-INF/jspf/body-reference_1.jspf" %>
    </body>
</html>