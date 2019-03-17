package com.example.demo;

import javax.annotation.PostConstruct;
import javax.persistence.criteria.CriteriaBuilder;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.sql.ResultSet;
import java.util.List;
import java.util.Set;

@Component
public class DatabaseLoader {

    @Autowired
    private RepositorioCliente rCliente;

    @Autowired
    private RepositorioLibro rLibros;

    @Autowired
    private RepositorioTiempo rTiempos;

    @Autowired
    private RepositorioHechos rHechos;

    @PostConstruct
    private void initDatabase() {

        ejercicio1();
        //ResultSet e1 = rHechos.ejercicio1_query();

    }


    public void ejercicio1(){
        String res = "";
        List<Dim_Tiempo> tiempos = rTiempos.findByAnio("2016");
        for (Dim_Tiempo u: tiempos) {
            System.out.println(u.toString());

            //La siguiente seccion de codigo comentada es la que genera un error

            /*Set<Tabla_Hechos> set = u.getHechos();
            for(Tabla_Hechos w: set){
                System.out.println(w.getCantidad());
            }*/
        }

    }

}
