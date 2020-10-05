/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.edu.fatecpg.poo.p1;

import java.util.ArrayList;

/**
 *
 * @author Luciano
 */
public class Disciplina {
    private String nome;
    private String ementa;
    private String ciclo;
    private Double nota;

    public Disciplina(String nome, String ementa, String ciclo) {
        this.nome = nome;
        this.ementa = ementa;
        this.ciclo = ciclo;
    }
    

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEmenta() {
        return ementa;
    }

    public void setEmenta(String ementa) {
        this.ementa = ementa;
    }

    public String getCiclo() {
        return ciclo;
    }

    public void setCiclo(String ciclo) {
        this.ciclo = ciclo;
    }

    public Double getNota() {
        return nota;
    }

    public void setNota(Double nota) {
        this.nota = nota;
    }
 
    public static ArrayList<Disciplina> getList(){
        ArrayList<Disciplina> exibe=new ArrayList<>();
        exibe.add(new Disciplina("Banco de Dados", "Conceitos de Base de Dados. Modelos conceituais de informações. Modelos de Dados:Relacional, Redes e Hierárquicos.Modelagem de dados - conceitual, lógica e física. Teoria relacional: dependências funcionais e multivaloradas, formasnormais. Restrições deintegridade e de segurança em Banco de Dados Relacional. Sistemas Gerenciadores de Banco de Dados– objetivo e funções. Linguagens de declaração e de manipulação de dados.","4°"));
        exibe.add(new Disciplina("Engenharia de Software III", "Conceitos, evolução e importância de arquitetura de software. Padrões de Arquitetura. Padrões de Distribuição. Camadasno desenvolvimento de software. Tipos de Arquitetura de Software. Visões na arquitetura de software. Modelo de Análise eProjetos. Formas de representação. O processo de desenvolvimento. Mapeamentopara implementação. Integração do sistema.Testes: planejamento e tipos.Manutenção. Documentação.","4°"));
        exibe.add(new Disciplina("Linguagem de Programação IV", "Comandos de linguagens usadas na construção e estruturação de sites para a Web, com páginas dinâmicas e interativas.Definição de layouts e formatação em geral. Adição de algoritmos usando laços, matrizes, datas, funções e condições.Introdução a Orientação a Objetos utilizando objetos, métodos e propriedades. Integração comBanco de Dados. Exercíciospráticos com projeto de criação de sites.","4°"));
        exibe.add(new Disciplina("Metodologia da Pesquisa Científico-Tecnológica", "O Papel da ciência e da tecnologia. Tipos de conhecimento. Método e técnica. Oprocesso de leitura e de análise textual.Citações e bibliografias. Trabalhos acadêmicos: tipos, características e composição estrutural. O projeto de pesquisaexperimental e não-experimental. Pesquisa qualitativa e quantitativa. Apresentação gráfica. Normasda ABNT.","4°"));
        exibe.add(new Disciplina("Sistemas Operacionais II", "","4°"));
        exibe.add(new Disciplina("Programação Orientada à Objetos", "Conceitos e evolução da tecnologia de orientação a objetos. Limitações e diferenças entre o paradigma da programaçãoestruturada em relação à orientação a objetos. Conceito de objeto, classe, métodos, atributos, herança, polimorfismo,agregação, associação, dependência, encapsulamento, mensagem e suas respectivas notações na linguagem padrão de representação da orientação a objetos. Implementação de algoritmos orientado a objetos utilizando linguagens deprogramação. Aplicação e uso das estruturas fundamentais da orientação a objetos.","4°"));
        return exibe;
        
    }
}
