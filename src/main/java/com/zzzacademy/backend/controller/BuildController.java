package com.zzzacademy.backend.controller;

import com.zzzacademy.backend.dto.BuildAddRequest;
import com.zzzacademy.backend.dto.MessageResponse;
import com.zzzacademy.backend.model.Usuario;
import com.zzzacademy.backend.model.UsuarioAgente;
import com.zzzacademy.backend.model.UsuarioBuild;
import com.zzzacademy.backend.model.WEngine;
import com.zzzacademy.backend.repository.UsuarioAgenteRepository;
import com.zzzacademy.backend.repository.UsuarioBuildRepository;
import com.zzzacademy.backend.repository.UsuarioRepository;
import com.zzzacademy.backend.repository.WEngineRepository;
import com.zzzacademy.backend.security.UserDetailsImpl;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/users/me/roster/{rosterId}/builds")
public class BuildController {

    @Autowired
    private UsuarioAgenteRepository usuarioAgenteRepository;

    @Autowired
    private UsuarioBuildRepository usuarioBuildRepository;

    @Autowired
    private UsuarioRepository usuarioRepository;

    @Autowired
    private WEngineRepository wEngineRepository;

    // Validación de seguridad para asegurarnos que la ID de la URL me pertenece a mi
    private Optional<UsuarioAgente> checkRosterOwnership(Long rosterId) {
        UserDetailsImpl userDetails = (UserDetailsImpl) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        Usuario usuario = usuarioRepository.findById(userDetails.getId())
                .orElseThrow(() -> new RuntimeException("Error: Usuario no encontrado en BBDD."));
                
        return usuarioAgenteRepository.findByIdAndUsuario(rosterId, usuario);
    }

    @GetMapping
    public ResponseEntity<?> getBuilds(@PathVariable Long rosterId) {
        Optional<UsuarioAgente> rosterOpt = checkRosterOwnership(rosterId);
        if (!rosterOpt.isPresent()) {
            return ResponseEntity.badRequest().body(new MessageResponse("Error: El personaje indicado no pertenece a tu Roster."));
        }
        
        List<UsuarioBuild> builds = usuarioBuildRepository.findByUsuarioAgente(rosterOpt.get());
        return ResponseEntity.ok(builds);
    }

    @PostMapping
    public ResponseEntity<?> addBuildToRoster(@PathVariable Long rosterId, @Valid @RequestBody BuildAddRequest request) {
        Optional<UsuarioAgente> rosterOpt = checkRosterOwnership(rosterId);
        if (!rosterOpt.isPresent()) {
            return ResponseEntity.badRequest().body(new MessageResponse("Error: Tratas de añadir una build a un personaje ajeno."));
        }

        UsuarioBuild nuevaBuild = new UsuarioBuild();
        nuevaBuild.setNombreBuild(request.getNombreBuild());
        nuevaBuild.setUsuarioAgente(rosterOpt.get());
        nuevaBuild.setWEngineNivel(request.getWEngineNivel());
        
        // Magia JSONB: En una sola línea, la base de datos se traga todos los discos
        nuevaBuild.setDiscosEquipados(request.getDiscosEquipados());

        if (request.getWEngineId() != null) {
            Optional<WEngine> wEngineOpt = wEngineRepository.findById(request.getWEngineId());
            if (wEngineOpt.isPresent()) {
                nuevaBuild.setWEngine(wEngineOpt.get());
            } else {
                return ResponseEntity.badRequest().body(new MessageResponse("Error: El WEngine indicado no existe globalmente."));
            }
        }

        usuarioBuildRepository.save(nuevaBuild);

        return ResponseEntity.ok(new MessageResponse("¡Build de ZZZ Academy lista y guardada!"));
    }

    @DeleteMapping("/{buildId}")
    public ResponseEntity<?> deleteBuild(@PathVariable Long rosterId, @PathVariable Long buildId) {
        Optional<UsuarioAgente> rosterOpt = checkRosterOwnership(rosterId);
        if (rosterOpt.isEmpty()) {
            return ResponseEntity.badRequest().body(new MessageResponse("Error: El personaje indicado no pertenece a tu Roster."));
        }
        
        Optional<UsuarioBuild> buildOpt = usuarioBuildRepository.findById(buildId);
        if (buildOpt.isEmpty() || !buildOpt.get().getUsuarioAgente().getId().equals(rosterId)) {
            return ResponseEntity.badRequest().body(new MessageResponse("Error: Build no encontrada en este personaje."));
        }
        
        usuarioBuildRepository.delete(buildOpt.get());
        return ResponseEntity.ok(new MessageResponse("Build eliminada correctamente de tu cuenta."));
    }
}
