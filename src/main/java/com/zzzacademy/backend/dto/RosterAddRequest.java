package com.zzzacademy.backend.dto;

import jakarta.validation.constraints.NotNull;

public class RosterAddRequest {
    
    @NotNull
    private Long agenteId;

    public Long getAgenteId() {
        return agenteId;
    }

    public void setAgenteId(Long agenteId) {
        this.agenteId = agenteId;
    }
}
