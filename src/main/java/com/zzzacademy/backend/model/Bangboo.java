package com.zzzacademy.backend.model;

import jakarta.persistence.*;
import lombok.Data;
import java.util.Map;
import org.hibernate.annotations.Type;
import io.hypersistence.utils.hibernate.type.json.JsonType;

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

    // Guardaremos las 3 habilidades (activa, adicional, cadena) en este JSON estructurado
    @Type(JsonType.class)
    @Column(columnDefinition = "jsonb")
    private Map<String, Object> habilidades;

    private String imagenUrl;
}
