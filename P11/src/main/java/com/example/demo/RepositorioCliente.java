package com.example.demo;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

public interface RepositorioCliente extends CrudRepository<Dim_Cliente,Integer> {

    List<Dim_Cliente> findByNombre(String nombre);

    Dim_Cliente findByClienteID(int clienteID);

}
