package com.zzzacademy.backend.model;

import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name = "usuario_agentes")
public class UsuarioAgente {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    // A qué usuario pertenece este personaje
    @ManyToOne
    @JoinColumn(name = "usuario_id", nullable = false)
    private Usuario usuario;

    // Qué personaje del juego es
    @ManyToOne
    @JoinColumn(name = "agente_id", nullable = false)
    private Agente agente;

    // El progreso del personaje guardado por el jugador
    private Integer nivel = 1;

    @Column(name = "nivel_habilidad_core")
    private String nivelHabilidadCore = "A";

    private Integer mindscapesDesbloqueados = 0;
}
