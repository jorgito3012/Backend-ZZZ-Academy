package com.zzzacademy.backend.repository;

import com.zzzacademy.backend.model.UsuarioAgente;
import com.zzzacademy.backend.model.Usuario;
import com.zzzacademy.backend.model.Agente;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface UsuarioAgenteRepository extends JpaRepository<UsuarioAgente, Long> {
    List<UsuarioAgente> findByUsuario(Usuario usuario);
    Optional<UsuarioAgente> findByUsuarioAndAgente(Usuario usuario, Agente agente);
    Optional<UsuarioAgente> findByIdAndUsuario(Long id, Usuario usuario);
    boolean existsByUsuarioAndAgente(Usuario usuario, Agente agente);
}
