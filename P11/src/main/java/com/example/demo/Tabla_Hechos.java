package com.example.demo;

import javax.persistence.*;

@Entity
@Table(name="hecho_ventas")
public class Tabla_Hechos {

    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private int id;

    @ManyToOne
    @JoinColumn(name = "clienteID")
    private Dim_Cliente clienteID;

    @ManyToOne
    @JoinColumn(name = "tiempoID")
    private Dim_Tiempo tiempoID;

    @ManyToOne
    @JoinColumn(name = "isbn")
    private Dim_Libro isbn;

    private int cantidad;

    public Tabla_Hechos() {
    }

    public Tabla_Hechos(Dim_Cliente clienteID, Dim_Tiempo tiempoID, Dim_Libro isbn, int cantidad) {
        this.clienteID = clienteID;
        this.tiempoID = tiempoID;
        this.isbn = isbn;
        this.cantidad = cantidad;
    }

    public Dim_Cliente getClienteID() {
        return clienteID;
    }

    public void setClienteID(Dim_Cliente clienteID) {
        this.clienteID = clienteID;
    }

    public Dim_Tiempo getTiempoID() {
        return tiempoID;
    }

    public void setTiempoID(Dim_Tiempo tiempoID) {
        this.tiempoID = tiempoID;
    }

    public Dim_Libro getIsbn() {
        return isbn;
    }

    public void setIsbn(Dim_Libro isbn) {
        this.isbn = isbn;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

}

