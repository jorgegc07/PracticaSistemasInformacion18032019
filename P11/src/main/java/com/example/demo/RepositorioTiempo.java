package com.example.demo;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

public interface RepositorioTiempo extends CrudRepository<Dim_Tiempo,Integer> {

    List<Dim_Tiempo> findByFechaPedido(String fechaPedido);

    List<Dim_Tiempo> findByAnio(String anio);

}
