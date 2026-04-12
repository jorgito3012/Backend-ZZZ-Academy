package com.zzzacademy.backend.model;

import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name = "w_engines")
public class WEngine {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String nombre;
    private String rareza; // S, A, B
    private String especialidad; // Atacante, Aturdidor, Anomalía...

    @Column(columnDefinition = "TEXT")
    private String descripcion;

    private String statPrincipal; // Ej: "ATK%", "Prob. CRIT"
    
    private String imagenUrl;
}