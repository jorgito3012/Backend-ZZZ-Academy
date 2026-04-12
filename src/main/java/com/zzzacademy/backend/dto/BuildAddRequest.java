package com.zzzacademy.backend.dto;

import com.zzzacademy.backend.model.json.DetalleDiscoUsuario;

import jakarta.validation.constraints.NotBlank;
import java.util.Map;

public class BuildAddRequest {
    
    @NotBlank
    private String nombreBuild = "Build Principal";
    
    private Long wEngineId;
    
    private Integer wEngineNivel = 1;

    // Aquí entra la magia JSON. Recibimos un diccionario con Llave(ID del slot) y Valor(Objeto Disco)
    private Map<Integer, DetalleDiscoUsuario> discosEquipados;

    // Getters y Setters
    public String getNombreBuild() {
        return nombreBuild;
    }

    public void setNombreBuild(String nombreBuild) {
        this.nombreBuild = nombreBuild;
    }

    public Long getWEngineId() {
        return wEngineId;
    }

    public void setWEngineId(Long wEngineId) {
        this.wEngineId = wEngineId;
    }

    public Integer getWEngineNivel() {
        return wEngineNivel;
    }

    public void setWEngineNivel(Integer wEngineNivel) {
        this.wEngineNivel = wEngineNivel;
    }

    public Map<Integer, DetalleDiscoUsuario> getDiscosEquipados() {
        return discosEquipados;
    }

    public void setDiscosEquipados(Map<Integer, DetalleDiscoUsuario> discosEquipados) {
        this.discosEquipados = discosEquipados;
    }
}
