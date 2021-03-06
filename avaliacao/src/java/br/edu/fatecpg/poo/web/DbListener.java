/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.fatecpg.poo.web;

import br.edu.fatecpg.poo.Disciplina;
import java.sql.*;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

/**
 * Web application lifecycle listener.
 *
 * @author Luciano
 */
public class DbListener implements ServletContextListener {
    public static final String CLASS_NAME = "org.sqlite.JDBC";
    public static final String URL = "jdbc:sqlite:minhasdisciplinas.db";
    
    public static String exceptionMessage = null;
    
    public static Connection getConnection() throws Exception{
        return DriverManager.getConnection(URL);
    }
    @Override
    public void contextInitialized(ServletContextEvent sce) {
        Connection con = null;
        Statement stmt = null;
        
        try{
           Class.forName(CLASS_NAME);
           con = DriverManager.getConnection(URL); 
           stmt = con.createStatement();
           stmt.execute(Disciplina.getCreateStatement());
           if(Disciplina.getList().isEmpty()){
               stmt.execute("INSERT INTO disciplinas "
                + "VALUES('Banco de Dados', 'Conceitos de Base de Dados. Modelos conceituais de informações. Modelos de Dados:\n" +
"Relacional, Redes e Hierárquicos. Modelagem de dados - conceitual, lógica e física. \n" +
"Teoria relacional: dependências funcionais e multivaloradas, formas normais. \n" +
"Restrições de integridade e de segurança em Banco de Dados Relacional. Sistemas\n" +
"Gerenciadores de Banco de Dados – objetivo e funções. Linguagens de declaração e \n" +
"de manipulação de dados.', '4º', '0.00')");
               stmt.execute("INSERT INTO disciplinas "
                + "VALUES('Engenharia de Software III', 'Conceitos, evolução e importância de arquitetura de software. Padrões de Arquitetura.\n" +
"Padrões de Distribuição. Camadasno desenvolvimento de software. Tipos de\n" +
"Arquitetura de Software. Visões na arquitetura de software. Modelo de Análise e\n" +
"Projetos. Formas de representação. O processo de desenvolvimento. Mapeamento\n" +
"para implementação. Integração do sistema.Testes: planejamento e tipos.\n" +
"Manutenção. Documentação.', '4º', '0.00')");
               stmt.execute("INSERT INTO disciplinas "
                + "VALUES('Linguagem de Programação IV', 'Comandos de linguagens usadas na construção e estruturação de sites para a Web, \n" +
"com páginas dinâmicas e interativas.Definição de layouts e formatação em geral. \n" +
"Adição de algoritmos usando laços, matrizes, datas, funções e condições.Introdução a \n" +
"Orientação a Objetos utilizando objetos, métodos e propriedades. Integração com\n" +
"Banco de Dados. Exercíciospráticos com projeto de criação de sites.', '4º', '0.00')");
               stmt.execute("INSERT INTO disciplinas "
                + "VALUES('Metodologia da Pesquisa Científico-Tecnológica', 'O Papel da ciência e da tecnologia. Tipos de conhecimento. Método e técnica. O\n" +
"processo de leitura e de análise textual.Citações e bibliografias. Trabalhos acadêmicos: \n" +
"tipos, características e composição estrutural. O projeto de pesquisaexperimental e \n" +
"não-experimental. Pesquisa qualitativa e quantitativa. Apresentação gráfica. Normas\n" +
"da ABNT.', '4º', '0.00')");
               stmt.execute("INSERT INTO disciplinas "
                + "VALUES('Programação Orientada à Objetos', 'Conceitos e evolução da tecnologia de orientação a objetos. Limitações e diferenças \n" +
"entre o paradigma da programaçãoestruturada em relação à orientação a objetos. \n" +
"Conceito de objeto, classe, métodos, atributos, herança, polimorfismo,agregação, \n" +
"associação, dependência, encapsulamento, mensagem e suas respectivas notações na \n" +
"linguagem padrão de representação da orientação a objetos. Implementação de \n" +
"algoritmos orientado a objetos utilizando linguagens deprogramação. Aplicação e uso \n" +
"das estruturas fundamentais da orientação a objetos.', '4º', '0.00')");
               stmt.execute("INSERT INTO disciplinas "
                + "VALUES('Sistemas Operacionais II', 'Apresentação de um sistema operacional específico utilizado em ambiente \n" +
"corporativo. Requisitos de hardware parainstalação do sistema. Processo de\n" +
"instalação, personalização, operação, administração e segurança sobre o sistema\n" +
"operacional focado. Elaboração de projetos de seleção e implantação de um sistema\n" +
"operacional.', '4º', '0.00')");
           }
        }catch(Exception ex){
             exceptionMessage = ex.getLocalizedMessage();
        }finally{
            try{stmt.close();}catch(Exception ex2){}
            try{con.close();}catch(Exception ex2){}
        }
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
    }
}
