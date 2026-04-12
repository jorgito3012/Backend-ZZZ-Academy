package com.zzzacademy.backend.controller;

import com.zzzacademy.backend.dto.MessageResponse;
import com.zzzacademy.backend.dto.RosterAddRequest;
import com.zzzacademy.backend.model.Agente;
import com.zzzacademy.backend.model.Usuario;
import com.zzzacademy.backend.model.UsuarioAgente;
import com.zzzacademy.backend.repository.AgenteRepository;
import com.zzzacademy.backend.repository.UsuarioAgenteRepository;
import com.zzzacademy.backend.repository.UsuarioRepository;
import com.zzzacademy.backend.security.UserDetailsImpl;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/users/me/roster")
public class RosterController {

    @Autowired
    private UsuarioAgenteRepository usuarioAgenteRepository;

    @Autowired
    private UsuarioRepository usuarioRepository;

    @Autowired
    private AgenteRepository agenteRepository;

    // Método de utilidad para extraer ciegamente el Usuario a partir del Token
    private Usuario getAuthenticatedUser() {
        UserDetailsImpl userDetails = (UserDetailsImpl) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        return usuarioRepository.findById(userDetails.getId())
                .orElseThrow(() -> new RuntimeException("Error: Usuario no encontrado en BBDD."));
    }

    // Ruta GET para obtener el progreso de TODOS los personajes que he guardado
    @GetMapping
    public ResponseEntity<List<UsuarioAgente>> getMyRoster() {
        Usuario usuario = getAuthenticatedUser();
        List<UsuarioAgente> roster = usuarioAgenteRepository.findByUsuario(usuario);
        return ResponseEntity.ok(roster);
    }

    // Ruta POST para añadir a un héroe a mi cuenta
    @PostMapping
    public ResponseEntity<?> addAgentToRoster(@Valid @RequestBody RosterAddRequest request) {
        Usuario usuario = getAuthenticatedUser();
        
        Optional<Agente> agenteOpt = agenteRepository.findById(request.getAgenteId());
        if (!agenteOpt.isPresent()) {
            return ResponseEntity.badRequest().body(new MessageResponse("Error: El personaje con ID " + request.getAgenteId() + " no existe."));
        }
        
        Agente agente = agenteOpt.get();

        if (usuarioAgenteRepository.existsByUsuarioAndAgente(usuario, agente)) {
            return ResponseEntity.badRequest().body(new MessageResponse("Error: Este personaje ya está en tu Roster."));
        }

        UsuarioAgente nuevoPersonaje = new UsuarioAgente();
        nuevoPersonaje.setUsuario(usuario);
        nuevoPersonaje.setAgente(agente);
        nuevoPersonaje.setNivel(1);
        nuevoPersonaje.setNivelHabilidadCore("A");
        nuevoPersonaje.setMindscapesDesbloqueados(0);

        usuarioAgenteRepository.save(nuevoPersonaje);

        return ResponseEntity.ok(new MessageResponse("¡Personaje añadido al Roster de ZZZ Academy con éxito!"));
    }
    
    // Ruta DELETE para eliminar a un héroe de mi cuenta
    @DeleteMapping("/{rosterId}")
    public ResponseEntity<?> removeAgentFromRoster(@PathVariable Long rosterId) {
        Usuario usuario = getAuthenticatedUser();
        
        Optional<UsuarioAgente> usuarioAgenteOpt = usuarioAgenteRepository.findByIdAndUsuario(rosterId, usuario);
        if (!usuarioAgenteOpt.isPresent()) {
            return ResponseEntity.badRequest().body(new MessageResponse("Error: Personaje no encontrado en tu Roster personal."));
        }
        
        usuarioAgenteRepository.delete(usuarioAgenteOpt.get());
        
        return ResponseEntity.ok(new MessageResponse("Personaje eliminado del Roster."));
    }
}
