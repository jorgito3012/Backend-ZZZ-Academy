package com.zzzacademy.backend.model.json;

import lombok.Data;
import java.util.Map;

@Data
public class DetalleDiscoUsuario {
    // Definimos qué lleva un disco en la base de datos JSONB
    private Long setId; // El ID del set de discos base (ej: Woodpecker Electro)
    private String mainStat; // Estadistica principal, ej: "CRIT_RATE"
    private Map<String, Double> substats; // Mapa de substats, ej: {"CRIT_DMG": 14.4, "ATK_PCT": 9.0}
    private Integer level = 15; // Nivel del disco
}
