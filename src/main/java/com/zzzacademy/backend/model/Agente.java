package com.zzzacademy.backend.model;

import jakarta.persistence.*;
import lombok.Data;
import java.util.Map;

import com.zzzacademy.backend.model.enums.Elemento;
import com.zzzacademy.backend.model.enums.Rango;
import com.zzzacademy.backend.model.enums.Rol;

@Data
@Entity
@Table(name = "agentes")
public class Agente {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String nombre;

    // --- ENUMS ---
    @Enumerated(EnumType.STRING)
    private Rango rango; 

    @Enumerated(EnumType.STRING)
    private Elemento elemento; 

    @Enumerated(EnumType.STRING)
    private Rol rol; 

    @Column(columnDefinition = "TEXT")
    private String descripcion;

    private String imagenUrl;

    // ==========================================
    // --- MAGIA JSONB (Datos anidados) ---
    // ==========================================

    // Usamos Map<String, Double> porque todas las stats son números (ej: "hp": 7500.5, "crit_rate": 24.4)
    @Column(columnDefinition = "jsonb")
    private Map<String, Double> estadisticasLvl60;

    // Usamos Map<String, Object> porque las habilidades tienen más JSONs dentro (core, basic, special...)
    @Column(columnDefinition = "jsonb")
    private Map<String, Object> habilidades;

    // Usamos Map<String, String> porque son 6 textos (ej: "mindscape1": "Descripción del dupe...")
    @Column(columnDefinition = "jsonb")
    private Map<String, String> mindscapes;

    // ==========================================
    // --- RELACIONES (Foreign Keys) ---
    // ==========================================

    @ManyToOne
    @JoinColumn(name = "w_engine_recomendado_id")
    private WEngine wEngineRecomendado;

    @ManyToOne
    @JoinColumn(name = "disco_4pc_id")
    private DiscoSet discoRecomendado4pc;

    @ManyToOne
    @JoinColumn(name = "disco_2pc_id")
    private DiscoSet discoRecomendado2pc;

}
