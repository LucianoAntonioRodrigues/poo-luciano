/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package poo;

import java.sql.*;
import java.util.ArrayList;
import web.DbListener;

/**
 *
 * @author Luciano
 */
public class Disciplina {
    
    private String nome;
    private String ementa;
    private String ciclo;
    private double nota;

    public Disciplina(String nome, String ementa, String ciclo, double nota) {
        this.nome = nome;
        this.ementa = ementa;
        this.ciclo = ciclo;
        this.nota = nota;
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

    public double getNota() {
        return nota;
    }

    public void setNota(double nota) {
        this.nota = nota;
    }
    
    public static ArrayList<Disciplina> getList() throws Exception{
        ArrayList<Disciplina> list = new ArrayList<>();
        Connection con = DbListener.getConnection();
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT * FROM disciplinas");
        while(rs.next()){
            list.add(new Disciplina(
                    rs.getString("nome"),
                    rs.getString("ementa"),
                    rs.getString("ciclo"),
                    rs.getDouble("nota")

            ));
        }
        rs.close();
            stmt.close();
            con.close();
        return list;
    }
    
    public static String getCreateStatement(){
        return "CREATE TABLE IF NOT EXISTS disciplinas("
                + "nome VARCHAR(50) PRIMARY KEY,"
                + "ementa VARCHAR(300) NOT NULL,"
                + "ciclo VARCHAR(2) NOT NULL,"
                + "nota NUMERIC(2,2) NOT NULL"
                + ")";
    }
    
}
