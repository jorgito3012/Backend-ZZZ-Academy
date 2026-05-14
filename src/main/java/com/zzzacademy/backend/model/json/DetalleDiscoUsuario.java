package com.zzzacademy.backend.model.json;

import lombok.Data;
import java.io.Serializable;

@Data
public class DetalleDiscoUsuario implements Serializable {
    private Long setId;
    private String mainStat;
    private Integer level = 15;
}
