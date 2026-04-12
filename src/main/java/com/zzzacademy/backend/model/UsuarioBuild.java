package com.zzzacademy.backend.model;

import jakarta.persistence.*;
import lombok.Data;
import java.util.Map;

import com.zzzacademy.backend.model.json.DetalleDiscoUsuario;

@Data
@Entity
@Table(name = "usuario_builds")
public class UsuarioBuild {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "nombre_build")
    private String nombreBuild = "Build Principal";

    // A qué personaje de nuestro Roster se le aplica esta build
    @ManyToOne
    @JoinColumn(name = "usuario_agente_id", nullable = false)
    private UsuarioAgente usuarioAgente;

    // Qué arma lleva equipada
    @ManyToOne
    @JoinColumn(name = "w_engine_id")
    private WEngine wEngine;

    @Column(name = "w_engine_nivel")
    private Integer wEngineNivel = 1;

    // Mapeo JSONB: Llave (Integer) es la posición del disco del 1 al 6. Valor (DetalleDisco)
    @Column(columnDefinition = "jsonb")
    private Map<Integer, DetalleDiscoUsuario> discosEquipados;

}
