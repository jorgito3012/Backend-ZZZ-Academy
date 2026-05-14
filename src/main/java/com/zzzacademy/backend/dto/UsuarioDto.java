package com.zzzacademy.backend.dto;

import com.zzzacademy.backend.model.enums.RolUsuario;
import java.time.LocalDateTime;

public class UsuarioDto {
    private Long id;
    private String email;
    private RolUsuario rol;
    private LocalDateTime fechaCreacion;

    public UsuarioDto() {}

    public UsuarioDto(Long id, String email, RolUsuario rol, LocalDateTime fechaCreacion) {
        this.id = id;
        this.email = email;
        this.rol = rol;
        this.fechaCreacion = fechaCreacion;
    }

    // Getters and Setters
    public Long getId() { return id; }
    public void setId(Long id) { this.id = id; }
    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }
    public RolUsuario getRol() { return rol; }
    public void setRol(RolUsuario rol) { this.rol = rol; }
    public LocalDateTime getFechaCreacion() { return fechaCreacion; }
    public void setFechaCreacion(LocalDateTime fechaCreacion) { this.fechaCreacion = fechaCreacion; }
}
