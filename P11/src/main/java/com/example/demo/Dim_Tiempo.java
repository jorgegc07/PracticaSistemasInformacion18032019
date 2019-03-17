package com.example.demo;

import javax.persistence.*;
import java.util.Set;

@Entity
@Table(name="dim_tiempo")
public class Dim_Tiempo {

    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private int tiempoID;

    private String fechaPedido,diaSemana,mes,anio;

    @OneToMany(mappedBy = "tiempoID", cascade = CascadeType.ALL)
    private Set<Tabla_Hechos> hechos;

    public Dim_Tiempo() {

    }

    public Dim_Tiempo(String FechaPedido, String dia_sem, String mes, String anio){
        this.fechaPedido = FechaPedido;
        this.diaSemana = dia_sem;
        this.mes= mes;
        this.anio = anio;
    }

    public int getTiempoID() {
        return tiempoID;
    }

    public String getFechaPedido() {
        return fechaPedido;
    }

    public void setFechaPedido(String fechaPedido) {
        this.fechaPedido = fechaPedido;
    }

    public String getDiaSemana() {
        return diaSemana;
    }

    public void setDiaSemana(String diaSemana) {
        this.diaSemana = diaSemana;
    }

    public String getMes() {
        return mes;
    }

    public void setMes(String mes) {
        this.mes = mes;
    }

    public String getAnio() {
        return anio;
    }

    public void setAnio(String anio) {
        this.anio = anio;
    }

    public Set<Tabla_Hechos> getHechos() {
        return hechos;
    }

    public void setHechos(Set<Tabla_Hechos> hechos) {
        this.hechos = hechos;
    }

    @Override
    public String toString() {
        return "Dim_Tiempo{" +
                "tiempoID=" + tiempoID +
                ", fechaPedido='" + fechaPedido + '\'' +
                ", diaSemana='" + diaSemana + '\'' +
                ", mes='" + mes + '\'' +
                ", anio='" + anio + '\'' +
                '}';
    }

}

