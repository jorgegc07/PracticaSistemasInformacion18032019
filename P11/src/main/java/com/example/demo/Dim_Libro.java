package com.example.demo;

import javax.persistence.*;
import java.util.Set;

@Entity
@Table(name="dim_libro")
public class Dim_Libro {

    @Id
    private String isbn;

    private String titulo, edicion, precio;

    @OneToMany(mappedBy = "isbn", cascade = CascadeType.ALL)
    private Set<Tabla_Hechos> hechos;

    public Dim_Libro(){

    }

    public Dim_Libro(String isbn, String titulo, String ed, String precio){
        this.isbn = isbn;
        this.titulo= titulo;
        this.edicion = ed;
        this.precio= precio;
    }

    public String getIsbn() {
        return isbn;
    }

    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getEdicion() {
        return edicion;
    }

    public void setEdicion(String edicion) {
        this.edicion = edicion;
    }

    public String getPrecio() {
        return precio;
    }

    public void setPrecio(String precio) {
        this.precio = precio;
    }

    public Set<Tabla_Hechos> getHechos() {
        return hechos;
    }

    public void setHechos(Set<Tabla_Hechos> hechos) {
        this.hechos = hechos;
    }

    @Override
    public String toString() {
        return "Dim_Libro{" +
                "isbn='" + isbn + '\'' +
                ", titulo='" + titulo + '\'' +
                ", edicion='" + edicion + '\'' +
                ", precio='" + precio + '\'' +
                '}';
    }
}
