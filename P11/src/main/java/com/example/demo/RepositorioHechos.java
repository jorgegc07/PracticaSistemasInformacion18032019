package com.example.demo;

import java.sql.ResultSet;
import java.util.List;


import com.example.demo.Tabla_Hechos;
import org.springframework.data.jpa.repository.Query;

import org.springframework.data.repository.CrudRepository;



public interface RepositorioHechos extends CrudRepository<Tabla_Hechos,Integer> {

    String con1 = "SELECT Dim_Cliente.Nombre, Sum(Hechos_Ventas.Cantidad) AS SumaDeCantidad FROM Dim_Tiempo INNER JOIN (Dim_Libro INNER JOIN (Dim_Cliente INNER JOIN Hecho_Ventas ON Dim_Cliente.clienteID = Hecho_Ventas.clienteID)"+
            "ON Dim_Libro.isbn = Hecho_Ventas.ISBN) ON Dim_Tiempo.tiempoID = Hecho_Ventas.tiempoID GROUP BY Dim_Cliente.Nombre, Dim_Tiempo.Anio HAVING (((Dim_Tiempo.Anio)=2016));";

    List<Tabla_Hechos> findById(int id);

    @Query(value = "SELECT Dim_Cliente.Nombre, Sum(Hechos_Ventas.Cantidad) AS SumaDeCantidad FROM Dim_Tiempo INNER JOIN (Dim_Libro INNER JOIN (Dim_Cliente INNER JOIN Hecho_Ventas ON Dim_Cliente.clienteID = Hecho_Ventas.clienteID)"+
            "ON Dim_Libro.isbn = Hecho_Ventas.ISBN) ON Dim_Tiempo.tiempoID = Hecho_Ventas.tiempoID GROUP BY Dim_Cliente.Nombre, Dim_Tiempo.Anio HAVING (((Dim_Tiempo.Anio)=2016));", nativeQuery = true)
    ResultSet ejercicio1_query();

}