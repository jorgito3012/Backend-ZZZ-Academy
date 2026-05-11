package com.zzzacademy.backend.model;

import jakarta.persistence.*;
import lombok.Data;
import com.zzzacademy.backend.model.enums.Rango;
import com.zzzacademy.backend.model.enums.Rol;

@Data
@Entity
@Table(name = "w_engines")
public class WEngine {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String nombre;

    @Enumerated(EnumType.STRING)
    private Rango rareza;

    @Enumerated(EnumType.STRING)
    private Rol especialidad;

    @Column(columnDefinition = "TEXT")
    private String descripcion;

    private String statPrincipal; // Ej: "ATK%", "Prob. CRIT"
    
    private Integer ataqueBase; // Ej: 713 (Nv. 60)
    
    private String imagenUrl;
}