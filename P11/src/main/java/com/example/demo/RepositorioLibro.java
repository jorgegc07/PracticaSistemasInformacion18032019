package com.example.demo;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

public interface RepositorioLibro extends CrudRepository<Dim_Libro,String> {

    List<Dim_Libro> findByTitulo(String titulo);

}
