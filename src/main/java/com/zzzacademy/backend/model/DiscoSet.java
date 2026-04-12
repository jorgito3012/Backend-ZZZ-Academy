package com.zzzacademy.backend.model;

import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name = "sets_discos")
public class DiscoSet {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String nombre;

    @Column(columnDefinition = "TEXT")
    private String efecto2pc; // El efecto al llevar 2 piezas

    @Column(columnDefinition = "TEXT")
    private String efecto4pc; // El efecto al llevar 4 piezas

    private String imagenUrl;
}