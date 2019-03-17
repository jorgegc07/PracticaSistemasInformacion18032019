package com.example.demo;

import javax.persistence.*;
import java.util.Set;

@Entity
@Table(name="dim_cliente")
public class Dim_Cliente {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int clienteID;

    private String nombre, apellido;
    private boolean esPremium;

    @OneToMany(mappedBy = "clienteID", cascade = CascadeType.ALL)
    private Set<Tabla_Hechos> hechos;

    public Dim_Cliente(){

    }

    public Dim_Cliente(String nombre, String apellido, boolean premium){
        this.nombre=nombre;
        this.apellido=apellido;
        this.esPremium =premium;
    }

    public int getClienteID() {
        return clienteID;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public boolean isEsPremium() {
        return esPremium;
    }

    public void setEsPremium(boolean esPremium) {
        this.esPremium = esPremium;
    }

    public Set<Tabla_Hechos> getHechos() {
        return hechos;
    }

    public void setHechos(Set<Tabla_Hechos> hechos) {
        this.hechos = hechos;
    }

    @Override
    public String toString() {
        return "Dim_Cliente{" +
                "clienteID=" + clienteID +
                ", nombre='" + nombre + '\'' +
                ", apellido='" + apellido + '\'' +
                ", esPremium=" + esPremium +
                '}';
    }
}