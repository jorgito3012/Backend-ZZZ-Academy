package com.zzzacademy.backend.controller;

import com.zzzacademy.backend.dto.JwtResponse;
import com.zzzacademy.backend.dto.LoginRequest;
import com.zzzacademy.backend.dto.MessageResponse;
import com.zzzacademy.backend.dto.RegisterRequest;
import com.zzzacademy.backend.dto.UsuarioDto;
import com.zzzacademy.backend.model.Usuario;
import com.zzzacademy.backend.repository.UsuarioRepository;
import com.zzzacademy.backend.security.JwtTokenProvider;
import com.zzzacademy.backend.security.UserDetailsImpl;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.web.bind.annotation.*;
import java.util.Optional;

@RestController
@RequestMapping("/api/auth")
public class AuthController {

    @Autowired
    AuthenticationManager authenticationManager;

    @Autowired
    UsuarioRepository usuarioRepository;

    @Autowired
    PasswordEncoder encoder;

    @Autowired
    JwtTokenProvider jwtUtils;

    // Endpoint POST a localhost:8080/api/auth/login
    @PostMapping("/login")
    public ResponseEntity<?> authenticateUser(@Valid @RequestBody LoginRequest loginRequest) {

        Authentication authentication = authenticationManager.authenticate(
                new UsernamePasswordAuthenticationToken(loginRequest.getEmail(), loginRequest.getPassword()));

        SecurityContextHolder.getContext().setAuthentication(authentication);
        String jwt = jwtUtils.generateJwtToken(authentication);

        UserDetailsImpl userDetails = (UserDetailsImpl) authentication.getPrincipal();

        String rol = userDetails.getAuthorities().stream()
                .map(GrantedAuthority::getAuthority)
                .findFirst()
                .orElse("ROLE_USER");

        return ResponseEntity.ok(new JwtResponse(jwt,
                userDetails.getId(),
                userDetails.getEmail(),
                rol));
    }

    // Endpoint POST a localhost:8080/api/auth/register
    @PostMapping("/register")
    public ResponseEntity<?> registerUser(@Valid @RequestBody RegisterRequest signUpRequest) {
        if (usuarioRepository.existsByEmail(signUpRequest.getEmail())) {
            return ResponseEntity
                    .badRequest()
                    .body(new MessageResponse("Error: ¡El email ya está en uso!"));
        }

        Usuario user = new Usuario();
        user.setEmail(signUpRequest.getEmail());
        user.setPassword(encoder.encode(signUpRequest.getPassword())); 

        usuarioRepository.save(user);

        return ResponseEntity.ok(new MessageResponse("¡Usuario registrado con éxito en ZZZ Academy!"));
    }

    @GetMapping("/me")
    public ResponseEntity<?> getMe() {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        
        if (auth == null || !auth.isAuthenticated() || auth.getPrincipal().equals("anonymousUser")) {
            return ResponseEntity.status(401).body(new MessageResponse("No autorizado"));
        }

        UserDetailsImpl userDetails = (UserDetailsImpl) auth.getPrincipal();
        Optional<Usuario> usuarioOpt = usuarioRepository.findById(userDetails.getId());
        
        if (usuarioOpt.isEmpty()) {
            return ResponseEntity.badRequest().body(new MessageResponse("Error: Usuario no encontrado"));
        }
        
        Usuario usuario = usuarioOpt.get();
        return ResponseEntity.ok(new UsuarioDto(usuario.getId(), usuario.getEmail(), usuario.getRol(), usuario.getFechaCreacion()));
    }
}
