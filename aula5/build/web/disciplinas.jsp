<%-- 
    Document   : disciplinas
    Created on : 2 de out de 2020, 19:28:52
    Author     : Luciano
--%>

<%@page import="br.edu.fatecpg.poo.Disciplina"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    ArrayList<Disciplina> exibe = (ArrayList)application.getAttribute("exibe");
    if(exibe == null){
        exibe = new ArrayList<>();
        exibe.add(new Disciplina("Metodologia da Pesquisa Científico-Tecnológica","O Papel da ciência e da tecnologia. Tipos de conhecimento. Método e técnica. O processo de leitura e de análise textual.\n" +
"Citações e bibliografias. Trabalhos acadêmicos: tipos, características e composição estrutural. O projeto de pesquisa\n" +
"experimental e não-experimental. Pesquisa qualitativa e quantitativa. Apresentação gráfica. Normas da ABNT.", "4º" ));
        exibe.add(new Disciplina("Banco de Dados","Conceitos de Base de Dados. Modelos conceituais de informações. Modelos de Dados: Relacional, Redes e Hierárquicos.\n" +
"Modelagem de dados - conceitual, lógica e física. Teoria relacional: dependências funcionais e multivaloradas, formas\n" +
"normais. Restrições de integridade e de segurança em Banco de Dados Relacional. Sistemas Gerenciadores de Banco de Dados\n" +
"– objetivo e funções. Linguagens de declaração e de manipulação de dados.", "4º" ));
        exibe.add(new Disciplina("Engenharia de Software III","Conceitos, evolução e importância de arquitetura de software. Padrões de Arquitetura. Padrões de Distribuição. Camadas\n" +
"no desenvolvimento de software. Tipos de Arquitetura de Software. Visões na arquitetura de software. Modelo de Análise e\n" +
"Projetos. Formas de representação. O processo de desenvolvimento. Mapeamento para implementação. Integração do sistema.\n" +
"Testes: planejamento e tipos. Manutenção. Documentação.", "4º" ));
        exibe.add(new Disciplina("Programação Orientada à Objetos","Conceitos e evolução da tecnologia de orientação a objetos. Limitações e diferenças entre o paradigma da programação\n" +
"estruturada em relação à orientação a objetos. Conceito de objeto, classe, métodos, atributos, herança, polimorfismo,\n" +
"agregação, associação, dependência, encapsulamento, mensagem e suas respectivas notações na linguagem padrão de\n" +
"representação da orientação a objetos. Implementação de algoritmos orientado a objetos utilizando linguagens de\n" +
"programação. Aplicação e uso das estruturas fundamentais da orientação a objetos.", "4º" ));        
        exibe.add(new Disciplina("Linguaguagem de Programação IV-Internet ","Comandos de linguagens usadas na construção e estruturação de sites para a Web, com páginas dinâmi-cas e interativas.\n" +
"Definição de layouts e formatação em geral. Adição de algorítmos usando laços, matrizes, datas, funções e condições.\n" +
"Introdução a Orientação a Objetos utilizando objetos, métodos e propriedades. Integração com Banco de Dados. Exercícios\n" +
"práticos com projeto de criação de sites.", "4º" ));
        exibe.add(new Disciplina("Sistemas Operacionais II ","Apresentação de um sistema operacional específico utilizado em ambiente corporativo. Requisitos de hardware para\n" +
"instalação do sistema. Processo de instalação, personalização, operação, administração e segurança sobre o sistema\n" +
"operacional focado. Elaboração de projetos de seleção e implantação de um sistema operacional.", "4º" ));
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
        <%@include file="WEB-INF/jspf/head-reference.jspf" %>
        <title>Tabela-PRICE</title>
    </head>
    <body>
         <%@include file="WEB-INF/jspf/menu.jspf" %>
        <h1 class="container-fluid">Minhas Disciplinas</h1>
        <hr/>  
        <table class="table table-bordered">
            <thead class="thead-dark">
              <tr>
                <th scope="col">Índice</th>
                <th scope="col">Matéria</th>
                <th scope="col">Ementa</th>
                <th scope="col">Ciclo</th>
                <th scope="col">Nota</th>
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
        <%@include file="WEB-INF/jspf/body-reference.jspf" %>
    </body>
</html>
