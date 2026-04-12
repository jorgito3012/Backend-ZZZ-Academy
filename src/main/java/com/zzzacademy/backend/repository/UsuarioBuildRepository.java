package com.zzzacademy.backend.repository;

import com.zzzacademy.backend.model.UsuarioBuild;
import com.zzzacademy.backend.model.UsuarioAgente;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface UsuarioBuildRepository extends JpaRepository<UsuarioBuild, Long> {
    List<UsuarioBuild> findByUsuarioAgente(UsuarioAgente usuarioAgente);
    Optional<UsuarioBuild> findByIdAndUsuarioAgente(Long id, UsuarioAgente usuarioAgente);
}
