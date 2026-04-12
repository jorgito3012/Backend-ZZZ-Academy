package com.zzzacademy.backend.model;

import jakarta.persistence.*;
import lombok.Data;

import com.zzzacademy.backend.model.enums.Rango;

@Data
@Entity
@Table(name = "bangboos")
public class Bangboo {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private String nombre;

    @Enumerated(EnumType.STRING)
    @Column(nullable = false)
    private Rango rango;

    @Column(columnDefinition = "TEXT")
    private String descripcion;

    @Column(name = "habilidad_activa", columnDefinition = "TEXT")
    private String habilidadActiva;

    @Column(name = "habilidad_pasiva", columnDefinition = "TEXT")
    private String habilidadPasiva;

    private String imagenUrl;
}
