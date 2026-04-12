package com.zzzacademy.backend.model.json;

import lombok.Data;
import java.util.Map;
import java.io.Serializable;
import com.fasterxml.jackson.databind.JsonNode;

@Data
public class DetalleDiscoUsuario implements Serializable {
    // Definimos qué lleva un disco en la base de datos JSONB
    private Long setId; // El ID del set de discos base (ej: Woodpecker Electro)
    private String mainStat; // Estadistica principal, ej: "CRIT_RATE"
    private JsonNode substats; // Mapa de substats libre para Jackson
    private Integer level = 15; // Nivel del disco
}
